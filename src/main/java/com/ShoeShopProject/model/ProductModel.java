package com.ShoeShopProject.model;

public class ProductModel {
	private Integer productId;
	private String productsId;
	private Integer size;
	private Integer qty;
	
	public String getProductsId() {
		return productsId;
	}
	public void setProductsId(String productsId) {
		this.productsId = productsId;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
}
