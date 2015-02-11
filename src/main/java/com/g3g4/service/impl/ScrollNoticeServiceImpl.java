package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IScrollNoticeDAO;
import com.g3g4.model.ScrollNotice;
import com.g3g4.service.IScrollNoticeService;

/**
 * 滚动公告 业务接口 IScrollNoticeService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
public class ScrollNoticeServiceImpl implements IScrollNoticeService {

	@Resource
	private IScrollNoticeDAO scrollNoticeDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#addSave(com.g3g4.model.ScrollNotice)
	 */
	public int addSave(ScrollNotice scrollNotice) {
		return scrollNoticeDAO.addSaveScrollNotice(scrollNotice);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return scrollNoticeDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#editSave(com.g3g4.model.ScrollNotice)
	 */
	public int editSave(ScrollNotice scrollNotice) {
		return scrollNoticeDAO.editSaveScrollNotice(scrollNotice);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IScrollNoticeService#selectAll()
	 */
	public List<ScrollNotice> selectAll() {
		return scrollNoticeDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#selectScrollNotice(com.g3g4.model.ScrollNotice, int)
	 */
	public Page selectScrollNotice(ScrollNotice scrollNotice, int pageSize) {
		return new Page(scrollNoticeDAO.getScrollNoticeCount(scrollNotice), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#selectScrollNotice(com.g3g4.model.ScrollNotice, com.g3g4.controller.helper.Page)
	 */
	public List<ScrollNotice> selectScrollNotice(ScrollNotice scrollNotice, Page page) {
		scrollNotice.setStart(page.getFirstItemPos());
		scrollNotice.setPageSize(page.getPageSize());
		return scrollNoticeDAO.selectScrollNoticeLike(scrollNotice);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IScrollNoticeService#selectScrollNoticeById(com.g3g4.model.ScrollNotice)
	 */
	public ScrollNotice selectScrollNoticeById(ScrollNotice scrollNotice) {
		return scrollNoticeDAO.selectScrollNoticeById(scrollNotice);
	}
}
