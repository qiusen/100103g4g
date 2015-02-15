package com.g3g4.model;

import java.util.Date;		            

/**
 * 奖金
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
@SuppressWarnings("serial")
public class Bonus extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 期数
	 */
	private Integer cycle;
	
	/**
	 * 服务补贴
	 */
	private Double servSubsidy;
	
	/**
	 * 媒体宣传费
	 */
	private Double mediaPub;
	
	/**
	 * 教育培训奖
	 */
	private Double eduTrain;
	
	/**
	 * 广告服务奖
	 */
	private Double adServ;
	
	/**
	 * 组织领导奖
	 */
	private Double orgaLead;
	
	/**
	 * 津贴分红
	 */
	private Double allowance;
	
	/**
	 * 维护费
	 */
	private Double maintain;
	
	/**
	 * 互助基金
	 */
	private Double helpEach;
	
	/**
	 * 爱心基金
	 */
	private Double loveHeart;
	
	/**
	 * 税金
	 */
	private Double tax;
	
	/**
	 * 实发金额
	 */
	private Double realGive;
	
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
	public Integer getCycle() {
		return cycle;
	}
	public void setCycle(Integer cycle) {
		this.cycle = cycle;
	}

	public Double getServSubsidy() {
		return servSubsidy;
	}
	public void setServSubsidy(Double servSubsidy) {
		this.servSubsidy = servSubsidy;
	}
	public Double getMediaPub() {
		return mediaPub;
	}
	public void setMediaPub(Double mediaPub) {
		this.mediaPub = mediaPub;
	}
	public Double getEduTrain() {
		return eduTrain;
	}
	public void setEduTrain(Double eduTrain) {
		this.eduTrain = eduTrain;
	}
	public Double getAdServ() {
		return adServ;
	}
	public void setAdServ(Double adServ) {
		this.adServ = adServ;
	}
	public Double getOrgaLead() {
		return orgaLead;
	}
	public void setOrgaLead(Double orgaLead) {
		this.orgaLead = orgaLead;
	}
	public Double getAllowance() {
		return allowance;
	}
	public void setAllowance(Double allowance) {
		this.allowance = allowance;
	}
	public Double getMaintain() {
		return maintain;
	}
	public void setMaintain(Double maintain) {
		this.maintain = maintain;
	}
	public Double getHelpEach() {
		return helpEach;
	}
	public void setHelpEach(Double helpEach) {
		this.helpEach = helpEach;
	}
	public Double getLoveHeart() {
		return loveHeart;
	}
	public void setLoveHeart(Double loveHeart) {
		this.loveHeart = loveHeart;
	}
	public Double getTax() {
		return tax;
	}
	public void setTax(Double tax) {
		this.tax = tax;
	}
	public Double getRealGive() {
		return realGive;
	}
	public void setRealGive(Double realGive) {
		this.realGive = realGive;
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
