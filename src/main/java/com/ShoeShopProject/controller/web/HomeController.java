package com.ShoeShopProject.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ShoeShopProject.service.iProductsService;
@WebServlet(urlPatterns={"/views/web/home"})
public class HomeController extends HttpServlet{

	/**
	 * 
	 */
	@Inject 
	private iProductsService productsService;
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{   
		//ProductsModel pro=new ProductsModel();
		request.setAttribute("sp1", productsService.findProductById(1));
		request.setAttribute("sp2", productsService.findProductById(2));
		request.setAttribute("sp3", productsService.findProductById(3));
		request.setAttribute("sp4", productsService.findProductById(4));
		request.setAttribute("sp5", productsService.findProductById(5));
		request.setAttribute("sp6", productsService.findProductById(6));
		request.setAttribute("sp7", productsService.findProductById(7));
		request.setAttribute("sp8", productsService.findProductById(8));
		RequestDispatcher rd=request.getRequestDispatcher("/views/web/index.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		
	}
	
}
