package com.g3g4.model;

import java.util.Date;		            

/**
 * 购买说明
 * 
 * @author cg
 *
 * @date 2015-02-10
 */
@SuppressWarnings("serial")
public class BuyExplain extends BaseModel{
	
	/**
	 * 内容
	 */
	private String content;
	
	/**
	 * 修改人
	 */
	private String updator;
	
	/**
	 * 修改时间
	 */
	private Date updatetime;
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUpdator() {
		return updator;
	}
	public void setUpdator(String updator) {
		this.updator = updator;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
}
