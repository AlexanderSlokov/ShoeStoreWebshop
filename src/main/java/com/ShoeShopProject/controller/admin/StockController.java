package com.ShoeShopProject.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.constant.SystemConstant;
import com.ShoeShopProject.model.ProductModel;
import com.ShoeShopProject.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-stock" })
public class StockController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/stock/insert.jsp");
		rd.forward(request, response);			
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		ProductModel model = FormUtil.toModel(ProductModel.class, request);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/stock/stock.jsp");
		rd.forward(request, response);			
	}
}
