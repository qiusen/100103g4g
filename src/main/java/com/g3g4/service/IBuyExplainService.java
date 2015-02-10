package com.g3g4.service;

import java.util.List;


import com.g3g4.model.BuyExplain;
import com.g3g4.util.Page;

/**
 * 购买说明 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-10
 */
public interface IBuyExplainService {
	/**
	 * 查询 BuyExplain Page 对象
	 * @param buyExplain
	 * @param pageSize
	 * @return
	 */
	public Page selectBuyExplain(BuyExplain buyExplain, int pageSize);

	/**
	 * 分页查找 购买说明
	 * @param buyExplain
	 * @param page
	 * @return
	 */
	public List<BuyExplain> selectBuyExplain(BuyExplain buyExplain, Page page);
	
	/**
	 * 查询所有 购买说明
	 * @return
	 */
	public List<BuyExplain> selectAll();
	
	/**
	 * 根据 ID 查找 购买说明 
	 * @param buyExplain
	 * @return
	 */
	public BuyExplain selectBuyExplainById(BuyExplain buyExplain);
	
	/**
	 * 添加 购买说明 
	 * @param buyExplain
	 * @return
	 */
	public int addSave(BuyExplain buyExplain);
	
	/**
	 * 修改 购买说明 
	 * @param buyExplain
	 * @return
	 */
	public int editSave(BuyExplain buyExplain);
	
	/**
	 * 根据 ID 删除 购买说明 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
