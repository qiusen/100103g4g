package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.OnlineOrder;

/**
 * 在线订单 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-13
 */
public interface IOnlineOrderDAO {

	/**
	 * 根据条件查询在线订单 条数
	 * 
	 * @param onlineOrder
	 * @return
	 */
	public Long getOnlineOrderCount(OnlineOrder onlineOrder);

	/**
	 * 分页查找在线订单
	 * 
	 * @param onlineOrder
	 * @param page
	 * @return
	 */
	public List<OnlineOrder> selectOnlineOrderLike(OnlineOrder onlineOrder);

	/**
	 * 添加在线订单
	 * 
	 * @param onlineOrder
	 * @return
	 */
	public int addSaveOnlineOrder(OnlineOrder onlineOrder);

	/**
	 * 根据ID获取指定的在线订单信息
	 * 
	 * @param onlineOrder
	 * @return
	 */
	public OnlineOrder selectOnlineOrderById(OnlineOrder onlineOrder);

	/**
	 * 修改在线订单
	 * 
	 * @param onlineOrder
	 * @return
	 */
	public int editSaveOnlineOrder(OnlineOrder onlineOrder);

	/**
	 * 根据ID删除指定的在线订单
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有在线订单
	 * 
	 * @return
	 */
	public List<OnlineOrder> selectAll();
}
