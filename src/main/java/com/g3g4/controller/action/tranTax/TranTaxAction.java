package com.g3g4.controller.action.tranTax;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.model.TranTax;
import com.g3g4.service.IMemberService;
import com.g3g4.service.ITranTaxService;
import com.g3g4.util.MD5Util;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 转报单币Action
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
 @SuppressWarnings("serial")
public class TranTaxAction extends BaseAction {
	private TranTax tranTax = new TranTax();
	private ITranTaxService tranTaxService;
	
	private IMemberService memberService;
	
	private String errCode;
	
	public TranTax getTranTax() {
		return tranTax;
	}

	public void setTranTax(TranTax tranTax) {
		this.tranTax = tranTax;
	}
	public ITranTaxService getTranTaxService() {
		return tranTaxService;
	}

	public void setTranTaxService(ITranTaxService tranTaxService) {
		this.tranTaxService = tranTaxService;
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
	 * 转报单币查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			
			Member member = (Member)this.getSession().getAttribute("member");
			tranTax.setCode(member.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = tranTaxService.selectTranTax(tranTax,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<TranTax> resultList = this.tranTaxService.selectTranTax(tranTax,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","tranTaxAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("TranTax json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 保存添加 转报单币
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
			
			if(coin<0.00 || coin<=member.getTaxCoin()){
				String targetCode = this.getRequest().getParameter("targetCode");
				String remark = this.getRequest().getParameter("remark");
				
				Member memberTemp = new Member();
				memberTemp.setCode(targetCode);
				Member memberPO = memberService.selectMemberByCode(memberTemp);
				if(memberPO!=null){
					double haveCoin = member.getTaxCoin();
					double leftCoin = haveCoin - coin;
					//转出记录
					tranTax.setHaveCoin(haveCoin);
					tranTax.setOutCoin(coin);
					tranTax.setInCoin(0.00);
					tranTax.setLeftCoin(leftCoin);
					
					tranTax.setCode(member.getCode());
					tranTax.setTargetCode(targetCode);
					tranTax.setRemark(remark);
					tranTax.setDealtime(new Date());
					
					tranTaxService.addSave(tranTax);
					
					//转入记录
						//报单币
					
					
					tranTax.setHaveCoin(memberPO.getTaxCoin());
					tranTax.setOutCoin(0.00);
					tranTax.setInCoin(coin);
					tranTax.setLeftCoin(memberPO.getTaxCoin() + coin);
					
					tranTax.setCode(targetCode);	//编码调换
					tranTax.setTargetCode(member.getCode());
					
					tranTaxService.addSave(tranTax);
					
					//更新member
					Member memberVO = new Member();
					memberVO.setCode(member.getCode());
					
					//减除报单币
					memberVO.setIdStr(" TAX_COIN = TAX_COIN -" + coin );
					memberService.editCoin(memberVO);
					
					//目标会员增加报单币
					memberVO = new Member();
					memberVO.setCode(targetCode);
					memberVO.setIdStr(" TAX_COIN = TAX_COIN +" + coin );
					memberService.editCoin(memberVO);
					
					
					//更新session
					member.setTaxCoin(member.getTaxCoin()-coin);
				}else{
					this.errCode = "targeterr";
				}
				
			}else{	//现金币超出现有值
				this.errCode = "coinerr";
			}
			
			
		}else{		//三级密码错误
			this.errCode = "passwd3err";
		}
		
		return "addSave";
	}
	
}