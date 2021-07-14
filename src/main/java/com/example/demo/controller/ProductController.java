package com.example.demo.controller;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Dao.CategoryDAO;
import com.example.demo.Dao.ProductDAO;
import com.example.demo.entity.Category;
import com.example.demo.entity.Product;
import com.example.demo.service.ProductService;
import com.example.demo.utils.UploadUtils;


@Controller
@RequestMapping("/admin/product")
public class ProductController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	ProductDAO dao;
	@Autowired
	CategoryDAO category;
	@Autowired
	ServletContext app;
	@Autowired
	ProductService productService;
	@Autowired
	UploadUtils uploadUtils;
	@RequestMapping("/index")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) 
	{
		Category cate= new Category();
		model.addAttribute("cate",cate);
		List<Category> cates= category.findAll();
		model.addAttribute("cates",cates);
		//
		Product item= new Product();
		model.addAttribute("item",item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		productService.findAll(pageable);
		Page<Product> page = productService.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("view","/views/admin/product/product.jsp");
		return "/layout";
	}
	@RequestMapping("/create")
	public String create(Product item,@RequestParam("image") MultipartFile multipartFile, @RequestParam("categoryid") String categoryid) 
			throws IllegalStateException,IOException
	{
			Category category= new Category();
			String filename= multipartFile.getOriginalFilename();
			uploadUtils.uploadProduct(filename, multipartFile);
			category.setId(categoryid);
			item.setId(1);
			item.setCategory(category);
			item.setImages(filename);
			productService.save(item);
			return "redirect:/admin/product/index";
	}
	@RequestMapping("/update")
	public String update(Product item,@RequestParam("image") MultipartFile multipartFile,
			@RequestParam("id") Integer id,
			@RequestParam("categoryid") String categoryid) {
		Category category= new Category();
		String filename= multipartFile.getOriginalFilename();
		uploadUtils.uploadProduct(filename, multipartFile);
		category.setId(categoryid);
		item.setId(id);
		item.setCategory(category);
		item.setImages(filename);
		productService.save(item);
		return "redirect:/admin/product/edit/" +item.getId();
	}
	@RequestMapping("/edit/{id}")
	public String edit(Model model, @PathVariable("id") int id,@RequestParam("p") Optional<Integer> p) {
		Category cate= new Category();
		model.addAttribute("cate",cate);
		List<Category> cates= category.findAll();
		model.addAttribute("cates",cates);
		//
		
		Product item= productService.findById(id).get();
		model.addAttribute("item",item);
		
		Pageable pageable = PageRequest.of(p.orElse(0), 10);
		Page<Product> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("view", "/views/admin/product/product.jsp");
		return "/layout";
	}
	public List<Category> category() {
		List<Category> items= category.findAll();
		return items;
	}
	
}
