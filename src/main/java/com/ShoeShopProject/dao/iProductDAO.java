package com.ShoeShopProject.dao;

import java.util.List;

import com.ShoeShopProject.model.ProductModel;

public interface iProductDAO extends GenericDAO<ProductModel> {
	Integer countItemEachProduct(Integer id);
	List<ProductModel> findProductByProductsId(Integer id);
}
