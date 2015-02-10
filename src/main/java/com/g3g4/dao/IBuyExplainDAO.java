package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.BuyExplain;

/**
 * 购买说明 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-10
 */
public interface IBuyExplainDAO {

	/**
	 * 根据条件查询购买说明 条数
	 * 
	 * @param buyExplain
	 * @return
	 */
	public Long getBuyExplainCount(BuyExplain buyExplain);

	/**
	 * 分页查找购买说明
	 * 
	 * @param buyExplain
	 * @param page
	 * @return
	 */
	public List<BuyExplain> selectBuyExplainLike(BuyExplain buyExplain);

	/**
	 * 添加购买说明
	 * 
	 * @param buyExplain
	 * @return
	 */
	public int addSaveBuyExplain(BuyExplain buyExplain);

	/**
	 * 根据ID获取指定的购买说明信息
	 * 
	 * @param buyExplain
	 * @return
	 */
	public BuyExplain selectBuyExplainById(BuyExplain buyExplain);

	/**
	 * 修改购买说明
	 * 
	 * @param buyExplain
	 * @return
	 */
	public int editSaveBuyExplain(BuyExplain buyExplain);

	/**
	 * 根据ID删除指定的购买说明
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有购买说明
	 * 
	 * @return
	 */
	public List<BuyExplain> selectAll();
}
