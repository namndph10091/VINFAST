package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo.Dao.ProductDAO;
import com.example.demo.entity.Product;



@Service
public class ProductServiceIpml implements ProductService {
	@Autowired
	ProductDAO dao;

	@Override
	public Product save(Product entity) {
		return dao.save(entity);
	}

	@Override
	public <S extends Product> Optional<S> findOne(Example<S> example) {
		return dao.findOne(example);
	}

	@Override
	public Page<Product> findAll(Pageable pageable) {
		return dao.findAll(pageable);
	}

	@Override
	public List<Product> findAll() {
		return dao.findAll();
	}

	@Override
	public List<Product> findAll(Sort sort) {
		return dao.findAll(sort);
	}

	@Override
	public List<Product> findAllById(Iterable<Integer> ids) {
		return dao.findAllById(ids);
	}

	@Override
	public Optional<Product> findById(Integer id) {
		return dao.findById(id);
	}

	@Override
	public <S extends Product> List<S> saveAll(Iterable<S> entities) {
		return dao.saveAll(entities);
	}

	@Override
	public void flush() {
		dao.flush();
	}

	@Override
	public <S extends Product> S saveAndFlush(S entity) {
		return dao.saveAndFlush(entity);
	}

	@Override
	public boolean existsById(Integer id) {
		return dao.existsById(id);
	}

	@Override
	public <S extends Product> List<S> saveAllAndFlush(Iterable<S> entities) {
		return dao.saveAllAndFlush(entities);
	}

	@Override
	public <S extends Product> Page<S> findAll(Example<S> example, Pageable pageable) {
		return dao.findAll(example, pageable);
	}

	@Override
	@SuppressWarnings("deprecation")
	public void deleteInBatch(Iterable<Product> entities) {
		dao.deleteInBatch(entities);
	}

	@Override
	public <S extends Product> long count(Example<S> example) {
		return dao.count(example);
	}

	@Override
	public <S extends Product> boolean exists(Example<S> example) {
		return dao.exists(example);
	}

	@Override
	public void deleteAllInBatch(Iterable<Product> entities) {
		dao.deleteAllInBatch(entities);
	}

	@Override
	public long count() {
		return dao.count();
	}

	@Override
	public void deleteById(Integer id) {
		dao.deleteById(id);
	}

	@Override
	public void deleteAllByIdInBatch(Iterable<Integer> ids) {
		dao.deleteAllByIdInBatch(ids);
	}

	@Override
	public void delete(Product entity) {
		dao.delete(entity);
	}

	@Override
	public void deleteAllById(Iterable<? extends Integer> ids) {
		dao.deleteAllById(ids);
	}

	@Override
	public void deleteAllInBatch() {
		dao.deleteAllInBatch();
	}

	@Override
	@SuppressWarnings("deprecation")
	public Product getOne(Integer id) {
		return dao.getOne(id);
	}

	@Override
	public void deleteAll(Iterable<? extends Product> entities) {
		dao.deleteAll(entities);
	}

	@Override
	public void deleteAll() {
		dao.deleteAll();
	}

	@Override
	public Product getById(Integer id) {
		return dao.getById(id);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example) {
		return dao.findAll(example);
	}

	@Override
	public <S extends Product> List<S> findAll(Example<S> example, Sort sort) {
		return dao.findAll(example, sort);
	}

	@Override
	public Page<Product> findByCategoryId(String cid, Pageable pageable) {
		return dao.findByCategoryId(cid,pageable);
	}
	@Override
	public Product findByIdproduct(Integer id) {
		Product product= dao.findById(id).get();
		if (product.getId()==id) {
			return product;
		}	
		return null;
	}
}


