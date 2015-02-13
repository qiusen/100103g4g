package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Combo;

/**
 * 套餐 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-13
 */
public interface IComboDAO {

	/**
	 * 根据条件查询套餐 条数
	 * 
	 * @param combo
	 * @return
	 */
	public Long getComboCount(Combo combo);

	/**
	 * 分页查找套餐
	 * 
	 * @param combo
	 * @param page
	 * @return
	 */
	public List<Combo> selectComboLike(Combo combo);

	/**
	 * 添加套餐
	 * 
	 * @param combo
	 * @return
	 */
	public int addSaveCombo(Combo combo);

	/**
	 * 根据ID获取指定的套餐信息
	 * 
	 * @param combo
	 * @return
	 */
	public Combo selectComboById(Combo combo);

	/**
	 * 修改套餐
	 * 
	 * @param combo
	 * @return
	 */
	public int editSaveCombo(Combo combo);

	/**
	 * 根据ID删除指定的套餐
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有套餐
	 * 
	 * @return
	 */
	public List<Combo> selectAll();
}
