package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Withdraw;

/**
 * 提现 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-16
 */
public interface IWithdrawDAO {

	/**
	 * 根据条件查询提现 条数
	 * 
	 * @param withdraw
	 * @return
	 */
	public Long getWithdrawCount(Withdraw withdraw);

	/**
	 * 分页查找提现
	 * 
	 * @param withdraw
	 * @param page
	 * @return
	 */
	public List<Withdraw> selectWithdrawLike(Withdraw withdraw);

	/**
	 * 添加提现
	 * 
	 * @param withdraw
	 * @return
	 */
	public int addSaveWithdraw(Withdraw withdraw);

	/**
	 * 根据ID获取指定的提现信息
	 * 
	 * @param withdraw
	 * @return
	 */
	public Withdraw selectWithdrawById(Withdraw withdraw);

	/**
	 * 修改提现
	 * 
	 * @param withdraw
	 * @return
	 */
	public int editSaveWithdraw(Withdraw withdraw);

	/**
	 * 根据ID删除指定的提现
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有提现
	 * 
	 * @return
	 */
	public List<Withdraw> selectAll();
}
