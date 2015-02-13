package com.g3g4.controller.action.deposit;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Deposit;
import com.g3g4.model.Member;
import com.g3g4.service.IDepositService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 充值Action
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
 @SuppressWarnings("serial")
public class DepositAction extends BaseAction {
	private Deposit deposit = new Deposit();
	private IDepositService depositService;
	
	public Deposit getDeposit() {
		return deposit;
	}

	public void setDeposit(Deposit deposit) {
		this.deposit = deposit;
	}
	public IDepositService getDepositService() {
		return depositService;
	}

	public void setDepositService(IDepositService depositService) {
		this.depositService = depositService;
	}
	/* 
	 * 充值查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			Member member = (Member)this.getSession().getAttribute("member");
			
			deposit.setCode(member.getCode());	//只看本人的
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = depositService.selectDeposit(deposit,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Deposit> resultList = this.depositService.selectDeposit(deposit,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","depositAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Deposit json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 充值
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 充值
	 * @return
	 */
	public String addSave(){
		depositService.addSave(deposit);
		return "addSave";
	}
	
	/**
	 * 修改 充值
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			deposit.setId(id);
		}else{
			return null;
		}
		
		Deposit depositVO = depositService.selectDepositById(deposit);
		this.getRequest().setAttribute("deposit", depositVO);
		return "edit";
	}
	
	/**
	 * 保存修改 充值
	 * @return
	 */
	public String editSave(){
		depositService.editSave(deposit);
		return "editSave";
	}
	
	/**
	 * 删除 充值
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		depositService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 充值
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
			depositService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}