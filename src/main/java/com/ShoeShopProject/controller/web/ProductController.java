package com.ShoeShopProject.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.constant.SystemConstant;
import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.paging.PageRequest;
import com.ShoeShopProject.paging.Pageble;
import com.ShoeShopProject.service.iProductsService;
import com.ShoeShopProject.sort.Sorter;
import com.ShoeShopProject.utils.FormUtil;
@WebServlet(urlPatterns = { "/product" })
public class ProductController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Inject
	private iProductsService productsService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			ProductsModel model = FormUtil.toModel(ProductsModel.class, request);
			model=productsService.findOne(model.getProductId());
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/product.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
