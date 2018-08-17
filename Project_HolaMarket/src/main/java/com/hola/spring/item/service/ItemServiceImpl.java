package com.hola.spring.item.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hola.spring.item.dao.ItemDao;

@Service
public class ItemServiceImpl implements ItemService{
	@Autowired
	private ItemDao dao;
}
