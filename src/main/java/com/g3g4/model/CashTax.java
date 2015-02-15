package com.g3g4.model;

import java.util.Date;		            

/**
 * 现金币转报单币
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
@SuppressWarnings("serial")
public class CashTax extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 转换金额
	 */
	private Double coin;
	
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
	public Double getCoin() {
		return coin;
	}
	public void setCoin(Double coin) {
		this.coin = coin;
	}
	public Date getDealtime() {
		return dealtime;
	}
	public void setDealtime(Date dealtime) {
		this.dealtime = dealtime;
	}
}
