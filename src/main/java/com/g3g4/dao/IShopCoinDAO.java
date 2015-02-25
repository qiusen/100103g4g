package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.ShopCoin;

/**
 * 电商币结算 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-25
 */
public interface IShopCoinDAO {

	/**
	 * 根据条件查询电商币结算 条数
	 * 
	 * @param shopCoin
	 * @return
	 */
	public Long getShopCoinCount(ShopCoin shopCoin);

	/**
	 * 分页查找电商币结算
	 * 
	 * @param shopCoin
	 * @param page
	 * @return
	 */
	public List<ShopCoin> selectShopCoinLike(ShopCoin shopCoin);

	/**
	 * 添加电商币结算
	 * 
	 * @param shopCoin
	 * @return
	 */
	public int addSaveShopCoin(ShopCoin shopCoin);

	/**
	 * 根据ID获取指定的电商币结算信息
	 * 
	 * @param shopCoin
	 * @return
	 */
	public ShopCoin selectShopCoinById(ShopCoin shopCoin);

	/**
	 * 修改电商币结算
	 * 
	 * @param shopCoin
	 * @return
	 */
	public int editSaveShopCoin(ShopCoin shopCoin);

	/**
	 * 根据ID删除指定的电商币结算
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有电商币结算
	 * 
	 * @return
	 */
	public List<ShopCoin> selectAll();
}
