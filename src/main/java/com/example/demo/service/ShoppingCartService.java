package com.example.demo.service;

import java.util.Collection;

import com.example.demo.model.CartItem;




public interface ShoppingCartService {
	
	void remove(Integer id);
	
	CartItem update(Integer id, int qty);
	
	void clear();
	
	Collection<CartItem> getItems();
	
	int getCount();
	
	double getAmount();

	void add(CartItem item);

}
