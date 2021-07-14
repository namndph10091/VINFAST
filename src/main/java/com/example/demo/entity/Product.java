package com.example.demo.entity;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity @Table(name = "products")
@NoArgsConstructor
@AllArgsConstructor
public class Product implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull
	Integer id;
	@NotNull
	String name;
	String images;
	@NotNull
	@Min(0)
	Double price;
	@Temporal(TemporalType.DATE)
	Date createDate = new Date();
	Boolean available;
	@ManyToOne @JoinColumn(name = "categoryid")
	Category category;
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;

}
