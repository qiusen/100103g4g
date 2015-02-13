package com.g3g4.model;

import java.util.Date;		            

/**
 * 充值
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
@SuppressWarnings("serial")
public class Deposit extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 报单币
	 */
	private String taxCoin;
	
	/**
	 * 说明
	 */
	private String des;
	
	/**
	 * 处理人
	 */
	private String dealor;
	
	/**
	 * 处理时间
	 */
	private Date dealtime;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTaxCoin() {
		return taxCoin;
	}
	public void setTaxCoin(String taxCoin) {
		this.taxCoin = taxCoin;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
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
