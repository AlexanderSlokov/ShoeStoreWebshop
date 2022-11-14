package com.ShoeShopProject.dao.impl;

import java.util.List;

import com.ShoeShopProject.dao.iOrdersDAO;
import com.ShoeShopProject.model.OrdersModel;

public class OrdersDAO extends AbstractDAO<OrdersModel> implements iOrdersDAO {

	@Override
	public List<OrdersModel> findOrderByUserId(Integer id) {
		String sql="Select * from orders where user_id=?";
		return query()
	}
		
}
