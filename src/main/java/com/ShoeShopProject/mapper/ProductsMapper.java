package com.ShoeShopProject.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ShoeShopProject.model.ProductsModel;

public class ProductsMapper implements  RowMapper<ProductsModel>{

	@Override
	public ProductsModel mapRow(ResultSet rs) {
		try {
		    ProductsModel product = new ProductsModel();
			product.setProductId(rs.getInt("b.idProducts"));
			product.setProductName(rs.getString("b.name"));
			product.setProductImage(rs.getString("b.image_pd"));
			product.setPrice(rs.getInt("b.price"));
			product.setDesciption(rs.getString("b.description"));
			product.setMadeIn(rs.getString("b.madein"));
			product.setCreated(rs.getTimestamp("b.created"));
			product.setManufacturer(rs.getString("b.manufacturer"));
			product.setView(rs.getInt("b.vieww"));
			return product;
			}
			catch (SQLException e)
			{
				return null;
			}
	}
	
}
