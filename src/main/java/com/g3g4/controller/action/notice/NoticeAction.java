package com.g3g4.controller.action.notice;

import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Notice;
import com.g3g4.service.INoticeService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 新闻公告Action
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
 @SuppressWarnings("serial")
public class NoticeAction extends BaseAction {
	private Notice notice = new Notice();
	private INoticeService noticeService;
	
	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}
	public INoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(INoticeService noticeService) {
		this.noticeService = noticeService;
	}
	/* 
	 * 新闻公告查询
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
			
			Page pageInfo = noticeService.selectNotice(notice,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Notice> resultList = this.noticeService.selectNotice(notice,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","noticeAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Notice json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	
	/**
	 * 查看 新闻公告
	 * @return
	 */
	public String view(){
		String idStr = this.getRequest().getParameter("id");
		int id = 0;
		id = TypeUtil.stringToInt(idStr);
		if(id>0){
			notice.setId(id);
		}else{
			return null;
		}
		
		Notice noticeVO = noticeService.selectNoticeById(notice);
		this.getRequest().setAttribute("notice", noticeVO);
		return "view";
	}
	
}