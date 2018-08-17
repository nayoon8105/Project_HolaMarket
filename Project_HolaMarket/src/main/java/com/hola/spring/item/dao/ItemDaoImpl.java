package com.hola.spring.item.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hola.spring.item.dto.ItemDto;

@Repository
public class ItemDaoImpl implements ItemDao{

	@Override
	public void insert(ItemDto dto) {
	}

	@Override
	public List<ItemDto> getList() {
		
		return null;
	}

	@Override
	public ItemDto getData(int num) {
		
		return null;
	}

}
