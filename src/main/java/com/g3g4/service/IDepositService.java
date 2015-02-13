package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Deposit;
import com.g3g4.util.Page;

/**
 * 充值 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public interface IDepositService {
	/**
	 * 查询 Deposit Page 对象
	 * @param deposit
	 * @param pageSize
	 * @return
	 */
	public Page selectDeposit(Deposit deposit, int pageSize);

	/**
	 * 分页查找 充值
	 * @param deposit
	 * @param page
	 * @return
	 */
	public List<Deposit> selectDeposit(Deposit deposit, Page page);
	
	/**
	 * 查询所有 充值
	 * @return
	 */
	public List<Deposit> selectAll();
	
	/**
	 * 根据 ID 查找 充值 
	 * @param deposit
	 * @return
	 */
	public Deposit selectDepositById(Deposit deposit);
	
	/**
	 * 添加 充值 
	 * @param deposit
	 * @return
	 */
	public int addSave(Deposit deposit);
	
	/**
	 * 修改 充值 
	 * @param deposit
	 * @return
	 */
	public int editSave(Deposit deposit);
	
	/**
	 * 根据 ID 删除 充值 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
