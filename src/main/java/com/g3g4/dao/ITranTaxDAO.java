package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.TranTax;

/**
 * 转报单币 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-16
 */
public interface ITranTaxDAO {

	/**
	 * 根据条件查询转报单币 条数
	 * 
	 * @param tranTax
	 * @return
	 */
	public Long getTranTaxCount(TranTax tranTax);

	/**
	 * 分页查找转报单币
	 * 
	 * @param tranTax
	 * @param page
	 * @return
	 */
	public List<TranTax> selectTranTaxLike(TranTax tranTax);

	/**
	 * 添加转报单币
	 * 
	 * @param tranTax
	 * @return
	 */
	public int addSaveTranTax(TranTax tranTax);

	/**
	 * 根据ID获取指定的转报单币信息
	 * 
	 * @param tranTax
	 * @return
	 */
	public TranTax selectTranTaxById(TranTax tranTax);

	/**
	 * 修改转报单币
	 * 
	 * @param tranTax
	 * @return
	 */
	public int editSaveTranTax(TranTax tranTax);

	/**
	 * 根据ID删除指定的转报单币
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有转报单币
	 * 
	 * @return
	 */
	public List<TranTax> selectAll();
}
