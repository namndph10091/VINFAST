package com.example.demo.controller;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

public class CheckLoginController {
  @NotBlank(message = "Nhập Username")
 public String user;
 @NotBlank(message = "Nhập Password")
 public String pass;
 
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}
 
 
}
