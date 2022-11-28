package com.ShoeShopProject.dao.impl;

import java.util.List;

import com.ShoeShopProject.dao.iOrdersDAO;
import com.ShoeShopProject.mapper.OrdersMapper;
import com.ShoeShopProject.model.OrdersModel;

public class OrdersDAO extends AbstractDAO<OrdersModel> implements iOrdersDAO {

	@Override
	public List<OrdersModel> findOrderByUserId(Integer id) {
		String sql="Select * from orders where user_id=?";
		return query(sql, new OrdersMapper(), id);
	}

	@Override
	public OrdersModel findOne(Integer id) {
		String sql="Select * from orders where id=?";
		List<OrdersModel>orders= query(sql, new OrdersMapper(), id);
		return orders.isEmpty()? null: orders.get(0);
	}

	@Override
	public Integer insert(OrdersModel orders) {
		String sql="insert into orders(iduser, product_id, qty, note, status) "
				+ "values(?, ?, ?, null, 0)" ;
		
		return insert(sql, orders.getUserId(), orders.getProductId(), orders.getQty());				
	}

	@Override
	public void update(OrdersModel orders) {
		String sql = "update orders set qty=?, status=? where id=?";
		update(sql, orders.getQty(), orders.getStatus(), orders.getOrderId());
		
	}

	@Override
	public void delete(Integer id) {
		String sql="delete from orders where id=?";
		update(sql, id);
		
	}

	@Override
	public List<OrdersModel> findAll() {
		String sql="select * from orders";
		return query(sql, new OrdersMapper());
	}

	
		
}
