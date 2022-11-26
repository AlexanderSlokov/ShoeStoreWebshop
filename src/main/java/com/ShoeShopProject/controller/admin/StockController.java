package com.ShoeShopProject.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.constant.SystemConstant;
import com.ShoeShopProject.model.ProductModel;
import com.ShoeShopProject.service.iProductService;
import com.ShoeShopProject.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-stock" })
public class StockController extends HttpServlet {
	/**
	 * 
	 */
	@Inject
	private iProductService productService;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductModel model = FormUtil.toModel(ProductModel.class, request);
		String view = "";
		if (model.getType().equals(SystemConstant.INSERT)) {

			view = "/views/admin/stock/insert.jsp";

		} 
		else if (model.getType().equals(SystemConstant.EDIT)) {
			if (model.getProductId() != null) {
				if (request.getParameter("amount") != null) {
					productService.update(Integer.parseInt(request.getParameter("amount")), model.getProductsId());
				}
				else {
					System.out.print("null");
				}
			}
			view = "/views/admin/product/stock.jsp";
		}
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductModel model = FormUtil.toModel(ProductModel.class, request);
		String message = "";
		String alert = "";
		String view = "";
		if (model.getType().equals(SystemConstant.INSERT)) {
			if (model.getProductsId() != null) {
				if (request.getParameter("size") != null) {
					model.setSize(Integer.parseInt(request.getParameter("size")));
				}
				if (request.getParameter("qty") != null) {
					model.setQty(Integer.parseInt(request.getParameter("qty")));
				}
				productService.Insert(model);
				message = "Successfully";
				alert = "success";
			} else {
				System.out.print("null");
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}
	
}
