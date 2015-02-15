package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IBonusDAO;
import com.g3g4.model.Bonus;
import com.g3g4.service.IBonusService;

/**
 * 奖金 业务接口 IBonusService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-15
 */
public class BonusServiceImpl implements IBonusService {

	@Resource
	private IBonusDAO bonusDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#addSave(com.g3g4.model.Bonus)
	 */
	public int addSave(Bonus bonus) {
		return bonusDAO.addSaveBonus(bonus);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return bonusDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#editSave(com.g3g4.model.Bonus)
	 */
	public int editSave(Bonus bonus) {
		return bonusDAO.editSaveBonus(bonus);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IBonusService#selectAll()
	 */
	public List<Bonus> selectAll() {
		return bonusDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#selectBonus(com.g3g4.model.Bonus, int)
	 */
	public Page selectBonus(Bonus bonus, int pageSize) {
		return new Page(bonusDAO.getBonusCount(bonus), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#selectBonus(com.g3g4.model.Bonus, com.g3g4.controller.helper.Page)
	 */
	public List<Bonus> selectBonus(Bonus bonus, Page page) {
		bonus.setStart(page.getFirstItemPos());
		bonus.setPageSize(page.getPageSize());
		return bonusDAO.selectBonusLike(bonus);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IBonusService#selectBonusById(com.g3g4.model.Bonus)
	 */
	public Bonus selectBonusById(Bonus bonus) {
		return bonusDAO.selectBonusById(bonus);
	}
}
