package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Notice;
import com.g3g4.util.Page;

/**
 * 新闻公告 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
public interface INoticeService {
	/**
	 * 查询 Notice Page 对象
	 * @param notice
	 * @param pageSize
	 * @return
	 */
	public Page selectNotice(Notice notice, int pageSize);

	/**
	 * 分页查找 新闻公告
	 * @param notice
	 * @param page
	 * @return
	 */
	public List<Notice> selectNotice(Notice notice, Page page);
	
	/**
	 * 查询所有 新闻公告
	 * @return
	 */
	public List<Notice> selectAll();
	
	/**
	 * 根据 ID 查找 新闻公告 
	 * @param notice
	 * @return
	 */
	public Notice selectNoticeById(Notice notice);
	
	/**
	 * 添加 新闻公告 
	 * @param notice
	 * @return
	 */
	public int addSave(Notice notice);
	
	/**
	 * 修改 新闻公告 
	 * @param notice
	 * @return
	 */
	public int editSave(Notice notice);
	
	/**
	 * 根据 ID 删除 新闻公告 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 根据指定条数查询
	 * @param notice
	 * @return
	 */
	public List<Notice> selectNoticeByLimit(Notice notice);
}
