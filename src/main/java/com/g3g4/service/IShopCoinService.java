package com.g3g4.service;

import java.util.List;


import com.g3g4.model.ShopCoin;
import com.g3g4.util.Page;

/**
 * 电商币结算 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-25
 */
public interface IShopCoinService {
	/**
	 * 查询 ShopCoin Page 对象
	 * @param shopCoin
	 * @param pageSize
	 * @return
	 */
	public Page selectShopCoin(ShopCoin shopCoin, int pageSize);

	/**
	 * 分页查找 电商币结算
	 * @param shopCoin
	 * @param page
	 * @return
	 */
	public List<ShopCoin> selectShopCoin(ShopCoin shopCoin, Page page);
	
	/**
	 * 查询所有 电商币结算
	 * @return
	 */
	public List<ShopCoin> selectAll();
	
	/**
	 * 根据 ID 查找 电商币结算 
	 * @param shopCoin
	 * @return
	 */
	public ShopCoin selectShopCoinById(ShopCoin shopCoin);
	
	/**
	 * 添加 电商币结算 
	 * @param shopCoin
	 * @return
	 */
	public int addSave(ShopCoin shopCoin);
	
	/**
	 * 修改 电商币结算 
	 * @param shopCoin
	 * @return
	 */
	public int editSave(ShopCoin shopCoin);
	
	/**
	 * 根据 ID 删除 电商币结算 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
