package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.example.demo.entity.Users;



public interface UserService {

	void deleteAll();

	void deleteAll(List<Users> entities);

	void deleteAllById(List<String> ids);

	void delete(Users entity);

	void deleteById(String id);

	long count();

	boolean existsById(String id);

	List<Users> saveAll(List<Users> entities);

	Optional<Users> findById(String id);

	List<Users> findAllById(List<String> ids);

	List<Users> findAll(Sort sort);

	List<Users> findAll();

	Page<Users> findAll(Pageable pageable);

	Users save(Users entity);
	
	boolean checkLogin(String username, String password);

	boolean checknull(String username);

	Users findByUsername(String usersname);
}
