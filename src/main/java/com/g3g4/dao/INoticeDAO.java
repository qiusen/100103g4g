package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Notice;

/**
 * 新闻公告 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-05
 */
public interface INoticeDAO {

	/**
	 * 根据条件查询新闻公告 条数
	 * 
	 * @param notice
	 * @return
	 */
	public Long getNoticeCount(Notice notice);

	/**
	 * 分页查找新闻公告
	 * 
	 * @param notice
	 * @param page
	 * @return
	 */
	public List<Notice> selectNoticeLike(Notice notice);

	/**
	 * 添加新闻公告
	 * 
	 * @param notice
	 * @return
	 */
	public int addSaveNotice(Notice notice);

	/**
	 * 根据ID获取指定的新闻公告信息
	 * 
	 * @param notice
	 * @return
	 */
	public Notice selectNoticeById(Notice notice);

	/**
	 * 修改新闻公告
	 * 
	 * @param notice
	 * @return
	 */
	public int editSaveNotice(Notice notice);

	/**
	 * 根据ID删除指定的新闻公告
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有新闻公告
	 * 
	 * @return
	 */
	public List<Notice> selectAll();

	/**
	 * 根据指定条数查询
	 * @param notice
	 * @return
	 */
	public List<Notice> selectNoticeByLimit(Notice notice);
}
