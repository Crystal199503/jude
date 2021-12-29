package com.jude.repository;

import com.jude.entity.DamageListGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 过期单商品Repository接口
 *
 */
public interface DamageListGoodsRepository extends JpaRepository<DamageListGoods, Integer>, JpaSpecificationExecutor<DamageListGoods> {

	/**
	 * 根据过期单id查询所有过期单商品
	 * @param damageListId
	 * @return
	 */
	@Query(value="select * from t_damage_list_goods where damage_list_id=?1",nativeQuery=true)
	public List<DamageListGoods> listByDamageListId(Integer damageListId);
	
	/**
	 * 删除指定过期单的所有商品
	 * @param damageListId
	 */
	@Query(value="delete from t_damage_list_goods where damage_list_id=?1",nativeQuery=true)
	@Modifying
	public void deleteByDamageListId(Integer damageListId);
}
