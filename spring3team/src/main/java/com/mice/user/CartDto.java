package com.mice.user;

public class CartDto {
	
    private String cart_id;
    private String user_id;
    private String product_id;
    private String amount;
    
	public String getCart_id() {
		return cart_id;
	}
	public void setCart_id(String cart_id) {
		this.cart_id = cart_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
}