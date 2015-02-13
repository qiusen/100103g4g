package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IComboDAO;
import com.g3g4.model.Combo;
import com.g3g4.service.IComboService;

/**
 * 套餐 业务接口 IComboService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public class ComboServiceImpl implements IComboService {

	@Resource
	private IComboDAO comboDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#addSave(com.g3g4.model.Combo)
	 */
	public int addSave(Combo combo) {
		return comboDAO.addSaveCombo(combo);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return comboDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#editSave(com.g3g4.model.Combo)
	 */
	public int editSave(Combo combo) {
		return comboDAO.editSaveCombo(combo);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IComboService#selectAll()
	 */
	public List<Combo> selectAll() {
		return comboDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#selectCombo(com.g3g4.model.Combo, int)
	 */
	public Page selectCombo(Combo combo, int pageSize) {
		return new Page(comboDAO.getComboCount(combo), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#selectCombo(com.g3g4.model.Combo, com.g3g4.controller.helper.Page)
	 */
	public List<Combo> selectCombo(Combo combo, Page page) {
		combo.setStart(page.getFirstItemPos());
		combo.setPageSize(page.getPageSize());
		return comboDAO.selectComboLike(combo);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IComboService#selectComboById(com.g3g4.model.Combo)
	 */
	public Combo selectComboById(Combo combo) {
		return comboDAO.selectComboById(combo);
	}
}
