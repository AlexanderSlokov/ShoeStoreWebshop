package com.ShoeShopProject.controller.admin;

import java.io.IOException;
import java.sql.Timestamp;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.constant.SystemConstant;
import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.service.iProductsService;
import com.ShoeShopProject.paging.PageRequest;
import com.ShoeShopProject.paging.Pageble;
import com.ShoeShopProject.sort.Sorter;
import com.ShoeShopProject.utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-product" })
public class ProductController extends HttpServlet {

	/**
	 * 
	 */
	@Inject
	private iProductsService productsService;
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductsModel model = FormUtil.toModel(ProductsModel.class, request);
		if (model.getType().equals(SystemConstant.LIST)) {
			Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
					new Sorter(model.getSortName(), model.getSortBy()));
			model.setList(productsService.findAll(pageble));
			model.setTotalItem(productsService.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
			request.setAttribute(SystemConstant.MODEL, model);
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/product/list.jsp");
			rd.forward(request, response);
		}
		else if(model.getType().equals(SystemConstant.EDIT)) {
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
