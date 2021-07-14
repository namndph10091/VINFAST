package com.example.demo.entity;



import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Data
@Table (name = "categories")
@NoArgsConstructor
@AllArgsConstructor
public class Category implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	String id;
	String name;
	@OneToMany(mappedBy = "category")
	List<Product> products;

}
