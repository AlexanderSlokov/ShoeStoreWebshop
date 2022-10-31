package com.ShoeShopProject.dao.impl;


import java.util.List;

import com.ShoeShopProject.dao.iCountryDAO;
import com.ShoeShopProject.mapper.CountryMapper;
import com.ShoeShopProject.model.CountryModel;

public class CountryDAO extends AbstractDAO<CountryModel> implements iCountryDAO {


	public List<CountryModel> findAll() {
		String sql = "Select * from country";
		return query(sql, new CountryMapper());
	}

	@Override
	public List<CountryModel> findCountryById(Integer code) {
			String sql = "Select * from country where code=?";
			return query(sql,new CountryMapper(), code);	
	}

	@Override
	public Integer insert(CountryModel country) {
		String sql="Insert into country(code, name) values (?,?)";
;		return insert(sql,country.getCode(),country.getCountryName());
	}

}
