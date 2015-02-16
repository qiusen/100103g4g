package com.g3g4.controller.action.withdraw;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.model.Withdraw;
import com.g3g4.service.IMemberService;
import com.g3g4.service.IWithdrawService;
import com.g3g4.util.MD5Util;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 提现Action
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
 @SuppressWarnings("serial")
public class WithdrawAction extends BaseAction {
	private Withdraw withdraw = new Withdraw();
	private IWithdrawService withdrawService;
	
	private IMemberService memberService;
	
	private String errCode;
	
	public Withdraw getWithdraw() {
		return withdraw;
	}

	public void setWithdraw(Withdraw withdraw) {
		this.withdraw = withdraw;
	}
	public IWithdrawService getWithdrawService() {
		return withdrawService;
	}

	public void setWithdrawService(IWithdrawService withdrawService) {
		this.withdrawService = withdrawService;
	}
	
	public IMemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}

	public String getErrCode() {
		return errCode;
	}

	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}

	/* 
	 * 提现查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			Member member = (Member)this.getSession().getAttribute("member");
			withdraw.setCode(member.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = withdrawService.selectWithdraw(withdraw,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Withdraw> resultList = this.withdrawService.selectWithdraw(withdraw,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","withdrawAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Withdraw json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	/**
	 * 保存添加 提现
	 * @return
	 */
	public String addSave(){
Member member = (Member)this.getSession().getAttribute("member");
		
		String coinStr = this.getRequest().getParameter("coin");
		double coin = 0.00;
		try{
			coin = Double.parseDouble(coinStr);
		}catch(Exception e){
			e.printStackTrace();
		}
		String passwd3 = this.getRequest().getParameter("passwd3");
		
		if(passwd3!=null && MD5Util.stringToMD5(passwd3).equals(member.getPasswd3())){
			
			if(coin<0.00 || coin<=member.getCashCoin()){
				String remark = this.getRequest().getParameter("remark");
				
				withdraw.setCode(member.getCode());
				
				withdraw.setHaveCoin(member.getCashCoin());
				withdraw.setCoin(coin);
				double leftCoin = member.getCashCoin() - coin;
				withdraw.setLeftCoin(leftCoin);
				
				withdraw.setStatus(0);
				withdraw.setRemark(remark);
				withdraw.setCreatetime(new Date());
				withdrawService.addSave(withdraw);
				
				//更新session
				member.setCashCoin(leftCoin);
				
			}else{	//现金币超出现有值
				this.errCode = "coinerr";
			}
			
		}else{		//三级密码错误
			this.errCode = "passwd3err";
		}
		
		
		
		
		return "addSave";
	}
	
}