package com.g3g4.model;

import java.util.Date;		            

/**
 * 电商币结算
 * 
 * @author cg
 *
 * @date 2015-02-25
 */
@SuppressWarnings("serial")
public class ShopCoin extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 姓名
	 */
	private String name;
	
	/**
	 * 电商币
	 */
	private Double coin;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getCoin() {
		return coin;
	}
	public void setCoin(Double coin) {
		this.coin = coin;
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
