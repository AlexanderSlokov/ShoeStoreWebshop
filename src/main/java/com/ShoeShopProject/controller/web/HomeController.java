package com.ShoeShopProject.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ShoeShopProject.model.UserModel;
import com.ShoeShopProject.service.iProductsService;
import com.ShoeShopProject.service.iUserService;
import com.ShoeShopProject.utils.SessionUtil;

@WebServlet(urlPatterns={"/home", "/login"})
public class HomeController extends HttpServlet{

	/**
	 * 
	 */
	@Inject 
	private iProductsService productsService;
	@Inject
	private iUserService userService;
	private static final long serialVersionUID = 1L;
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	protected void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{   
		String action=request.getParameter("action");
		if (action!=null && action.equals("login"))
		{	String message=request.getParameter("message");
			String alert=request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd=request.getRequestDispatcher("/views/web/login.jsp");
			rd.forward(request, response);
		}
		else if (action !=null && action.equals("logout"))
		{
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath()+"/home");
		}
		else {
			//request.setAttribute("sp1",productsService.findProductById(1));
			RequestDispatcher rd=request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			UserModel model = new UserModel();
			String username=request.getParameter("uname");
			String pass=request.getParameter("pass");
			model = userService.findUserByPass(username, pass);
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if (model.getRole().equals(0)) {
					response.sendRedirect(request.getContextPath()+"/home");
				} else if (model.getRole().equals(1)) {
					response.sendRedirect(request.getContextPath()+"/admin-home");
				}
			} else { 
				response.sendRedirect(request.getContextPath()+"/login?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}
	
}
