package com.g3g4.service;

import java.util.List;


import com.g3g4.model.OnlineOrder;
import com.g3g4.util.Page;

/**
 * 在线订单 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public interface IOnlineOrderService {
	/**
	 * 查询 OnlineOrder Page 对象
	 * @param onlineOrder
	 * @param pageSize
	 * @return
	 */
	public Page selectOnlineOrder(OnlineOrder onlineOrder, int pageSize);

	/**
	 * 分页查找 在线订单
	 * @param onlineOrder
	 * @param page
	 * @return
	 */
	public List<OnlineOrder> selectOnlineOrder(OnlineOrder onlineOrder, Page page);
	
	/**
	 * 查询所有 在线订单
	 * @return
	 */
	public List<OnlineOrder> selectAll();
	
	/**
	 * 根据 ID 查找 在线订单 
	 * @param onlineOrder
	 * @return
	 */
	public OnlineOrder selectOnlineOrderById(OnlineOrder onlineOrder);
	
	/**
	 * 添加 在线订单 
	 * @param onlineOrder
	 * @return
	 */
	public int addSave(OnlineOrder onlineOrder);
	
	/**
	 * 修改 在线订单 
	 * @param onlineOrder
	 * @return
	 */
	public int editSave(OnlineOrder onlineOrder);
	
	/**
	 * 根据 ID 删除 在线订单 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
