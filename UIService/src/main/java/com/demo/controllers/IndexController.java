package com.demo.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.demo.entities.Product;
import com.demo.repositories.ProductRepository;
import com.demo.services.ProductService;

@Controller
@RequestMapping(value= {"","product"})
public class IndexController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/getAllProducts",method=RequestMethod.GET)
	public List<Product> getAllProducts(){
		List<Product> product=productRepository.findAll();
		return product;
		
		
	}


	@RequestMapping(value="index",method=RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("product",new Product());
		//System.out.print(product);
		
		return "product/index";
	}
	
	/*
	 * @PostMapping(value="/index") public String index(@ModelAttribute("product")
	 * Product product) {
	 * 
	 * productService.save(product); return "redirect:/index";
	 */
	@PostMapping(value="index")
	public String index(@ModelAttribute("product") Product product) {
		
		productService.save(product);
		return "product/index";
	}
}
