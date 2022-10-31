package com.ShoeShopProject.dao.impl;

import java.util.List;

import com.ShoeShopProject.dao.iProductsDAO;
import com.ShoeShopProject.mapper.ProductsMapper;
import com.ShoeShopProject.model.ProductsModel;

public class ProductsDAO extends AbstractDAO<ProductsModel> implements iProductsDAO {

	@Override
	public List<ProductsModel> findProductById(Integer id) {
		String sql = "Select * from products where idProducts =?";
		return query(sql,new ProductsMapper(), id);	
	}

	@Override
	public ProductsModel findOne(Integer id) {
		String sql = "Select * from products where idProducts =?";
		List<ProductsModel>products=query(sql,new ProductsMapper(), id);
		return products.isEmpty()? null: products.get(0);	
	}

	@Override
	public Integer insert(ProductsModel product) {
		String sql="Insert into products(manufacturer, vieww, "
				+ "discount, image_pd, created, name, price, catalog_id, madein, description, gender)"
				+ " values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		return insert(sql, product.getManufacturer(), product.getView(), product.getDiscount(),
				product.getProductImage(), product.getCreated(), product.getProductName(), product.getPrice(), product.getCatalogId(),
				product.getMadeIn(), product.getDesciption(), product.getGender());
	}
}
