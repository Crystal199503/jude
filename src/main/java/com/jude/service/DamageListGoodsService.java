package com.jude.service;


import com.jude.entity.DamageListGoods;

import java.util.List;

/**
 * 过期单商品Service接口
 *
 *
 */
public interface DamageListGoodsService {

	/**
	 * 根据过期单id查询所有过期单商品
	 * @param damageListId
	 * @return
	 */
	public List<DamageListGoods> listByDamageListId(Integer damageListId);


}
