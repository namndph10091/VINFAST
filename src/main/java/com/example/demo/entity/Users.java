package com.example.demo.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity @Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Users implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@NotNull(message = "Không được để trống username")
	String username;
	@NotNull(message = "Không được để trống password")
	String password;
	@NotNull(message = "Không được để trống fullname")
	String fullname;
	@NotNull(message = "Không được để trống Email")
	@Email(message = "Sai định đạng Email")
	String email;
	@NotNull(message = "Không được để trống ảnh")
	String photo;
	boolean activated;
	boolean admin;
	@OneToMany(mappedBy="users")
	List<Order> order;
	
}
