package com.ShoeShopProject.controller.admin;

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
		String view="";
		if (model.getType().equals(SystemConstant.LIST)) {
			Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(),
					new Sorter(model.getSortName(), model.getSortBy()));
			model.setList(productsService.findAll(pageble));
			model.setTotalItem(productsService.getTotalItem());
			model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
			request.setAttribute(SystemConstant.MODEL, model);
			view="/views/admin/product/list.jsp";
		}
		else if(model.getType().equals(SystemConstant.EDIT)) {
			if (model.getProductId()!=null)
			{	
				model=productsService.findOne(model.getProductId());
			}
			String genders[]=model.getGenders();
			String categories[]=model.getManufacturers();
			String countries[]=model.getCountries();
			request.setAttribute("countries", countries);
			request.setAttribute("manufacturers", categories);
			request.setAttribute("genders", genders);
			view="/views/admin/product/edit.jsp";
		}
		else if(model.getType().equals(SystemConstant.IMPORT)) {
			if (model.getProductId()!=null)
			{	
				model=productsService.findOne(model.getProductId());
				request.setAttribute("itemAmount",productsService.countItemEachProduct(model.getProductId()));
			}
			view="/views/admin/product/stock.jsp";
		}
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
