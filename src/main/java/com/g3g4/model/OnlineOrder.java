package com.g3g4.model;

import java.util.Date;

/**
 * 在线订单
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
@SuppressWarnings("serial")
public class OnlineOrder extends BaseModel{
	
	/**
	 * 订单人编号
	 */
	private String code;
	
	/**
	 * 收货人姓名
	 */
	private String name;
	
	/**
	 * 收货人手机
	 */
	private String mobile;
	
	/**
	 * 收货人地址
	 */
	private String addr;
	
	/**
	 * 手机型号
	 */
	private String mobileModel;
	
	/**
	 * 手机颜色
	 */
	private String mobileColor;
	
	/**
	 * 手机号码1
	 */
	private String mobileNumber1;
	
	/**
	 * 手机号码2
	 */
	private String mobileNumber2;
	
	/**
	 * 手机号码3
	 */
	private String mobileNumber3;
	
	/**
	 * 手机号码4
	 */
	private String mobileNumber4;
	
	/**
	 * 手机号码5
	 */
	private String mobileNumber5;
	
	/**
	 * 手机号码6
	 */
	private String mobileNumber6;
	
	/**
	 * 电脑、上网卡
	 */
	private String pc;
	
	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 状态：0、未处理；1、已处理
	 */
	private Integer status;
	
	/**
	 * 创建时间
	 */
	private Date createtime;
	
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
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getMobileModel() {
		return mobileModel;
	}
	public void setMobileModel(String mobileModel) {
		this.mobileModel = mobileModel;
	}
	public String getMobileColor() {
		return mobileColor;
	}
	public void setMobileColor(String mobileColor) {
		this.mobileColor = mobileColor;
	}
	public String getMobileNumber1() {
		return mobileNumber1;
	}
	public void setMobileNumber1(String mobileNumber1) {
		this.mobileNumber1 = mobileNumber1;
	}
	public String getMobileNumber2() {
		return mobileNumber2;
	}
	public void setMobileNumber2(String mobileNumber2) {
		this.mobileNumber2 = mobileNumber2;
	}
	public String getMobileNumber3() {
		return mobileNumber3;
	}
	public void setMobileNumber3(String mobileNumber3) {
		this.mobileNumber3 = mobileNumber3;
	}
	public String getMobileNumber4() {
		return mobileNumber4;
	}
	public void setMobileNumber4(String mobileNumber4) {
		this.mobileNumber4 = mobileNumber4;
	}
	public String getMobileNumber5() {
		return mobileNumber5;
	}
	public void setMobileNumber5(String mobileNumber5) {
		this.mobileNumber5 = mobileNumber5;
	}
	public String getMobileNumber6() {
		return mobileNumber6;
	}
	public void setMobileNumber6(String mobileNumber6) {
		this.mobileNumber6 = mobileNumber6;
	}
	public String getPc() {
		return pc;
	}
	public void setPc(String pc) {
		this.pc = pc;
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
