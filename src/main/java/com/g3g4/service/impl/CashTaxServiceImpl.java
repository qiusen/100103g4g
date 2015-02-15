package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.ICashTaxDAO;
import com.g3g4.model.CashTax;
import com.g3g4.service.ICashTaxService;

/**
 * 现金币转报单币 业务接口 ICashTaxService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
public class CashTaxServiceImpl implements ICashTaxService {

	@Resource
	private ICashTaxDAO cashTaxDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#addSave(com.g3g4.model.CashTax)
	 */
	public int addSave(CashTax cashTax) {
		return cashTaxDAO.addSaveCashTax(cashTax);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return cashTaxDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#editSave(com.g3g4.model.CashTax)
	 */
	public int editSave(CashTax cashTax) {
		return cashTaxDAO.editSaveCashTax(cashTax);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.ICashTaxService#selectAll()
	 */
	public List<CashTax> selectAll() {
		return cashTaxDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#selectCashTax(com.g3g4.model.CashTax, int)
	 */
	public Page selectCashTax(CashTax cashTax, int pageSize) {
		return new Page(cashTaxDAO.getCashTaxCount(cashTax), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#selectCashTax(com.g3g4.model.CashTax, com.g3g4.controller.helper.Page)
	 */
	public List<CashTax> selectCashTax(CashTax cashTax, Page page) {
		cashTax.setStart(page.getFirstItemPos());
		cashTax.setPageSize(page.getPageSize());
		return cashTaxDAO.selectCashTaxLike(cashTax);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.ICashTaxService#selectCashTaxById(com.g3g4.model.CashTax)
	 */
	public CashTax selectCashTaxById(CashTax cashTax) {
		return cashTaxDAO.selectCashTaxById(cashTax);
	}
}
