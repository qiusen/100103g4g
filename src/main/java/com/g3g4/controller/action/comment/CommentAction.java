package com.g3g4.controller.action.comment;

import java.util.Date;
import java.util.List;

import com.g3g4.common.Property;
import com.g3g4.controller.action.BaseAction;
import com.g3g4.model.Comment;
import com.g3g4.service.ICommentService;
import com.g3g4.util.Page;
import com.g3g4.util.TypeUtil;

/**
 * 留言Action
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
 @SuppressWarnings("serial")
public class CommentAction extends BaseAction {
	private Comment comment = new Comment();
	private ICommentService commentService;
	
	public Comment getComment() {
		return comment;
	}

	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public ICommentService getCommentService() {
		return commentService;
	}

	public void setCommentService(ICommentService commentService) {
		this.commentService = commentService;
	}
	/* 
	 * 留言查询
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute(){
		try {
			String pageSizeStr = this.getRequest().getParameter("pageSize");
			String pageNoStr = this.getRequest().getParameter("pageNo");
			int pageSize = 0;
			int pageNo = 0;
			
			pageSize = TypeUtil.stringToInt(pageSizeStr);
			if (pageSize <= 0) {
				pageSize = Property.PAGESIZE;
			}

			pageNo = TypeUtil.stringToInt(pageNoStr);
			
			Page pageInfo = commentService.selectComment(comment,Property.PAGESIZE);
			
			if (pageNo > 0) {
				pageInfo.setPage(pageNo);
			} else {
				pageInfo.setPage(0);
			}
			
			List<Comment> resultList = this.commentService.selectComment(comment,pageInfo);
			
			this.getRequest().setAttribute("pageInfo", pageInfo);
			this.getRequest().setAttribute("resultList", resultList);
			this.getRequest().setAttribute("actionName","commentAction");

//			String json = "\"Rows\":" + JSONUtil.objectArrayToJson(resultList)+", \"Total\":" + pageInfo.getResultCount();
//			System.out.println("Comment json:::::::::::::::::::" + json);
//			this.getRequest().setAttribute("json", json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	/**
	 * 添加 留言
	 * @return
	 */
	public String add(){
		return "add";
	}
	
	/**
	 * 保存添加 留言
	 * @return
	 */
	public String addSave(){
		comment.setCreatetime(new Date());
		System.out.println("dddddddddddddddd");
		commentService.addSave(comment);
		return "addSave";
	}
	
}