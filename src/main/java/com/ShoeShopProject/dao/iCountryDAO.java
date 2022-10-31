package com.ShoeShopProject.dao;

import java.util.List;
import com.ShoeShopProject.dao.iCountryDAO;
import com.ShoeShopProject.model.CountryModel;

public interface iCountryDAO extends GenericDAO<CountryModel> {
	List<CountryModel> findAll(); //get all countries
	List<CountryModel> findCountryById(Integer code); 
	Integer insert(CountryModel country);
	
}
