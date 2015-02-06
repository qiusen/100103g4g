package com.g3g4.controller.action.common;

import java.util.List;

import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Notice;
import com.g3g4.service.INoticeService;

/**
 * 登录Action
 * 
 * @author qiusen
 *
 * 2012-2-8 下午04:26:17
 */
public class IndexAction extends BaseAction {
	
//	private static final Log logger = LogFactory.getLog(IndexAction.class);

	private static final long serialVersionUID = 3243281533706763908L;
	
	private INoticeService noticeService;

	public INoticeService getNoticeService() {
		return noticeService;
	}

	public void setNoticeService(INoticeService noticeService) {
		this.noticeService = noticeService;
	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		Notice notice = new Notice();
		notice.setCount(5);
		
		List<Notice> noticeList = noticeService.selectNoticeByLimit(notice);
		this.getRequest().setAttribute("noticeList", noticeList);
		return SUCCESS;
	}
	
}
