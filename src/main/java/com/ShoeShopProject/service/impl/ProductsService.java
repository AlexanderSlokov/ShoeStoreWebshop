package com.ShoeShopProject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iProductsDAO;
import com.ShoeShopProject.model.ProductsModel;
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
		Integer productId=productsDAO.insert(product);
		return productsDAO.findOne(productId);
	}

}
