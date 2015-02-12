package com.g3g4.controller.action.member;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.service.IMemberService;
import com.g3g4.util.MD5Util;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 会员Action
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
 @SuppressWarnings("serial")
public class MemberAction extends BaseAction {
	private Member member = new Member();
	private IMemberService memberService;
	
	private int status = 0;
	
	
	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	public IMemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}


	/* 
	 * 会员查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			this.status = TypeUtil.stringToInt(this.getRequest().getParameter("status"));
			member.setStatus(status);
			this.getRequest().setAttribute("status", status);
			
			//当前用户注册的人
			Member memberVO = (Member)this.getSession().getAttribute("member");
			member.setCreator(memberVO.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = memberService.selectMember(member,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Member> resultList = this.memberService.selectMember(member,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","memberAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Member json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 会员
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 会员
	 * @return
	 */
	public String addSave(){
		member.setStatus(0);	//未审
		member.setTaxCoin(0.00);
		member.setCashCoin(0.00);
		member.setShopCoin(0.00);
		member.setLevel(0);
		
		Member memberVO = (Member)this.getSession().getAttribute("member");
		member.setCreator(memberVO.getCode());
		member.setCreatetime(new Date());
		
		member.setPasswd1(MD5Util.stringToMD5(member.getPasswd1()));
		member.setPasswd2(MD5Util.stringToMD5(member.getPasswd2()));
		member.setPasswd3(MD5Util.stringToMD5(member.getPasswd3()));
		
		member.setAc(0);
		member.setBc(0);
		
		memberService.addSave(member);
		
		this.status = 0;
		
		return "addSave";
	}
	
	/**
	 * 展示
	 * @return
	 */
	public String show(){
		return "show";
	}
	
	/**
	 * 修改密码
	 * @return
	 */
	public String changePasswd(){
		return "changePasswd";
	}
	
	/**
	 * 保存修改密码
	 * @return
	 */
	public String savePasswd(){
		Member memberVO = (Member)this.getSession().getAttribute("member");
		
		int changeType = TypeUtil.stringToInt(this.getRequest().getParameter("changeType"));
		if(changeType==12){
			String oldpasswd1 = this.getRequest().getParameter("oldpasswd1");
			String oldpasswd3 = this.getRequest().getParameter("oldpasswd3");
			
			String newpasswd1 = this.getRequest().getParameter("newpasswd1");
			String newpasswd2 = this.getRequest().getParameter("newpasswd2");
			
			if(memberVO.getPasswd1().equals(MD5Util.stringToMD5(oldpasswd1)) 
					&& memberVO.getPasswd3().equals(MD5Util.stringToMD5(oldpasswd3))){
				
				if(newpasswd1!=null && newpasswd1.trim().length()>0){	//修改一级密码
					memberVO.setPasswd1(MD5Util.stringToMD5(newpasswd1.trim()));
					memberVO.setIdStr(" passwd1 = '"+memberVO.getPasswd1()+"' ");
					memberService.editPasswdByIdStrCode(memberVO);
				}
				if(newpasswd2!=null && newpasswd2.trim().length()>0){	//修改二级密码
					memberVO.setPasswd2(MD5Util.stringToMD5(newpasswd2.trim()));
					
					memberVO.setIdStr(" passwd2 = '"+memberVO.getPasswd2()+"' ");
					memberService.editPasswdByIdStrCode(memberVO);
				}
				this.getRequest().setAttribute("edit", 1);
			}else{
				this.getRequest().setAttribute("errStr", "原一级密码或原三级密码错误");
			}
		}
		if(changeType==3){
			String oldpwd3 = this.getRequest().getParameter("oldpwd3");
			String newpwd3 = this.getRequest().getParameter("newpwd3");
			
			if(memberVO.getPasswd3().equals(MD5Util.stringToMD5(oldpwd3)) ){
				memberVO.setPasswd3(MD5Util.stringToMD5(newpwd3.trim()));
				
				memberVO.setIdStr(" passwd3 = '"+memberVO.getPasswd3()+"' ");
				memberService.editPasswdByIdStrCode(memberVO);
				this.getRequest().setAttribute("edit", 1);
			}else{
				this.getRequest().setAttribute("errStr", "原三级密码错误");
			}
			
		}
		return "changePasswd";
	}
	
	/**
	 * 修改 会员
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			member.setId(id);
		}else{
			return null;
		}
		
		Member memberVO = memberService.selectMemberById(member);
		this.getRequest().setAttribute("member", memberVO);
		return "edit";
	}
	
	/**
	 * 保存修改 会员
	 * @return
	 */
	public String editSave(){
		memberService.editSave(member);
		return "editSave";
	}
	
	/**
	 * 删除 会员
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		memberService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 会员
	 * @return
	 */
	public String deleteByIds(){
		String[] ids = this.getRequest().getParameterValues("id");
		StringBuffer strbuf = new StringBuffer(" where id in(");
		if (ids != null && ids.length > 0) {
			for (int i = 0; i < ids.length; i++) {
				if (i != 0) {
					strbuf.append("," + ids[i]);
				} else {
					strbuf.append(ids[i]);
				}
			}
			strbuf.append(")");
			memberService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}