package com.ShoeShopProject.service;

import java.util.List;

import com.ShoeShopProject.model.ProductModel;

public interface iProductService {
	List<ProductModel> findProductByProductsId(Integer id);
	ProductModel Insert(ProductModel product);
	void update(Integer amount);
	void delete(Integer[] ids);
}
