package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Combo;
import com.g3g4.util.Page;

/**
 * 套餐 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public interface IComboService {
	/**
	 * 查询 Combo Page 对象
	 * @param combo
	 * @param pageSize
	 * @return
	 */
	public Page selectCombo(Combo combo, int pageSize);

	/**
	 * 分页查找 套餐
	 * @param combo
	 * @param page
	 * @return
	 */
	public List<Combo> selectCombo(Combo combo, Page page);
	
	/**
	 * 查询所有 套餐
	 * @return
	 */
	public List<Combo> selectAll();
	
	/**
	 * 根据 ID 查找 套餐 
	 * @param combo
	 * @return
	 */
	public Combo selectComboById(Combo combo);
	
	/**
	 * 添加 套餐 
	 * @param combo
	 * @return
	 */
	public int addSave(Combo combo);
	
	/**
	 * 修改 套餐 
	 * @param combo
	 * @return
	 */
	public int editSave(Combo combo);
	
	/**
	 * 根据 ID 删除 套餐 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
