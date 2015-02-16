package com.g3g4.model;

import java.util.Date;

/**
 * 提现
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
@SuppressWarnings("serial")
public class Withdraw extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 金额
	 */
	private Double haveCoin;
	
	/**
	 * 转出金额
	 */
	private Double coin;
	
	/**
	 * 剩余金额
	 */
	private Double leftCoin;
	
	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 状态：0、未处理；1、已处理
	 */
	private Integer status;
	
	/**
	 * 申请时间
	 */
	private Date createtime;
	
	/**
	 * 结算人
	 */
	private String dealor;
	
	/**
	 * 结算时间
	 */
	private Date dealtime;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Double getHaveCoin() {
		return haveCoin;
	}
	public void setHaveCoin(Double haveCoin) {
		this.haveCoin = haveCoin;
	}
	public Double getCoin() {
		return coin;
	}
	public void setCoin(Double coin) {
		this.coin = coin;
	}
	public Double getLeftCoin() {
		return leftCoin;
	}
	public void setLeftCoin(Double leftCoin) {
		this.leftCoin = leftCoin;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getDealor() {
		return dealor;
	}
	public void setDealor(String dealor) {
		this.dealor = dealor;
	}
	public Date getDealtime() {
		return dealtime;
	}
	public void setDealtime(Date dealtime) {
		this.dealtime = dealtime;
	}
}
