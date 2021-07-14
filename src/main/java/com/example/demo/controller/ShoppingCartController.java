package com.example.demo.controller;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Dao.ProductDAO;
import com.example.demo.entity.Order;
import com.example.demo.entity.OrderDetail;
import com.example.demo.entity.Product;
import com.example.demo.entity.Users;
import com.example.demo.model.CartItem;
import com.example.demo.service.OrderDetailService;
import com.example.demo.service.OrderService;
import com.example.demo.service.ProductService;
import com.example.demo.service.SessionService;
import com.example.demo.service.ShoppingCartService;

@Controller
@RequestMapping("/shopping-cart")
public class ShoppingCartController {
	@Autowired
	ProductService productService;
	@Autowired
	ShoppingCartService cartService;
	@Autowired
	SessionService session;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailService orderdetailSevice;
	@RequestMapping("/index")
	public String viewsCart(Model model) {
		Collection<CartItem> cartItems= cartService.getItems();
		model.addAttribute("cart",cartItems);
		model.addAttribute("total",cartService.getAmount());
		model.addAttribute("view","/views/user/cart.jsp");
		return "/home";
	}
	@RequestMapping("/add/{id}")
	public String addCart(Model model , @PathVariable("id") Integer id) {
		
		Product product = productService.findByIdproduct(id);
		if (product!=null) {
			CartItem cartItem= new CartItem();
			cartItem.setProductid(product.getId());
			cartItem.setName(product.getName());
			cartItem.setPrice(product.getPrice());
			cartService.add(cartItem);
		}
		return "redirect:/shopping-cart/index";
	}
	@GetMapping("/clear")
	public String clearCart() {
		cartService.clear();
		return "redirect:/shopping-cart/index";
	}
	@RequestMapping("/update/{id}")
	public String update(@RequestParam("id") Integer id, @RequestParam("qty") Integer qty) {
		cartService.update(id, qty);
		return "redirect:/shopping-cart/index";
	}
	@RequestMapping("/delede/{id}")
	public String delete(@PathVariable("id") Integer id) {
		cartService.remove(id);
		return "redirect:/shopping-cart/index";
	}
	@RequestMapping("/order")
	public String order( Model model ,@RequestParam("address") String address) {
		Users user= session.get("user");
		user.getFullname();
		Order order = new Order();
		order.setUsers(user);
		order.setAddress(address);
		order.setStatus(1);
		orderService.save(order);
		System.out.println(address);
		///
		if (cartService.getItems()==null) {
			return "redirect:/shopping-cart/index";
		}
		for(CartItem x: cartService.getItems()) {
			OrderDetail orderdetail= new OrderDetail();
			orderdetail.setProduct(productService.getOne(x.getProductid()));
			orderdetail.setPrice(x.getPrice());
			orderdetail.setQuantity(x.getQty());
			orderdetail.setOrder(order);
			orderdetailSevice.save(orderdetail);
		}
		cartService.clear();
		return "redirect:/shopping-cart/order/index";
	}
	@RequestMapping("/order/index")
	public String orderndex(Model model) {
		Users user= session.get("user");
		String name= user.getUsername();
		List<Order> order= orderService.findByUsername(name);
		model.addAttribute("order",order);
		model.addAttribute("name",name);
		model.addAttribute("view","/views/user/order.jsp");
		return "/home";
	}
	@RequestMapping("/order/show/{id}")
	public String show(Model model, @PathVariable("id") long id) {
		List<OrderDetail> detail= orderdetailSevice.findByOrderId(id);
		model.addAttribute("detail",detail);
		model.addAttribute("view","/views/user/order-view.jsp");
		return "/home";
	}
	@RequestMapping("/order/pay/{id}")
	public String pay(@PathVariable("id") long id) {
		@SuppressWarnings("deprecation")
		Order order= orderService.getOne(id);
		order.setStatus(3);
		orderService.save(order);
		return "redirect:/shopping-cart/order/index";
	}
}
