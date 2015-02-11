package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.ScrollNotice;

/**
 * 滚动公告 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-04
 */
public interface IScrollNoticeDAO {

	/**
	 * 根据条件查询滚动公告 条数
	 * 
	 * @param scrollNotice
	 * @return
	 */
	public Long getScrollNoticeCount(ScrollNotice scrollNotice);

	/**
	 * 分页查找滚动公告
	 * 
	 * @param scrollNotice
	 * @param page
	 * @return
	 */
	public List<ScrollNotice> selectScrollNoticeLike(ScrollNotice scrollNotice);

	/**
	 * 添加滚动公告
	 * 
	 * @param scrollNotice
	 * @return
	 */
	public int addSaveScrollNotice(ScrollNotice scrollNotice);

	/**
	 * 根据ID获取指定的滚动公告信息
	 * 
	 * @param scrollNotice
	 * @return
	 */
	public ScrollNotice selectScrollNoticeById(ScrollNotice scrollNotice);

	/**
	 * 修改滚动公告
	 * 
	 * @param scrollNotice
	 * @return
	 */
	public int editSaveScrollNotice(ScrollNotice scrollNotice);

	/**
	 * 根据ID删除指定的滚动公告
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有滚动公告
	 * 
	 * @return
	 */
	public List<ScrollNotice> selectAll();
}
