package com.example.demo.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Dao.UserDAO;
import com.example.demo.entity.Users;
import com.example.demo.service.ParamService;
import com.example.demo.service.ProductService;
import com.example.demo.utils.UploadUtils;

@Controller
public class upfile {
	@Autowired
	ServletContext app;
	@Autowired
	UploadUtils utils;
	@Autowired
	UserDAO dao;
	@Autowired
	ProductService productService;
	@Autowired
	ParamService param;
	@Autowired
	HttpServletRequest request;
	 @RequestMapping("/upload")
	 public String upload() {
		 	System.out.println(app.getRealPath("/avatar/"));
		 return "upload";
	 }
	 @RequestMapping("/upload/result")
	 public String result(Users user,@RequestParam("avatar") MultipartFile avatar) throws IllegalStateException, IOException {
		 String filename= avatar.getOriginalFilename();
		 	utils.uploadUser(filename, avatar);
		 	user.setFullname("ndn");
			user.setEmail("namndph10091@gmail.com");
			user.setPassword("123");
			user.setPhoto("photo");
			user.setActivated(true);
			user.setAdmin(true);
		 	
		 return "upload";
	 }
	 @RequestMapping("/magiao")
	 public String demo(@RequestParam("diachi") String text){
		 
		 System.out.println(text);
		 return "user/order";
	 }
}
