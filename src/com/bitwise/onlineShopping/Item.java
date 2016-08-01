package com.bitwise.onlineShopping;

import java.io.Serializable;

public class Item implements Serializable{
	private String items;
	public Item(){} 
	
	public Item(String items) {
		super();
		this.items = items;

	}

	public String getItems() {
		return items;
	}

	public void setItems(String items) {
		this.items = items;
	}
	
	
}
