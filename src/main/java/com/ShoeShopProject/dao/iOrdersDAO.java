package com.ShoeShopProject.dao;

import java.util.List;

import com.ShoeShopProject.model.OrdersModel;

public interface iOrdersDAO extends GenericDAO<OrdersModel> {
	List<OrdersModel> findOrderByUserId(Integer id);
}
