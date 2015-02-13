package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IOnlineOrderDAO;
import com.g3g4.model.OnlineOrder;
import com.g3g4.service.IOnlineOrderService;

/**
 * 在线订单 业务接口 IOnlineOrderService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public class OnlineOrderServiceImpl implements IOnlineOrderService {

	@Resource
	private IOnlineOrderDAO onlineOrderDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#addSave(com.g3g4.model.OnlineOrder)
	 */
	public int addSave(OnlineOrder onlineOrder) {
		return onlineOrderDAO.addSaveOnlineOrder(onlineOrder);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return onlineOrderDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#editSave(com.g3g4.model.OnlineOrder)
	 */
	public int editSave(OnlineOrder onlineOrder) {
		return onlineOrderDAO.editSaveOnlineOrder(onlineOrder);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IOnlineOrderService#selectAll()
	 */
	public List<OnlineOrder> selectAll() {
		return onlineOrderDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#selectOnlineOrder(com.g3g4.model.OnlineOrder, int)
	 */
	public Page selectOnlineOrder(OnlineOrder onlineOrder, int pageSize) {
		return new Page(onlineOrderDAO.getOnlineOrderCount(onlineOrder), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#selectOnlineOrder(com.g3g4.model.OnlineOrder, com.g3g4.controller.helper.Page)
	 */
	public List<OnlineOrder> selectOnlineOrder(OnlineOrder onlineOrder, Page page) {
		onlineOrder.setStart(page.getFirstItemPos());
		onlineOrder.setPageSize(page.getPageSize());
		return onlineOrderDAO.selectOnlineOrderLike(onlineOrder);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IOnlineOrderService#selectOnlineOrderById(com.g3g4.model.OnlineOrder)
	 */
	public OnlineOrder selectOnlineOrderById(OnlineOrder onlineOrder) {
		return onlineOrderDAO.selectOnlineOrderById(onlineOrder);
	}
}
