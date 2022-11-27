package com.ShoeShopProject.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.model.OrdersModel;
import com.ShoeShopProject.service.iOrdersService;
import com.ShoeShopProject.utils.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet(urlPatterns = { "/api-web-orders" })
public class OrdersAPI extends HttpServlet {

	/**
	 * 
	 */
	@Inject
	private iOrdersService ordersService;
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		OrdersModel ordersModel = HttpUtil.of(request.getReader()).toModel(OrdersModel.class);
		ordersModel = ordersService.insert(ordersModel);
		mapper.writeValue(response.getOutputStream(), ordersModel);
		String message="Add to your cart!";
		String alert="success";
		request.setAttribute("alert",alert);
		request.setAttribute("message",message);
		
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		OrdersModel updateOrder = HttpUtil.of(request.getReader()).toModel(OrdersModel.class);
		updateOrder = ordersService.update(updateOrder);
		mapper.writeValue(response.getOutputStream(), updateOrder);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		OrdersModel ordersModel = HttpUtil.of(request.getReader()).toModel(OrdersModel.class);
		ordersService.delete(ordersModel.getOrderId());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}