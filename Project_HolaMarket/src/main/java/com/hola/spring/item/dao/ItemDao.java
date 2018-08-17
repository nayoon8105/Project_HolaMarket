package com.hola.spring.item.dao;

import java.util.List;

import com.hola.spring.item.dto.ItemDto;

public interface ItemDao {
	public void insert(ItemDto dto);
	public List<ItemDto> getList();
	public ItemDto getData(int num);
}
