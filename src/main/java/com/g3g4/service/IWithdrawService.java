package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Withdraw;
import com.g3g4.util.Page;

/**
 * 提现 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-16
 */
public interface IWithdrawService {
	/**
	 * 查询 Withdraw Page 对象
	 * @param withdraw
	 * @param pageSize
	 * @return
	 */
	public Page selectWithdraw(Withdraw withdraw, int pageSize);

	/**
	 * 分页查找 提现
	 * @param withdraw
	 * @param page
	 * @return
	 */
	public List<Withdraw> selectWithdraw(Withdraw withdraw, Page page);
	
	/**
	 * 查询所有 提现
	 * @return
	 */
	public List<Withdraw> selectAll();
	
	/**
	 * 根据 ID 查找 提现 
	 * @param withdraw
	 * @return
	 */
	public Withdraw selectWithdrawById(Withdraw withdraw);
	
	/**
	 * 添加 提现 
	 * @param withdraw
	 * @return
	 */
	public int addSave(Withdraw withdraw);
	
	/**
	 * 修改 提现 
	 * @param withdraw
	 * @return
	 */
	public int editSave(Withdraw withdraw);
	
	/**
	 * 根据 ID 删除 提现 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
