package com.jude.service;


import com.jude.entity.DamageList;
import com.jude.entity.DamageListGoods;
import org.springframework.data.domain.Sort.Direction;

import java.util.List;

/**
 * 过期单Service接口
 *
 *
 */
public interface DamageListService {

	/**
	 * 根据id查询实体
	 * @param id
	 * @return
	 */
	public DamageList findById(Integer id);
	
	/**
	 * 获取当天最大过期单号
	 * @return
	 */
	public String getTodayMaxDamageNumber();
	
	/**
	 * 添加过期单 以及所有过期单商品 以及 修改商品的成本均价
	 * @param damageList 过期单
	 * @param DamageListGoodsList 过期单商品
	 */
	public void save(DamageList damageList, List<DamageListGoods> damageListGoodsList);

	/**
	 * 根据条件查询过期单信息
	 * @param damageList
	 * @param page
	 * @param pageSize
	 * @param direction
	 * @param properties
	 * @return
	 */
	public List<DamageList> list(DamageList damageList, Direction direction, String... properties);
	
	/**
	 * 根据id删除过期单信息 包括过期单里的商品
	 * @param id
	 */
	public void delete(Integer id);

}
