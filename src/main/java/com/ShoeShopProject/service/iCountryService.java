package com.ShoeShopProject.service;

import java.util.List;

import com.ShoeShopProject.model.CountryModel;

public interface iCountryService {
	List<CountryModel> findAll();
	CountryModel insert(CountryModel country);
	void update(CountryModel country);
}
