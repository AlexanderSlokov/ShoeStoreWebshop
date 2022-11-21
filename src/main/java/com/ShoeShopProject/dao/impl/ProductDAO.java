package com.ShoeShopProject.dao.impl;

import com.ShoeShopProject.dao.iProductDAO;
import com.ShoeShopProject.model.ProductModel;

public class ProductDAO  extends AbstractDAO<ProductModel> implements iProductDAO{

	@Override
	public Integer countItemEachProduct(Integer id) {
		String sql= "Select sum(qty) as SL from product where idProducts=? "
				+ "group by idProducts";
		return count(sql, id);
		}

}
