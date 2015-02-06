package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Comment;

/**
 * 留言 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-05
 */
public interface ICommentDAO {

	/**
	 * 根据条件查询留言 条数
	 * 
	 * @param comment
	 * @return
	 */
	public Long getCommentCount(Comment comment);

	/**
	 * 分页查找留言
	 * 
	 * @param comment
	 * @param page
	 * @return
	 */
	public List<Comment> selectCommentLike(Comment comment);

	/**
	 * 添加留言
	 * 
	 * @param comment
	 * @return
	 */
	public int addSaveComment(Comment comment);

	/**
	 * 根据ID获取指定的留言信息
	 * 
	 * @param comment
	 * @return
	 */
	public Comment selectCommentById(Comment comment);

	/**
	 * 修改留言
	 * 
	 * @param comment
	 * @return
	 */
	public int editSaveComment(Comment comment);

	/**
	 * 根据ID删除指定的留言
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有留言
	 * 
	 * @return
	 */
	public List<Comment> selectAll();
}
