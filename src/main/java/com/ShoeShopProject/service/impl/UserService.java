package com.ShoeShopProject.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iUserDAO;
import com.ShoeShopProject.model.UserModel;
import com.ShoeShopProject.service.iUserService;

public class UserService implements iUserService {
	@Inject
	private iUserDAO userDAO;
	@Override
	public Boolean checkPasswork(String user, String pass) {
		List<UserModel> list=new ArrayList<UserModel>();
		list = userDAO.findUserByPass(user, pass);
		if (list.size()>0)
			return true;
		else return false;
	}
	@Override
	public void insertUser(UserModel user) {
		Integer id= userDAO.insertUser(user);
		System.out.print(id);
	}
}
