package com.ShoeShopProject.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iProductsDAO;
import com.ShoeShopProject.model.ProductModel;
import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.paging.Pageble;
import com.ShoeShopProject.service.iProductsService;

public class ProductsService implements iProductsService{
	@Inject
	private iProductsDAO productsDAO;
	
	@Override
	public List<ProductsModel> findProductById(Integer id) {
		return productsDAO.findProductById(id);
	}

	@Override
	public ProductsModel Insert(ProductsModel product) {
		product.setCreated(new Timestamp(System.currentTimeMillis()));
		Integer productId=productsDAO.insert(product);
		return productsDAO.findOne(productId);
	}

	@Override
	public ProductsModel update(ProductsModel product) {
		ProductsModel oldproduct=new ProductsModel();
		product.setCreated(oldproduct.getCreated());
		productsDAO.update(product);
		return productsDAO.findOne(product.getProductId());
	}

	@Override
	public void delete(Integer[] ids) {
		for (Integer id: ids)
		{
			productsDAO.delete(id);
		}
		
	}

	@Override
	public List<ProductsModel> findAll(Pageble pageble) {
		return productsDAO.findAll(pageble);
	}

	@Override
	public Integer getTotalItem() {
		return productsDAO.getTotalItem();
	}

}
