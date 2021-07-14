package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.demo.Dao.OrderDAO;
import com.example.demo.entity.Order;


@Service
public class OrderServiceIpml implements OrderService{
	@Autowired
	OrderDAO dao;

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	@Override
	public Order save(Order entity) {
		return dao.save(entity);
	}

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#findOne(org.springframework.data.domain.Example)
	 */
	@Override
	public <S extends Order> Optional<S> findOne(Example<S> example) {
		return dao.findOne(example);
	}

	/**
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Pageable)
	 */
	@Override
	public Page<Order> findAll(Pageable pageable) {
		return dao.findAll(pageable);
	}

	/**
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll()
	 */
	@Override
	public List<Order> findAll() {
		return dao.findAll();
	}

	/**
	 * @param sort
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Sort)
	 */
	@Override
	public List<Order> findAll(Sort sort) {
		return dao.findAll(sort);
	}

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAllById(java.lang.Iterable)
	 */
	@Override
	public List<Order> findAllById(Iterable<Long> ids) {
		return dao.findAllById(ids);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	@Override
	public Optional<Order> findById(Long id) {
		return dao.findById(id);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAll(java.lang.Iterable)
	 */
	@Override
	public <S extends Order> List<S> saveAll(Iterable<S> entities) {
		return dao.saveAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.jpa.repository.JpaRepository#flush()
	 */
	@Override
	public void flush() {
		dao.flush();
	}

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAndFlush(java.lang.Object)
	 */
	@Override
	public <S extends Order> S saveAndFlush(S entity) {
		return dao.saveAndFlush(entity);
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	@Override
	public boolean existsById(Long id) {
		return dao.existsById(id);
	}

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAllAndFlush(java.lang.Iterable)
	 */
	@Override
	public <S extends Order> List<S> saveAllAndFlush(Iterable<S> entities) {
		return dao.saveAllAndFlush(entities);
	}

	/**
	 * @param <S>
	 * @param example
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#findAll(org.springframework.data.domain.Example, org.springframework.data.domain.Pageable)
	 */
	@Override
	public <S extends Order> Page<S> findAll(Example<S> example, Pageable pageable) {
		return dao.findAll(example, pageable);
	}

	/**
	 * @param entities
	 * @deprecated
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteInBatch(java.lang.Iterable)
	 */
	@Override
	public void deleteInBatch(Iterable<Order> entities) {
		dao.deleteInBatch(entities);
	}

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#count(org.springframework.data.domain.Example)
	 */
	@Override
	public <S extends Order> long count(Example<S> example) {
		return dao.count(example);
	}

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#exists(org.springframework.data.domain.Example)
	 */
	@Override
	public <S extends Order> boolean exists(Example<S> example) {
		return dao.exists(example);
	}

	/**
	 * @param entities
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllInBatch(java.lang.Iterable)
	 */
	@Override
	public void deleteAllInBatch(Iterable<Order> entities) {
		dao.deleteAllInBatch(entities);
	}

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	@Override
	public long count() {
		return dao.count();
	}

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	@Override
	public void deleteById(Long id) {
		dao.deleteById(id);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllByIdInBatch(java.lang.Iterable)
	 */
	@Override
	public void deleteAllByIdInBatch(Iterable<Long> ids) {
		dao.deleteAllByIdInBatch(ids);
	}

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	@Override
	public void delete(Order entity) {
		dao.delete(entity);
	}

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	@Override
	public void deleteAllById(Iterable<? extends Long> ids) {
		dao.deleteAllById(ids);
	}

	/**
	 * 
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllInBatch()
	 */
	@Override
	public void deleteAllInBatch() {
		dao.deleteAllInBatch();
	}

	/**
	 * @param id
	 * @return
	 * @deprecated
	 * @see org.springframework.data.jpa.repository.JpaRepository#getOne(java.lang.Object)
	 */
	@Override
	public Order getOne(Long id) {
		return dao.getOne(id);
	}

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	@Override
	public void deleteAll(Iterable<? extends Order> entities) {
		dao.deleteAll(entities);
	}

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	@Override
	public void deleteAll() {
		dao.deleteAll();
	}

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#getById(java.lang.Object)
	 */
	@Override
	public Order getById(Long id) {
		return dao.getById(id);
	}

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Example)
	 */
	@Override
	public <S extends Order> List<S> findAll(Example<S> example) {
		return dao.findAll(example);
	}

	/**
	 * @param <S>
	 * @param example
	 * @param sort
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Example, org.springframework.data.domain.Sort)
	 */
	@Override
	public <S extends Order> List<S> findAll(Example<S> example, Sort sort) {
		return dao.findAll(example, sort);
	}
	@Override
	public List<Order> findByUsername(String username){
		return dao.findByUsername(username);
	}

	
}
