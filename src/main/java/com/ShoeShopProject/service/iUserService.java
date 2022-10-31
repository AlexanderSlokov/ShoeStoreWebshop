package com.ShoeShopProject.service;

import com.ShoeShopProject.model.UserModel;

public interface iUserService {
	Boolean checkPasswork(String user, String pass);
	void insertUser(UserModel user);
}
