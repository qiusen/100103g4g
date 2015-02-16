package com.g3g4.service;

import java.util.List;


import com.g3g4.model.TranTax;
import com.g3g4.util.Page;

/**
 * 转报单币 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
public interface ITranTaxService {
	/**
	 * 查询 TranTax Page 对象
	 * @param tranTax
	 * @param pageSize
	 * @return
	 */
	public Page selectTranTax(TranTax tranTax, int pageSize);

	/**
	 * 分页查找 转报单币
	 * @param tranTax
	 * @param page
	 * @return
	 */
	public List<TranTax> selectTranTax(TranTax tranTax, Page page);
	
	/**
	 * 查询所有 转报单币
	 * @return
	 */
	public List<TranTax> selectAll();
	
	/**
	 * 根据 ID 查找 转报单币 
	 * @param tranTax
	 * @return
	 */
	public TranTax selectTranTaxById(TranTax tranTax);
	
	/**
	 * 添加 转报单币 
	 * @param tranTax
	 * @return
	 */
	public int addSave(TranTax tranTax);
	
	/**
	 * 修改 转报单币 
	 * @param tranTax
	 * @return
	 */
	public int editSave(TranTax tranTax);
	
	/**
	 * 根据 ID 删除 转报单币 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
