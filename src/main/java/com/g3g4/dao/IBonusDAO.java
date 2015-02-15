package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Bonus;

/**
 * 奖金 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-15
 */
public interface IBonusDAO {

	/**
	 * 根据条件查询奖金 条数
	 * 
	 * @param bonus
	 * @return
	 */
	public Long getBonusCount(Bonus bonus);

	/**
	 * 分页查找奖金
	 * 
	 * @param bonus
	 * @param page
	 * @return
	 */
	public List<Bonus> selectBonusLike(Bonus bonus);

	/**
	 * 添加奖金
	 * 
	 * @param bonus
	 * @return
	 */
	public int addSaveBonus(Bonus bonus);

	/**
	 * 根据ID获取指定的奖金信息
	 * 
	 * @param bonus
	 * @return
	 */
	public Bonus selectBonusById(Bonus bonus);

	/**
	 * 修改奖金
	 * 
	 * @param bonus
	 * @return
	 */
	public int editSaveBonus(Bonus bonus);

	/**
	 * 根据ID删除指定的奖金
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有奖金
	 * 
	 * @return
	 */
	public List<Bonus> selectAll();
}
