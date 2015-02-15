package com.g3g4.controller.action.bonus;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Bonus;
import com.g3g4.model.Member;
import com.g3g4.service.IBonusService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;
import com.g3g4.util.json.JSONUtil;

/**
 * 奖金Action
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
 @SuppressWarnings("serial")
public class BonusAction extends BaseAction {
	private Bonus bonus = new Bonus();
	private IBonusService bonusService;
	
	public Bonus getBonus() {
		return bonus;
	}

	public void setBonus(Bonus bonus) {
		this.bonus = bonus;
	}
	public IBonusService getBonusService() {
		return bonusService;
	}

	public void setBonusService(IBonusService bonusService) {
		this.bonusService = bonusService;
	}
	/* 
	 * 奖金查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			Member member = (Member)this.getSession().getAttribute("member");
			bonus.setCode(member.getCode());
			
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);

			Page pageInfo = bonusService.selectBonus(bonus,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Bonus> resultList = this.bonusService.selectBonus(bonus,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","bonusAction");

			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
			System.out.println("Bonus json:::::::::::::::::::" + json);
			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 奖金
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 奖金
	 * @return
	 */
	public String addSave(){
		bonusService.addSave(bonus);
		return "addSave";
	}
	
	/**
	 * 修改 奖金
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			bonus.setId(id);
		}else{
			return null;
		}
		
		Bonus bonusVO = bonusService.selectBonusById(bonus);
		this.getRequest().setAttribute("bonus", bonusVO);
		return "edit";
	}
	
	/**
	 * 保存修改 奖金
	 * @return
	 */
	public String editSave(){
		bonusService.editSave(bonus);
		return "editSave";
	}
	
	/**
	 * 删除 奖金
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		bonusService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 奖金
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
			bonusService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}