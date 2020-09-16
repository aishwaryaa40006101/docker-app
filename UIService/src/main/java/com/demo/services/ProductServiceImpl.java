package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Product;
import com.demo.repositories.ProductRepository;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Product save(Product product) {
		// TODO Auto-generated method stub
		
		return productRepository.save(product);
	}
	
	

}
