package com.bitwise.onlineShopping;

import java.io.Serializable;

public class Item implements Serializable{
	
	String[] items;
	String itemToDelete;
	
	public Item(){} 
	
	public Item(String []items,String itemToDelete) {
		super();
		this.items = items;
		this.itemToDelete  = itemToDelete;
	}

	public String[] getItems() {
		return items;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	public String getItemToDelete() {
		return itemToDelete;
	}

	public void setItemToDelete(String itemToDelete) {
		this.itemToDelete = itemToDelete;
	}
	
}
