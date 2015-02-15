package com.g3g4.service;

import java.util.List;


import com.g3g4.model.CashTax;
import com.g3g4.util.Page;

/**
 * 现金币转报单币 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
public interface ICashTaxService {
	/**
	 * 查询 CashTax Page 对象
	 * @param cashTax
	 * @param pageSize
	 * @return
	 */
	public Page selectCashTax(CashTax cashTax, int pageSize);

	/**
	 * 分页查找 现金币转报单币
	 * @param cashTax
	 * @param page
	 * @return
	 */
	public List<CashTax> selectCashTax(CashTax cashTax, Page page);
	
	/**
	 * 查询所有 现金币转报单币
	 * @return
	 */
	public List<CashTax> selectAll();
	
	/**
	 * 根据 ID 查找 现金币转报单币 
	 * @param cashTax
	 * @return
	 */
	public CashTax selectCashTaxById(CashTax cashTax);
	
	/**
	 * 添加 现金币转报单币 
	 * @param cashTax
	 * @return
	 */
	public int addSave(CashTax cashTax);
	
	/**
	 * 修改 现金币转报单币 
	 * @param cashTax
	 * @return
	 */
	public int editSave(CashTax cashTax);
	
	/**
	 * 根据 ID 删除 现金币转报单币 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
