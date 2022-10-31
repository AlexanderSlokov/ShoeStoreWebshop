package com.ShoeShopProject.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.service.iProductsService;
import com.ShoeShopProject.utils.HttpUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
@WebServlet(urlPatterns={"/api-admin-product"})
public class ProductAPI extends HttpServlet{

	/**
	 * 
	 */
	@Inject
	private iProductsService productsService;
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{	
		ObjectMapper mapper=new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductsModel productsModel= HttpUtils.of(request.getReader()).toModel(ProductsModel.class);
		productsModel=productsService.Insert(productsModel);
		mapper.writeValue(response.getOutputStream(), productsModel);
	}
	
	/*protected void doPut(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{	
		
	}
	
	protected void doDelete(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{	
		
	}*/
	protected void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request,response);
	}
}
