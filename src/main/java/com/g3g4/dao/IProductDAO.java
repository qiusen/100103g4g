package com.g3g4.dao;

import java.util.List;


import com.g3g4.model.Product;

/**
 * 产品 DAO 接口
 * 
 * @author cg
 * 
 * @since 2015-02-13
 */
public interface IProductDAO {

	/**
	 * 根据条件查询产品 条数
	 * 
	 * @param product
	 * @return
	 */
	public Long getProductCount(Product product);

	/**
	 * 分页查找产品
	 * 
	 * @param product
	 * @param page
	 * @return
	 */
	public List<Product> selectProductLike(Product product);

	/**
	 * 添加产品
	 * 
	 * @param product
	 * @return
	 */
	public int addSaveProduct(Product product);

	/**
	 * 根据ID获取指定的产品信息
	 * 
	 * @param product
	 * @return
	 */
	public Product selectProductById(Product product);

	/**
	 * 修改产品
	 * 
	 * @param product
	 * @return
	 */
	public int editSaveProduct(Product product);

	/**
	 * 根据ID删除指定的产品
	 * 
	 * @param str
	 * @return
	 */
	public int deleteByIds(String str);

	/**
	 * 查询所有产品
	 * 
	 * @return
	 */
	public List<Product> selectAll();
}
