package com.hola.spring.item.dto;

public class ItemDto {
	private int num; // 상품 번호
	private String img; // 상품 이미지
	private String title; // 상품 이름
	private String contents; // 상품 설명
	private String category; // 상품 카테고리
	private String lowcategory; // 상품 하위 카테고리
	private String address; // 상품 판매 장소
	private String regdate; // 상품 등록일
	
	public ItemDto() {}

	public ItemDto(int num, String img, String title, String contents, String category, String lowcategory,
			String address, String regdate) {
		super();
		this.num = num;
		this.img = img;
		this.title = title;
		this.contents = contents;
		this.category = category;
		this.lowcategory = lowcategory;
		this.address = address;
		this.regdate = regdate;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLowcategory() {
		return lowcategory;
	}

	public void setLowcategory(String lowcategory) {
		this.lowcategory = lowcategory;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
}
