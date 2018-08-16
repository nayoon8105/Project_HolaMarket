package com.hola.spring.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@RequestMapping("/product/sellingItems_form.do")
	public String sellingItemsForn() {
		return "product/sellingItems_form";
	}
}
