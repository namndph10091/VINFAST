package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import com.example.demo.entity.OrderDetail;
import com.example.demo.entity.Report;

public interface OrderDetailService {

	/**
	 * @param <S>
	 * @param example
	 * @param sort
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Example, org.springframework.data.domain.Sort)
	 */
	<S extends OrderDetail> List<S> findAll(Example<S> example, Sort sort);

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Example)
	 */
	<S extends OrderDetail> List<S> findAll(Example<S> example);

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#getById(java.lang.Object)
	 */
	OrderDetail getById(Long id);

	/**
	 * 
	 * @see org.springframework.data.repository.CrudRepository#deleteAll()
	 */
	void deleteAll();

	/**
	 * @param entities
	 * @see org.springframework.data.repository.CrudRepository#deleteAll(java.lang.Iterable)
	 */
	void deleteAll(Iterable<? extends OrderDetail> entities);

	/**
	 * @param id
	 * @return
	 * @deprecated
	 * @see org.springframework.data.jpa.repository.JpaRepository#getOne(java.lang.Object)
	 */
	OrderDetail getOne(Long id);

	/**
	 * 
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllInBatch()
	 */
	void deleteAllInBatch();

	/**
	 * @param ids
	 * @see org.springframework.data.repository.CrudRepository#deleteAllById(java.lang.Iterable)
	 */
	void deleteAllById(Iterable<? extends Long> ids);

	/**
	 * @param entity
	 * @see org.springframework.data.repository.CrudRepository#delete(java.lang.Object)
	 */
	void delete(OrderDetail entity);

	/**
	 * @param ids
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllByIdInBatch(java.lang.Iterable)
	 */
	void deleteAllByIdInBatch(Iterable<Long> ids);

	/**
	 * @param id
	 * @see org.springframework.data.repository.CrudRepository#deleteById(java.lang.Object)
	 */
	void deleteById(Long id);

	/**
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#count()
	 */
	long count();

	/**
	 * @param entities
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteAllInBatch(java.lang.Iterable)
	 */
	void deleteAllInBatch(Iterable<OrderDetail> entities);

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#exists(org.springframework.data.domain.Example)
	 */
	<S extends OrderDetail> boolean exists(Example<S> example);

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#count(org.springframework.data.domain.Example)
	 */
	<S extends OrderDetail> long count(Example<S> example);

	/**
	 * @param entities
	 * @deprecated
	 * @see org.springframework.data.jpa.repository.JpaRepository#deleteInBatch(java.lang.Iterable)
	 */
	void deleteInBatch(Iterable<OrderDetail> entities);

	/**
	 * @param <S>
	 * @param example
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#findAll(org.springframework.data.domain.Example, org.springframework.data.domain.Pageable)
	 */
	<S extends OrderDetail> Page<S> findAll(Example<S> example, Pageable pageable);

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAllAndFlush(java.lang.Iterable)
	 */
	<S extends OrderDetail> List<S> saveAllAndFlush(Iterable<S> entities);

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#existsById(java.lang.Object)
	 */
	boolean existsById(Long id);

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAndFlush(java.lang.Object)
	 */
	<S extends OrderDetail> S saveAndFlush(S entity);

	/**
	 * 
	 * @see org.springframework.data.jpa.repository.JpaRepository#flush()
	 */
	void flush();

	/**
	 * @param <S>
	 * @param entities
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#saveAll(java.lang.Iterable)
	 */
	<S extends OrderDetail> List<S> saveAll(Iterable<S> entities);

	/**
	 * @param id
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#findById(java.lang.Object)
	 */
	Optional<OrderDetail> findById(Long id);

	/**
	 * @param ids
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAllById(java.lang.Iterable)
	 */
	List<OrderDetail> findAllById(Iterable<Long> ids);

	/**
	 * @param sort
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll(org.springframework.data.domain.Sort)
	 */
	List<OrderDetail> findAll(Sort sort);

	/**
	 * @return
	 * @see org.springframework.data.jpa.repository.JpaRepository#findAll()
	 */
	List<OrderDetail> findAll();

	/**
	 * @param pageable
	 * @return
	 * @see org.springframework.data.repository.PagingAndSortingRepository#findAll(org.springframework.data.domain.Pageable)
	 */
	Page<OrderDetail> findAll(Pageable pageable);

	/**
	 * @param <S>
	 * @param example
	 * @return
	 * @see org.springframework.data.repository.query.QueryByExampleExecutor#findOne(org.springframework.data.domain.Example)
	 */
	<S extends OrderDetail> Optional<S> findOne(Example<S> example);

	/**
	 * @param <S>
	 * @param entity
	 * @return
	 * @see org.springframework.data.repository.CrudRepository#save(java.lang.Object)
	 */
	OrderDetail save(OrderDetail entity);

	List<OrderDetail> findByOrderId(long id);

	List<Report> revenueCategory();
	
	

}
