package com.ShoeShopProject.dao.impl;

import java.util.List;

import com.ShoeShopProject.dao.iProductDAO;
import com.ShoeShopProject.mapper.ProductMapper;
import com.ShoeShopProject.model.ProductModel;

public class ProductDAO  extends AbstractDAO<ProductModel> implements iProductDAO{

	@Override
	public Integer countItemEachProduct(Integer id) {
		String sql= "Select sum(qty) as SL from product where idProducts=? "
				+ "group by idProducts";
		return count(sql, id);
		}

	@Override
	public List<ProductModel> findProductByProductsId(Integer id) {
		String sql= "Select *, count(*) as SL from product where idProducts=?";
		return query(sql, new ProductMapper(), id);
	}

}
