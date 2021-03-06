package com.example.demo.controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Dao.UserDAO;
import com.example.demo.entity.Users;
import com.example.demo.service.ParamService;
import com.example.demo.service.UserService;
import com.example.demo.utils.UploadUtils;

@Controller
@RequestMapping("/admin/user")
public class UsersController {
	@Autowired
	HttpServletRequest request;
	@Autowired
	ParamService paramService;
	@Autowired
	UserDAO dao;
	@Autowired
	UploadUtils uploadUtils;
	@Autowired
	UserService userService;
	@RequestMapping("/index")
	public String show(Model model, @RequestParam("p") Optional<Integer> p) {
		Users item= new Users();
		model.addAttribute("item",item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Users> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		request.setAttribute("view", "/views/admin/users/users.jsp");
		return "/layout";
	}
	@RequestMapping("/create")
	public String create(@ModelAttribute("item") @Validated Users item, Errors error,
			Model model, @RequestParam("image") MultipartFile photo) {
			if (error.hasErrors()) {
				return "redirect:/admin/user/index";
			}
			String filename= photo.getOriginalFilename();
			uploadUtils.uploadUser(filename, photo);
			System.out.println(filename);
			item.setPhoto(filename);
			dao.save(item);
			return "redirect:/admin/user/index";
	}
	@RequestMapping("/update")
	public String update(Users item,Model model , @RequestParam("image") MultipartFile photo) {
		String filename= photo.getOriginalFilename();
		uploadUtils.uploadUser(filename, photo);
		System.out.println(filename);
		item.setPhoto(filename);
		dao.save(item);
		return "redirect:/admin/user/index";
	}
	@RequestMapping("/edit/{username}")
	public String edit(Model model, @PathVariable("username") String username,@RequestParam("p") Optional<Integer> p) {
		Users item= dao.findById(username).get();
		model.addAttribute("item",item);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Users> page = dao.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("view", "/views/admin/users/users.jsp");
		return "/layout";
	}
}
