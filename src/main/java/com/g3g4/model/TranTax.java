package com.g3g4.model;

import java.util.Date;		            

/**
 * 转报单币
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
@SuppressWarnings("serial")
public class TranTax extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 对方编号
	 */
	private String targetCode;
	
	/**
	 * 金额
	 */
	private Double haveCoin;
	
	/**
	 * 转出金额
	 */
	private Double outCoin;
	
	/**
	 * 转入金额
	 */
	private Double inCoin;
	
	/**
	 * 剩余金额
	 */
	private Double leftCoin;
	
	/**
	 * 备注
	 */
	private String remark;
	
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
	public String getTargetCode() {
		return targetCode;
	}
	public void setTargetCode(String targetCode) {
		this.targetCode = targetCode;
	}
	public Double getHaveCoin() {
		return haveCoin;
	}
	public void setHaveCoin(Double haveCoin) {
		this.haveCoin = haveCoin;
	}
	public Double getOutCoin() {
		return outCoin;
	}
	public void setOutCoin(Double outCoin) {
		this.outCoin = outCoin;
	}
	public Double getInCoin() {
		return inCoin;
	}
	public void setInCoin(Double inCoin) {
		this.inCoin = inCoin;
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
	public Date getDealtime() {
		return dealtime;
	}
	public void setDealtime(Date dealtime) {
		this.dealtime = dealtime;
	}
}
