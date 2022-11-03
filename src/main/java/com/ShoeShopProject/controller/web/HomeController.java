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
		RequestDispatcher rd=request.getRequestDispatcher("/views/web/index.jsp");
		rd.forward(request, response);
		String action=request.getParameter("action");
		if (action!=null && action.equals("login"))
		{
			//RequestDispatcher rd=request.getRequestDispatcher("/views/web/login.jsp");
			//rd.forward(request, response);
		}
		else if (action !=null && action.equals("logout"))
		{
			
		}
		else {
			request.setAttribute("sp1",productsService.findProductById(1));
			//RequestDispatcher rd=request.getRequestDispatcher("/views/web/home.jsp");
			//rd.forward(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		
	}
	
}
