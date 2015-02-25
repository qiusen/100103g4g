package com.g3g4.controller.action.shopCoin;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Member;
import com.g3g4.model.ShopCoin;
import com.g3g4.service.IShopCoinService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 电商币结算Action
 * 
 * @author cg
 *
 * @date 2015-02-25
 */
 @SuppressWarnings("serial")
public class ShopCoinAction extends BaseAction {
	private ShopCoin shopCoin = new ShopCoin();
	private IShopCoinService shopCoinService;
	
	public ShopCoin getShopCoin() {
		return shopCoin;
	}

	public void setShopCoin(ShopCoin shopCoin) {
		this.shopCoin = shopCoin;
	}
	public IShopCoinService getShopCoinService() {
		return shopCoinService;
	}

	public void setShopCoinService(IShopCoinService shopCoinService) {
		this.shopCoinService = shopCoinService;
	}
	/* 
	 * 电商币结算查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			Member member = (Member)this.getSession().getAttribute("member");
			shopCoin.setCode(member.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = shopCoinService.selectShopCoin(shopCoin,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<ShopCoin> resultList = this.shopCoinService.selectShopCoin(shopCoin,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","shopCoinAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("ShopCoin json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 电商币结算
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 电商币结算
	 * @return
	 */
	public String addSave(){
		shopCoinService.addSave(shopCoin);
		return "addSave";
	}
	
	/**
	 * 修改 电商币结算
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			shopCoin.setId(id);
		}else{
			return null;
		}
		
		ShopCoin shopCoinVO = shopCoinService.selectShopCoinById(shopCoin);
		this.getRequest().setAttribute("shopCoin", shopCoinVO);
		return "edit";
	}
	
	/**
	 * 保存修改 电商币结算
	 * @return
	 */
	public String editSave(){
		shopCoinService.editSave(shopCoin);
		return "editSave";
	}
	
	/**
	 * 删除 电商币结算
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		shopCoinService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 电商币结算
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
			shopCoinService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}