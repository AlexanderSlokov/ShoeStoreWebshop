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

import com.ShoeShopProject.model.ProductsModel;
import com.ShoeShopProject.service.iProductsService;
@WebServlet(urlPatterns={"/admin-product-list"})
public class ProductController extends HttpServlet{

	/**
	 * 
	 */
	@Inject 
	private iProductsService productsService;
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException 
	{
		/*ProductsModel pro=new ProductsModel();
		pro.setManufacturer("abc");
		pro.setCatalogId(2000);
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		pro.setCreated(timestamp);
		pro.setMadeIn("VN");
		pro.setDesciption("cc");
		pro.setDiscount(0);
		pro.setGender("MALE");
		pro.setPrice(2000);
		pro.setProductName("bcd");
		pro.setProductImage("cc");
		pro.setView(15);
		pro = productsService.Insert(pro);
		System.out.print(pro);*/
		RequestDispatcher rd=request.getRequestDispatcher("/views/admin/product/list.jsp");
		rd.forward(request, response);
	}
	protected void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException, IOException 
	{
		doPost(request, response);
	}
}
