package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.ITranTaxDAO;
import com.g3g4.model.TranTax;
import com.g3g4.service.ITranTaxService;

/**
 * 转报单币 业务接口 ITranTaxService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
public class TranTaxServiceImpl implements ITranTaxService {

	@Resource
	private ITranTaxDAO tranTaxDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#addSave(com.g3g4.model.TranTax)
	 */
	public int addSave(TranTax tranTax) {
		return tranTaxDAO.addSaveTranTax(tranTax);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return tranTaxDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#editSave(com.g3g4.model.TranTax)
	 */
	public int editSave(TranTax tranTax) {
		return tranTaxDAO.editSaveTranTax(tranTax);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.ITranTaxService#selectAll()
	 */
	public List<TranTax> selectAll() {
		return tranTaxDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#selectTranTax(com.g3g4.model.TranTax, int)
	 */
	public Page selectTranTax(TranTax tranTax, int pageSize) {
		return new Page(tranTaxDAO.getTranTaxCount(tranTax), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#selectTranTax(com.g3g4.model.TranTax, com.g3g4.controller.helper.Page)
	 */
	public List<TranTax> selectTranTax(TranTax tranTax, Page page) {
		tranTax.setStart(page.getFirstItemPos());
		tranTax.setPageSize(page.getPageSize());
		return tranTaxDAO.selectTranTaxLike(tranTax);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.ITranTaxService#selectTranTaxById(com.g3g4.model.TranTax)
	 */
	public TranTax selectTranTaxById(TranTax tranTax) {
		return tranTaxDAO.selectTranTaxById(tranTax);
	}
}
