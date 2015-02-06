package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Comment;
import com.g3g4.util.Page;

/**
 * 留言 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
public interface ICommentService {
	/**
	 * 查询 Comment Page 对象
	 * @param comment
	 * @param pageSize
	 * @return
	 */
	public Page selectComment(Comment comment, int pageSize);

	/**
	 * 分页查找 留言
	 * @param comment
	 * @param page
	 * @return
	 */
	public List<Comment> selectComment(Comment comment, Page page);
	
	/**
	 * 查询所有 留言
	 * @return
	 */
	public List<Comment> selectAll();
	
	/**
	 * 根据 ID 查找 留言 
	 * @param comment
	 * @return
	 */
	public Comment selectCommentById(Comment comment);
	
	/**
	 * 添加 留言 
	 * @param comment
	 * @return
	 */
	public int addSave(Comment comment);
	
	/**
	 * 修改 留言 
	 * @param comment
	 * @return
	 */
	public int editSave(Comment comment);
	
	/**
	 * 根据 ID 删除 留言 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
