package com.g3g4.service;

import java.util.List;


import com.g3g4.model.Product;
import com.g3g4.util.Page;

/**
 * 产品 业务接口
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public interface IProductService {
	/**
	 * 查询 Product Page 对象
	 * @param product
	 * @param pageSize
	 * @return
	 */
	public Page selectProduct(Product product, int pageSize);

	/**
	 * 分页查找 产品
	 * @param product
	 * @param page
	 * @return
	 */
	public List<Product> selectProduct(Product product, Page page);
	
	/**
	 * 查询所有 产品
	 * @return
	 */
	public List<Product> selectAll();
	
	/**
	 * 根据 ID 查找 产品 
	 * @param product
	 * @return
	 */
	public Product selectProductById(Product product);
	
	/**
	 * 添加 产品 
	 * @param product
	 * @return
	 */
	public int addSave(Product product);
	
	/**
	 * 修改 产品 
	 * @param product
	 * @return
	 */
	public int editSave(Product product);
	
	/**
	 * 根据 ID 删除 产品 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);
}
