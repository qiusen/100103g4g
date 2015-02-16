package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IWithdrawDAO;
import com.g3g4.model.Withdraw;
import com.g3g4.service.IWithdrawService;

/**
 * 提现 业务接口 IWithdrawService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
public class WithdrawServiceImpl implements IWithdrawService {

	@Resource
	private IWithdrawDAO withdrawDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#addSave(com.g3g4.model.Withdraw)
	 */
	public int addSave(Withdraw withdraw) {
		return withdrawDAO.addSaveWithdraw(withdraw);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return withdrawDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#editSave(com.g3g4.model.Withdraw)
	 */
	public int editSave(Withdraw withdraw) {
		return withdrawDAO.editSaveWithdraw(withdraw);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IWithdrawService#selectAll()
	 */
	public List<Withdraw> selectAll() {
		return withdrawDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#selectWithdraw(com.g3g4.model.Withdraw, int)
	 */
	public Page selectWithdraw(Withdraw withdraw, int pageSize) {
		return new Page(withdrawDAO.getWithdrawCount(withdraw), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#selectWithdraw(com.g3g4.model.Withdraw, com.g3g4.controller.helper.Page)
	 */
	public List<Withdraw> selectWithdraw(Withdraw withdraw, Page page) {
		withdraw.setStart(page.getFirstItemPos());
		withdraw.setPageSize(page.getPageSize());
		return withdrawDAO.selectWithdrawLike(withdraw);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IWithdrawService#selectWithdrawById(com.g3g4.model.Withdraw)
	 */
	public Withdraw selectWithdrawById(Withdraw withdraw) {
		return withdrawDAO.selectWithdrawById(withdraw);
	}
}
