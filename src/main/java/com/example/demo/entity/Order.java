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

import lombok.Data;

@Data
@Entity
@Table(name = "orders")
public class Order implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;
	@Temporal(TemporalType.DATE)
	Date cteateDate = new Date();
	String address;
	Integer status;
	@ManyToOne @JoinColumn(name = "username")
	Users users;
	@OneToMany(mappedBy = "order")
	List<OrderDetail> orderDetails;
}
