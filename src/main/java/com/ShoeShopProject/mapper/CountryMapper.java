package com.ShoeShopProject.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.ShoeShopProject.model.CountryModel;

public class CountryMapper implements RowMapper<CountryModel>{

	@Override
	public CountryModel mapRow(ResultSet rs) {
		try {
	    CountryModel country = new CountryModel();
		country.setCode(rs.getInt("code"));
		country.setCountryName((rs.getString("name")));
		return country;
		}
		catch (SQLException e)
		{
			return null;
		}
	}

}
