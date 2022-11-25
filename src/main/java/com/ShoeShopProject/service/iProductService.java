package com.ShoeShopProject.service;

import java.util.List;

import com.ShoeShopProject.model.ProductModel;

public interface iProductService {
	List<ProductModel> findProductByProductsId(Integer id);
}
