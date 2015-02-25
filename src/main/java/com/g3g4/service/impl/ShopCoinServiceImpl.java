package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IShopCoinDAO;
import com.g3g4.model.ShopCoin;
import com.g3g4.service.IShopCoinService;

/**
 * 电商币结算 业务接口 IShopCoinService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-25
 */
public class ShopCoinServiceImpl implements IShopCoinService {

	@Resource
	private IShopCoinDAO shopCoinDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#addSave(com.g3g4.model.ShopCoin)
	 */
	public int addSave(ShopCoin shopCoin) {
		return shopCoinDAO.addSaveShopCoin(shopCoin);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return shopCoinDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#editSave(com.g3g4.model.ShopCoin)
	 */
	public int editSave(ShopCoin shopCoin) {
		return shopCoinDAO.editSaveShopCoin(shopCoin);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IShopCoinService#selectAll()
	 */
	public List<ShopCoin> selectAll() {
		return shopCoinDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#selectShopCoin(com.g3g4.model.ShopCoin, int)
	 */
	public Page selectShopCoin(ShopCoin shopCoin, int pageSize) {
		return new Page(shopCoinDAO.getShopCoinCount(shopCoin), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#selectShopCoin(com.g3g4.model.ShopCoin, com.g3g4.controller.helper.Page)
	 */
	public List<ShopCoin> selectShopCoin(ShopCoin shopCoin, Page page) {
		shopCoin.setStart(page.getFirstItemPos());
		shopCoin.setPageSize(page.getPageSize());
		return shopCoinDAO.selectShopCoinLike(shopCoin);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IShopCoinService#selectShopCoinById(com.g3g4.model.ShopCoin)
	 */
	public ShopCoin selectShopCoinById(ShopCoin shopCoin) {
		return shopCoinDAO.selectShopCoinById(shopCoin);
	}
}
