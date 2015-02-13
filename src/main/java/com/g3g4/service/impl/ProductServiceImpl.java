package com.g3g4.service.impl;

import java.util.List;
import javax.annotation.Resource;
import com.g3g4.util.Page;
import com.g3g4.dao.IProductDAO;
import com.g3g4.model.Product;
import com.g3g4.service.IProductService;

/**
 * 产品 业务接口 IProductService 实现类
 * 
 * @author cg
 *
 * @date 2015-02-13
 */
public class ProductServiceImpl implements IProductService {

	@Resource
	private IProductDAO productDAO;

	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#addSave(com.g3g4.model.Product)
	 */
	public int addSave(Product product) {
		return productDAO.addSaveProduct(product);
	}
	
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#deleteByIds(java.lang.String)
	 */
	public int deleteByIds(String str) {
		return productDAO.deleteByIds(str);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#editSave(com.g3g4.model.Product)
	 */
	public int editSave(Product product) {
		return productDAO.editSaveProduct(product);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.IProductService#selectAll()
	 */
	public List<Product> selectAll() {
		return productDAO.selectAll();
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#selectProduct(com.g3g4.model.Product, int)
	 */
	public Page selectProduct(Product product, int pageSize) {
		return new Page(productDAO.getProductCount(product), pageSize);
	}
	
	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#selectProduct(com.g3g4.model.Product, com.g3g4.controller.helper.Page)
	 */
	public List<Product> selectProduct(Product product, Page page) {
		product.setStart(page.getFirstItemPos());
		product.setPageSize(page.getPageSize());
		return productDAO.selectProductLike(product);
	}

	/* (non-Javadoc)
	 * @see com.g3g4.service.IProductService#selectProductById(com.g3g4.model.Product)
	 */
	public Product selectProductById(Product product) {
		return productDAO.selectProductById(product);
	}
}
