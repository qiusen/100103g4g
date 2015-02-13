package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Deposit;

/**
 * 充值 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-13
 */
public interface IDepositDAO {

	/**
	 * 根据条件查询充值 条数
	 * 
	 * @param deposit
	 * @return
	 */
	public Long getDepositCount(Deposit deposit);

	/**
	 * 分页查找充值
	 * 
	 * @param deposit
	 * @param page
	 * @return
	 */
	public List<Deposit> selectDepositLike(Deposit deposit);

	/**
	 * 添加充值
	 * 
	 * @param deposit
	 * @return
	 */
	public int addSaveDeposit(Deposit deposit);

	/**
	 * 根据ID获取指定的充值信息
	 * 
	 * @param deposit
	 * @return
	 */
	public Deposit selectDepositById(Deposit deposit);

	/**
	 * 修改充值
	 * 
	 * @param deposit
	 * @return
	 */
	public int editSaveDeposit(Deposit deposit);

	/**
	 * 根据ID删除指定的充值
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有充值
	 * 
	 * @return
	 */
	public List<Deposit> selectAll();
}
