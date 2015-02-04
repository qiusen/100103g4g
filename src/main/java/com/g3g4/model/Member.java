package com.g3g4.model;

import java.util.Date;

/**
 * 会员
 * 
 * @author cg
 *
 * @date 2015-02-04
 */
@SuppressWarnings("serial")
public class Member extends BaseModel{
	
	/**
	 * 编号
	 */
	private String code;
	
	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 手机
	 */
	private String mobile;
	
	/**
	 * 服务中心编号
	 */
	private String servCode;
	
	/**
	 * 推荐人编号
	 */
	private String recoCode;
	
	/**
	 * 管理人编号
	 */
	private String managerCode;
	
	/**
	 * 位置：A、A区；B、B区
	 */
	private String area;
	
	/**
	 * 身份证号
	 */
	private String inden;
	
	/**
	 * 银行：1、农行；2、工行
	 */
	private Integer bank;
	
	/**
	 * 一级密码
	 */
	private Integer passwd1;
	
	/**
	 * 二级密码
	 */
	private Integer passwd2;
	
	/**
	 * 三级密码
	 */
	private Integer passwd3;
	
	/**
	 * 第二联系方式
	 */
	private String mobile2;
	
	/**
	 * QQ
	 */
	private String qq;
	
	/**
	 * 邮编
	 */
	private String postCode;
	
	/**
	 * 地址
	 */
	private String addr;
	
	/**
	 * 备注
	 */
	private String remark;
	
	/**
	 * 报单币
	 */
	private Integer taxCoin;
	
	/**
	 * 现金币
	 */
	private Integer cashCoin;
	
	/**
	 * 电商币
	 */
	private Integer shopCoin;
	
	/**
	 * 级别
	 */
	private Integer level;
	
	/**
	 * 状态：0、未审；1、已审
	 */
	private Integer status;
	
	/**
	 * 创建人
	 */
	private String creator;
	
	/**
	 * 创建时间
	 */
	private Date createtime;
	
	/**
	 * 修改人
	 */
	private String updator;
	
	/**
	 * 修改时间
	 */
	private Date updatetime;
	
	/**
	 * 审核人
	 */
	private String exator;
	
	/**
	 * 审核时间
	 */
	private Date exatetime;
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
	public String getServCode() {
		return servCode;
	}
	public void setServCode(String servCode) {
		this.servCode = servCode;
	}
	public String getRecoCode() {
		return recoCode;
	}
	public void setRecoCode(String recoCode) {
		this.recoCode = recoCode;
	}
	public String getManagerCode() {
		return managerCode;
	}
	public void setManagerCode(String managerCode) {
		this.managerCode = managerCode;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getInden() {
		return inden;
	}
	public void setInden(String inden) {
		this.inden = inden;
	}
	public Integer getBank() {
		return bank;
	}
	public void setBank(Integer bank) {
		this.bank = bank;
	}
	public Integer getPasswd1() {
		return passwd1;
	}
	public void setPasswd1(Integer passwd1) {
		this.passwd1 = passwd1;
	}
	public Integer getPasswd2() {
		return passwd2;
	}
	public void setPasswd2(Integer passwd2) {
		this.passwd2 = passwd2;
	}
	public Integer getPasswd3() {
		return passwd3;
	}
	public void setPasswd3(Integer passwd3) {
		this.passwd3 = passwd3;
	}
	public String getMobile2() {
		return mobile2;
	}
	public void setMobile2(String mobile2) {
		this.mobile2 = mobile2;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getTaxCoin() {
		return taxCoin;
	}
	public void setTaxCoin(Integer taxCoin) {
		this.taxCoin = taxCoin;
	}
	public Integer getCashCoin() {
		return cashCoin;
	}
	public void setCashCoin(Integer cashCoin) {
		this.cashCoin = cashCoin;
	}
	public Integer getShopCoin() {
		return shopCoin;
	}
	public void setShopCoin(Integer shopCoin) {
		this.shopCoin = shopCoin;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
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
	public String getExator() {
		return exator;
	}
	public void setExator(String exator) {
		this.exator = exator;
	}
	public Date getExatetime() {
		return exatetime;
	}
	public void setExatetime(Date exatetime) {
		this.exatetime = exatetime;
	}
}
