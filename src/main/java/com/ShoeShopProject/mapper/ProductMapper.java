package com.ShoeShopProject.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ShoeShopProject.model.ProductModel;
import com.ShoeShopProject.model.ProductsModel;

public class ProductMapper implements  RowMapper<ProductModel> {

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
		    ProductModel product = new ProductModel();
			product.setProductId(rs.getInt("idProduct"));
			return product;
			}
			catch (SQLException e)
			{
				return null;
			}
	}

}
