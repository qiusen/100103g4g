package com.g3g4.controller.action.member;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;
import com.g3g4.util.json.JSONUtil;
import com.g3g4.model.Member;
import com.g3g4.service.IMemberService;

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
	/* 
	 * 会员查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
//		try {
//			String pageSizeStr = this.getRequest().getParameter("pageSize");
//			String pageNoStr = this.getRequest().getParameter("pageNo");
//			int pageSize = 0;
//			int pageNo = 0;
//			
//			pageSize = TypeUtil.stringToInt(pageSizeStr);
//			if (pageSize <= 0) {
//				pageSize = Property.PAGESIZE;
//			}
//
//			pageNo = TypeUtil.stringToInt(pageNoStr);
//			if (pageSize > 0) {
//				this.setManagerPageSize(pageSize);
//			}else{
//				this.setManagerPageSize(Property.PAGESIZE);
//			}
//
//			Page pageInfo = memberService.selectMember(member,this.getManagerPageSize());
//			
//			if (pageNo > 0) {
//				pageInfo.setPage(pageNo);
//			} else {
//				pageInfo.setPage(0);
//			}
//			
//			List<Member> resultList = this.memberService.selectMember(member,pageInfo);
//			
//			this.getRequest().setAttribute("pageInfo", pageInfo);
//			this.getRequest().setAttribute("resultList", resultList);
//			this.getRequest().setAttribute("actionName","memberAction");
//
//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Member json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
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
		memberService.addSave(member);
		return "addSave";
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