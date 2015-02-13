package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IDepositDAO;
import com.g3g4.model.Deposit;
import com.g3g4.service.IDepositService;

/**
 * 充值 业务接口 IDepositService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public class DepositServiceImpl implements IDepositService {

	@Resource
	private IDepositDAO depositDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#addSave(com.g3g4.model.Deposit)
	 */
	public int addSave(Deposit deposit) {
		return depositDAO.addSaveDeposit(deposit);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return depositDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#editSave(com.g3g4.model.Deposit)
	 */
	public int editSave(Deposit deposit) {
		return depositDAO.editSaveDeposit(deposit);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IDepositService#selectAll()
	 */
	public List<Deposit> selectAll() {
		return depositDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#selectDeposit(com.g3g4.model.Deposit, int)
	 */
	public Page selectDeposit(Deposit deposit, int pageSize) {
		return new Page(depositDAO.getDepositCount(deposit), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#selectDeposit(com.g3g4.model.Deposit, com.g3g4.controller.helper.Page)
	 */
	public List<Deposit> selectDeposit(Deposit deposit, Page page) {
		deposit.setStart(page.getFirstItemPos());
		deposit.setPageSize(page.getPageSize());
		return depositDAO.selectDepositLike(deposit);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IDepositService#selectDepositById(com.g3g4.model.Deposit)
	 */
	public Deposit selectDepositById(Deposit deposit) {
		return depositDAO.selectDepositById(deposit);
	}
}
