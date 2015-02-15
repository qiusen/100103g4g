package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.CashTax;

/**
 * 现金币转报单币 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-15
 */
public interface ICashTaxDAO {

	/**
	 * 根据条件查询现金币转报单币 条数
	 * 
	 * @param cashTax
	 * @return
	 */
	public Long getCashTaxCount(CashTax cashTax);

	/**
	 * 分页查找现金币转报单币
	 * 
	 * @param cashTax
	 * @param page
	 * @return
	 */
	public List<CashTax> selectCashTaxLike(CashTax cashTax);

	/**
	 * 添加现金币转报单币
	 * 
	 * @param cashTax
	 * @return
	 */
	public int addSaveCashTax(CashTax cashTax);

	/**
	 * 根据ID获取指定的现金币转报单币信息
	 * 
	 * @param cashTax
	 * @return
	 */
	public CashTax selectCashTaxById(CashTax cashTax);

	/**
	 * 修改现金币转报单币
	 * 
	 * @param cashTax
	 * @return
	 */
	public int editSaveCashTax(CashTax cashTax);

	/**
	 * 根据ID删除指定的现金币转报单币
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有现金币转报单币
	 * 
	 * @return
	 */
	public List<CashTax> selectAll();
}
