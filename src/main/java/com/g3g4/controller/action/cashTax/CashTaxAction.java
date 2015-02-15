package com.g3g4.controller.action.cashTax;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.CashTax;
import com.g3g4.model.Member;
import com.g3g4.service.ICashTaxService;
import com.g3g4.service.IMemberService;
import com.g3g4.util.MD5Util;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 现金币转报单币Action
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
 @SuppressWarnings("serial")
public class CashTaxAction extends BaseAction {
	private CashTax cashTax = new CashTax();
	private ICashTaxService cashTaxService;
	
	private IMemberService memberService;
	
	private String errCode;
	
	public CashTax getCashTax() {
		return cashTax;
	}

	public void setCashTax(CashTax cashTax) {
		this.cashTax = cashTax;
	}
	public ICashTaxService getCashTaxService() {
		return cashTaxService;
	}

	public void setCashTaxService(ICashTaxService cashTaxService) {
		this.cashTaxService = cashTaxService;
	}
	
	public String getErrCode() {
		return errCode;
	}

	public void setErrCode(String errCode) {
		this.errCode = errCode;
	}

	public IMemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(IMemberService memberService) {
		this.memberService = memberService;
	}

	/* 
	 * 现金币转报单币查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			Member member = (Member)this.getSession().getAttribute("member");
			cashTax.setCode(member.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = cashTaxService.selectCashTax(cashTax,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<CashTax> resultList = this.cashTaxService.selectCashTax(cashTax,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","cashTaxAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("CashTax json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	/**
	 * 保存添加 现金币转报单币
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
				cashTax.setCode(member.getCode());
				cashTax.setCoin(coin);
				cashTax.setDealtime(new Date());
				cashTaxService.addSave(cashTax);
				
				Member memberVO = new Member();
				memberVO.setCode(member.getCode());
				
				//减除现金币 增加报单币
				memberVO.setIdStr(" CASH_COIN = CASH_COIN -" + coin + " , TAX_COIN = TAX_COIN +" + coin);
				memberService.editCoin(memberVO);
				
				//更新session
				member.setCashCoin(member.getCashCoin() + coin);
				member.setTaxCoin(member.getTaxCoin() + coin );
				
			}else{	//现金币超出现有值
				this.errCode = "coinerr";
			}
		}else{		//三级密码错误
			this.errCode = "passwd3err";
		}
		
		
		return "addSave";
	}
	
}