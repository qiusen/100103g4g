package com.g3g4.controller.action.scrollNotice;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;
import com.g3g4.util.json.JSONUtil;
import com.g3g4.model.ScrollNotice;
import com.g3g4.service.IScrollNoticeService;

/**
 * 滚动公告Action
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
 @SuppressWarnings("serial")
public class ScrollNoticeAction extends BaseAction {
	private ScrollNotice scrollNotice = new ScrollNotice();
	private IScrollNoticeService scrollNoticeService;
	
	public ScrollNotice getScrollNotice() {
		return scrollNotice;
	}

	public void setScrollNotice(ScrollNotice scrollNotice) {
		this.scrollNotice = scrollNotice;
	}
	public IScrollNoticeService getScrollNoticeService() {
		return scrollNoticeService;
	}

	public void setScrollNoticeService(IScrollNoticeService scrollNoticeService) {
		this.scrollNoticeService = scrollNoticeService;
	}
	/* 
	 * 滚动公告查询
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

			Page pageInfo = scrollNoticeService.selectScrollNotice(scrollNotice,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<ScrollNotice> resultList = this.scrollNoticeService.selectScrollNotice(scrollNotice,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","scrollNoticeAction");

			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
			System.out.println("ScrollNotice json:::::::::::::::::::" + json);
			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 滚动公告
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 滚动公告
	 * @return
	 */
	public String addSave(){
		scrollNoticeService.addSave(scrollNotice);
		return "addSave";
	}
	
	/**
	 * 修改 滚动公告
	 * @return
	 */
	public String edit(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			scrollNotice.setId(id);
		}else{
			return null;
		}
		
		ScrollNotice scrollNoticeVO = scrollNoticeService.selectScrollNoticeById(scrollNotice);
		this.getRequest().setAttribute("scrollNotice", scrollNoticeVO);
		return "edit";
	}
	
	/**
	 * 保存修改 滚动公告
	 * @return
	 */
	public String editSave(){
		scrollNoticeService.editSave(scrollNotice);
		return "editSave";
	}
	
	/**
	 * 删除 滚动公告
	 * @return
	 */
	public String delete(){
		String id = this.getRequest().getParameter("id");
		StringBuffer strbuf = new StringBuffer(" where id =");
		strbuf.append(id);
		scrollNoticeService.deleteByIds(strbuf.toString());
		return "deleteSuccess";
	}

	/**
	 * 删除 滚动公告
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
			scrollNoticeService.deleteByIds(strbuf.toString());
			return "deleteSuccess";
		}
		return "deleteFailure";
	}
}