package com.ShoeShopProject.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ShoeShopProject.service.iUserService;

@WebServlet(urlPatterns = { "/views/web/login" })
public class LoginController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Inject
	private iUserService userService;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String url = "/views/web/login.jsp";
			String user = request.getParameter("user");
			String pass = request.getParameter("pass");
			if (userService.checkPasswork(user, pass) == true) {
				response.sendRedirect("home");
			} else {
				url = "/views/web/login.jsp";
				request.setAttribute("mess","Wrong user or password");
				RequestDispatcher rd=request.getRequestDispatcher(url);
				rd.forward(request, response);
			}
			
		
	}

	
}
