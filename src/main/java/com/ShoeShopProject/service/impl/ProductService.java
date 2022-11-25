package com.ShoeShopProject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iProductDAO;
import com.ShoeShopProject.model.ProductModel;
import com.ShoeShopProject.service.iProductService;

public class ProductService implements iProductService {
	@Inject
	private iProductDAO productDAO;

	@Override
	public List<ProductModel> findProductByProductsId(Integer id) {
		
		return productDAO.findProductByProductsId(id);
	}
	

}
