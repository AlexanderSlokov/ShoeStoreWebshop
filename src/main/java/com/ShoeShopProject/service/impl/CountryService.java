package com.ShoeShopProject.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.ShoeShopProject.dao.iCountryDAO;
import com.ShoeShopProject.model.CountryModel;
import com.ShoeShopProject.service.iCountryService;

public class CountryService implements iCountryService{
	
	@Inject
	private iCountryDAO countryDAO;
	
	@Override
	public List<CountryModel> findAll() {
		return countryDAO.findAll();
	}

	@Override
	public CountryModel insert(CountryModel country) {
		Integer code=countryDAO.insert(country);
		System.out.print(code);
		return null;
	}

	@Override
	public void update(CountryModel country) {
		
	}

}
