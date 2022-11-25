package com.ShoeShopProject.controller.admin.api;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.service.iProductsService;
import com.ShoeShopProject.utils.HttpUtil;
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
		ProductsModel productsModel= HttpUtil.of(request.getReader()).toModel(ProductsModel.class);
		productsModel=productsService.Insert(productsModel);
		mapper.writeValue(response.getOutputStream(), productsModel);
	}
	
	
	protected void doPut(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{	
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductsModel updateProduct= HttpUtil.of(request.getReader()).toModel(ProductsModel.class);
		updateProduct = productsService.update(updateProduct);
		mapper.writeValue(response.getOutputStream(), updateProduct);
}
	
	protected void doDelete(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{	
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductsModel productModel =  HttpUtil.of(request.getReader()).toModel(ProductsModel.class);
		productsService.delete(productModel.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}
	protected void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request,response);
	}
}
