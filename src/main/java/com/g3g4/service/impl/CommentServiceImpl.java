package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.ICommentDAO;
import com.g3g4.model.Comment;
import com.g3g4.service.ICommentService;

/**
 * 留言 业务接口 ICommentService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
public class CommentServiceImpl implements ICommentService {

	@Resource
	private ICommentDAO commentDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#addSave(com.g3g4.model.Comment)
	 */
	public int addSave(Comment comment) {
		return commentDAO.addSaveComment(comment);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return commentDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#editSave(com.g3g4.model.Comment)
	 */
	public int editSave(Comment comment) {
		return commentDAO.editSaveComment(comment);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.ICommentService#selectAll()
	 */
	public List<Comment> selectAll() {
		return commentDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#selectComment(com.g3g4.model.Comment, int)
	 */
	public Page selectComment(Comment comment, int pageSize) {
		return new Page(commentDAO.getCommentCount(comment), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#selectComment(com.g3g4.model.Comment, com.g3g4.controller.helper.Page)
	 */
	public List<Comment> selectComment(Comment comment, Page page) {
		comment.setStart(page.getFirstItemPos());
		comment.setPageSize(page.getPageSize());
		return commentDAO.selectCommentLike(comment);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.ICommentService#selectCommentById(com.g3g4.model.Comment)
	 */
	public Comment selectCommentById(Comment comment) {
		return commentDAO.selectCommentById(comment);
	}
}
