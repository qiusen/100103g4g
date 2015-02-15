package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Bonus;
import com.g3g4.util.Page;

/**
 * 奖金 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
public interface IBonusService {
	/**
	 * 查询 Bonus Page 对象
	 * @param bonus
	 * @param pageSize
	 * @return
	 */
	public Page selectBonus(Bonus bonus, int pageSize);

	/**
	 * 分页查找 奖金
	 * @param bonus
	 * @param page
	 * @return
	 */
	public List<Bonus> selectBonus(Bonus bonus, Page page);
	
	/**
	 * 查询所有 奖金
	 * @return
	 */
	public List<Bonus> selectAll();
	
	/**
	 * 根据 ID 查找 奖金 
	 * @param bonus
	 * @return
	 */
	public Bonus selectBonusById(Bonus bonus);
	
	/**
	 * 添加 奖金 
	 * @param bonus
	 * @return
	 */
	public int addSave(Bonus bonus);
	
	/**
	 * 修改 奖金 
	 * @param bonus
	 * @return
	 */
	public int editSave(Bonus bonus);
	
	/**
	 * 根据 ID 删除 奖金 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
