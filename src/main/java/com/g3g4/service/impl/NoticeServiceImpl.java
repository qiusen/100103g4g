package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.INoticeDAO;
import com.g3g4.model.Notice;
import com.g3g4.service.INoticeService;

/**
 * 新闻公告 业务接口 INoticeService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
public class NoticeServiceImpl implements INoticeService {

	@Resource
	private INoticeDAO noticeDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#addSave(com.g3g4.model.Notice)
	 */
	public int addSave(Notice notice) {
		return noticeDAO.addSaveNotice(notice);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return noticeDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#editSave(com.g3g4.model.Notice)
	 */
	public int editSave(Notice notice) {
		return noticeDAO.editSaveNotice(notice);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.INoticeService#selectAll()
	 */
	public List<Notice> selectAll() {
		return noticeDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#selectNotice(com.g3g4.model.Notice, int)
	 */
	public Page selectNotice(Notice notice, int pageSize) {
		return new Page(noticeDAO.getNoticeCount(notice), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#selectNotice(com.g3g4.model.Notice, com.g3g4.controller.helper.Page)
	 */
	public List<Notice> selectNotice(Notice notice, Page page) {
		notice.setStart(page.getFirstItemPos());
		notice.setPageSize(page.getPageSize());
		return noticeDAO.selectNoticeLike(notice);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#selectNoticeById(com.g3g4.model.Notice)
	 */
	public Notice selectNoticeById(Notice notice) {
		return noticeDAO.selectNoticeById(notice);
	}


	/* (non-Javadoc)
	 * @see com.g3g4.service.INoticeService#selectNoticeByLimit(com.g3g4.model.Notice)
	 */
	@Override
	public List<Notice> selectNoticeByLimit(Notice notice) {
		// TODO Auto-generated method stub
		return noticeDAO.selectNoticeByLimit(notice);
	}
}
