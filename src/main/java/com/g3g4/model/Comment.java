package com.g3g4.model;

import java.util.Date;

/**
 * 留言
 * 
 * @author cg
 *
 * @date 2015-02-05
 */
@SuppressWarnings("serial")
public class Comment extends BaseModel{
	
	/**
	 * 类型：1、财务咨询；2、产品咨询；3、公司建议；4、其他咨询
	 */
	private Integer type;
	
	/**
	 * 内容
	 */
	private String content;
	
	/**
	 * 回复
	 */
	private String revet;
	
	/**
	 * 创建人
	 */
	private String creator;
	
	/**
	 * 创建时间
	 */
	private Date createtime;
	
	/**
	 * 回复人
	 */
	private String revetor;
	
	/**
	 * 回复时间
	 */
	private Date revettime;
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRevet() {
		return revet;
	}
	public void setRevet(String revet) {
		this.revet = revet;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getRevetor() {
		return revetor;
	}
	public void setRevetor(String revetor) {
		this.revetor = revetor;
	}
	public Date getRevettime() {
		return revettime;
	}
	public void setRevettime(Date revettime) {
		this.revettime = revettime;
	}
}
