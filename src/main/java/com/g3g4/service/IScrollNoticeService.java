package com.g3g4.service;

import java.util.List;


import com.g3g4.model.ScrollNotice;
import com.g3g4.util.Page;

/**
 * 滚动公告 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
public interface IScrollNoticeService {
	/**
	 * 查询 ScrollNotice Page 对象
	 * @param scrollNotice
	 * @param pageSize
	 * @return
	 */
	public Page selectScrollNotice(ScrollNotice scrollNotice, int pageSize);

	/**
	 * 分页查找 滚动公告
	 * @param scrollNotice
	 * @param page
	 * @return
	 */
	public List<ScrollNotice> selectScrollNotice(ScrollNotice scrollNotice, Page page);
	
	/**
	 * 查询所有 滚动公告
	 * @return
	 */
	public List<ScrollNotice> selectAll();
	
	/**
	 * 根据 ID 查找 滚动公告 
	 * @param scrollNotice
	 * @return
	 */
	public ScrollNotice selectScrollNoticeById(ScrollNotice scrollNotice);
	
	/**
	 * 添加 滚动公告 
	 * @param scrollNotice
	 * @return
	 */
	public int addSave(ScrollNotice scrollNotice);
	
	/**
	 * 修改 滚动公告 
	 * @param scrollNotice
	 * @return
	 */
	public int editSave(ScrollNotice scrollNotice);
	
	/**
	 * 根据 ID 删除 滚动公告 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
