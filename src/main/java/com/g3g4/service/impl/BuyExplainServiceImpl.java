package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IBuyExplainDAO;
import com.g3g4.model.BuyExplain;
import com.g3g4.service.IBuyExplainService;

/**
 * 购买说明 业务接口 IBuyExplainService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-10
 */
public class BuyExplainServiceImpl implements IBuyExplainService {

	@Resource
	private IBuyExplainDAO buyExplainDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#addSave(com.g3g4.model.BuyExplain)
	 */
	public int addSave(BuyExplain buyExplain) {
		return buyExplainDAO.addSaveBuyExplain(buyExplain);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return buyExplainDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#editSave(com.g3g4.model.BuyExplain)
	 */
	public int editSave(BuyExplain buyExplain) {
		return buyExplainDAO.editSaveBuyExplain(buyExplain);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IBuyExplainService#selectAll()
	 */
	public List<BuyExplain> selectAll() {
		return buyExplainDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#selectBuyExplain(com.g3g4.model.BuyExplain, int)
	 */
	public Page selectBuyExplain(BuyExplain buyExplain, int pageSize) {
		return new Page(buyExplainDAO.getBuyExplainCount(buyExplain), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#selectBuyExplain(com.g3g4.model.BuyExplain, com.g3g4.controller.helper.Page)
	 */
	public List<BuyExplain> selectBuyExplain(BuyExplain buyExplain, Page page) {
		buyExplain.setStart(page.getFirstItemPos());
		buyExplain.setPageSize(page.getPageSize());
		return buyExplainDAO.selectBuyExplainLike(buyExplain);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IBuyExplainService#selectBuyExplainById(com.g3g4.model.BuyExplain)
	 */
	public BuyExplain selectBuyExplainById(BuyExplain buyExplain) {
		return buyExplainDAO.selectBuyExplainById(buyExplain);
	}
}
