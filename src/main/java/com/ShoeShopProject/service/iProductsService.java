package com.ShoeShopProject.service;

import java.util.List;

import com.ShoeShopProject.model.ProductsModel;

public interface iProductsService {
	List<ProductsModel> findProductById(Integer id);
	ProductsModel Insert(ProductsModel product);
	ProductsModel update(ProductsModel product);
	void delete(Integer[] ids);
}
