package com.ShoeShopProject.model;

public class OrdersModel {
	private Integer oderId;
	private Integer productId;
	private Integer qty;
	private Integer amount;
	private String note;
	private Integer status;
	public Integer getOderId() {
		return oderId;
	}
	public void setOderId(Integer oderId) {
		this.oderId = oderId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
		this.qty = qty;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
}
