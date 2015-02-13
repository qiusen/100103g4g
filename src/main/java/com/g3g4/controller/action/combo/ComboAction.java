package com.g3g4.controller.action.combo;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;
import com.g3g4.util.json.JSONUtil;
import com.g3g4.model.Combo;
import com.g3g4.service.IComboService;

/**
 * 套餐Action
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
 @SuppressWarnings("serial")
public class ComboAction extends BaseAction {
	private Combo combo = new Combo();
	private IComboService comboService;
	
	public Combo getCombo() {
		return combo;
	}

	public void setCombo(Combo combo) {
		this.combo = combo;
	}
	public IComboService getComboService() {
		return comboService;
	}

	public void setComboService(IComboService comboService) {
		this.comboService = comboService;
	}
	/* 
	 * 套餐查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
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

			Page pageInfo = comboService.selectCombo(combo,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Combo> resultList = this.comboService.selectCombo(combo,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","comboAction");

			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
			System.out.println("Combo json:::::::::::::::::::" + json);
			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 套餐
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 套餐
	 * @return
	 */
	public String addSave(){
		comboService.addSave(combo);
		return "addSave";
	}
	
	/**
	 * 修改 套餐
	 * @return
	 */
	public String view(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			combo.setId(id);
		}else{
			return null;
		}
		
		Combo comboVO = comboService.selectComboById(combo);
		this.getRequest().setAttribute("combo", comboVO);
		return "view";
	}
	
	/**
	 * 保存修改 套餐
	 * @return
	 */
	public String editSave(){
		comboService.editSave(combo);
		return "editSave";
	}
	
	/**
	 * 删除 套餐
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		comboService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 套餐
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
			comboService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}