package com.ShoeShopProject.service.impl;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iUserDAO;
import com.ShoeShopProject.model.UserModel;
import com.ShoeShopProject.service.iUserService;

public class UserService implements iUserService {
	@Inject
	private iUserDAO userDAO;
	@Override
	public UserModel findUserByPass(String user, String pass) {
		return userDAO.findUserByPass(user, pass);
	}
	@Override
	public void insertUser(UserModel user) {
		Integer id= userDAO.insertUser(user);
		System.out.print(id);
	}
}
