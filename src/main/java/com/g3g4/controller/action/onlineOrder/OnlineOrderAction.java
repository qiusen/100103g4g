package com.g3g4.controller.action.onlineOrder;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Combo;
import com.g3g4.model.Member;
import com.g3g4.model.OnlineOrder;
import com.g3g4.model.Product;
import com.g3g4.service.IComboService;
import com.g3g4.service.IOnlineOrderService;
import com.g3g4.service.IProductService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;
import com.g3g4.util.json.JSONUtil;

/**
 * 在线订单Action
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
 @SuppressWarnings("serial")
public class OnlineOrderAction extends BaseAction {
	private OnlineOrder onlineOrder = new OnlineOrder();
	private IOnlineOrderService onlineOrderService;
	
	private IProductService productService;
	
	private IComboService comboService;
	
	private int add = 0;
	
	public OnlineOrder getOnlineOrder() {
		return onlineOrder;
	}

	public void setOnlineOrder(OnlineOrder onlineOrder) {
		this.onlineOrder = onlineOrder;
	}
	public IOnlineOrderService getOnlineOrderService() {
		return onlineOrderService;
	}

	public void setOnlineOrderService(IOnlineOrderService onlineOrderService) {
		this.onlineOrderService = onlineOrderService;
	}
	
	public IProductService getProductService() {
		return productService;
	}

	public void setProductService(IProductService productService) {
		this.productService = productService;
	}

	public IComboService getComboService() {
		return comboService;
	}

	public void setComboService(IComboService comboService) {
		this.comboService = comboService;
	}

	public int getAdd() {
		return add;
	}

	public void setAdd(int add) {
		this.add = add;
	}

	/* 
	 * 在线订单查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute2(){
		try {
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = onlineOrderService.selectOnlineOrder(onlineOrder,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<OnlineOrder> resultList = this.onlineOrderService.selectOnlineOrder(onlineOrder,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","onlineOrderAction");

			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
			System.out.println("OnlineOrder json:::::::::::::::::::" + json);
			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 在线订单
	 * @return
	 */
	public String execute(){
		int add = TypeUtil.stringToInt(this.getRequest().getParameter("add"));
		this.getRequest().setAttribute("add", add);
		
		List<Product> productList = productService.selectAll();
		this.getRequest().setAttribute("productList", productList);
		
		List<Combo> comboList = comboService.selectAll();
		this.getRequest().setAttribute("comboList", comboList);
		
		return SUCCESS;
	}
	
	/**
	 * 保存添加 在线订单
	 * @return
	 */
	public String addSave(){
		Member member = (Member)this.getSession().getAttribute("member");
		onlineOrder.setCode(member.getCode());
		onlineOrder.setCreatetime(new Date());
		onlineOrder.setStatus(0);
		onlineOrderService.addSave(onlineOrder);
		this.add = 1;
		return "addSave";
	}
	
	/**
	 * 修改 在线订单
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			onlineOrder.setId(id);
		}else{
			return null;
		}
		
		OnlineOrder onlineOrderVO = onlineOrderService.selectOnlineOrderById(onlineOrder);
		this.getRequest().setAttribute("onlineOrder", onlineOrderVO);
		return "edit";
	}
	
	/**
	 * 保存修改 在线订单
	 * @return
	 */
	public String editSave(){
		onlineOrderService.editSave(onlineOrder);
		return "editSave";
	}
	
	/**
	 * 删除 在线订单
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		onlineOrderService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 在线订单
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
			onlineOrderService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}