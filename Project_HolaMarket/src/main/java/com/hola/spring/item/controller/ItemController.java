package com.hola.spring.item.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hola.spring.item.service.ItemService;

@Controller
public class ItemController {
	@Autowired
	private ItemService service;
	
	@RequestMapping("/item/sellingItems_form.do")
	public String sellingItemsForm() {
		return "item/sellingItems_form";
	}
	
	@RequestMapping("/product/sellingItems.do")
	public String sellingItems() {
		return null;
		
	}
}
