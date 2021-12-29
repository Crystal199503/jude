package com.jude.repository;

import com.jude.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 客户Repository接口
 *
 *
 */
public interface CustomerRepository extends JpaRepository<Customer, Integer>, JpaSpecificationExecutor<Customer> {

	/**
	 * 根据名称模糊查询客户信息
	 * @param name
	 * @return
	 */
	@Query(value="select * from t_customer where name like ?1 order by create_time desc",nativeQuery=true)
	public List<Customer> findByName(String name);
}
