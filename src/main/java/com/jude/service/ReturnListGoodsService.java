package com.jude.service;


import com.jude.entity.PurchaseListGoods;
import com.jude.entity.ReturnListGoods;

import java.util.List;

/**
 * 退货单商品Service接口
 *
 *
 */
public interface ReturnListGoodsService {

	/**
	 * 根据退货单id查询所有退货单商品
	 * @param returnListId
	 * @return
	 */
	public List<ReturnListGoods> listByReturnListId(Integer returnListId);
	public List<ReturnListGoods> listByReturnName(String name, String supplier_id, String bPurchaseDate, String ePurchaseDate);

	/**
	 * 根据条件查询退货单所有商品
	 * @param returnListGoods
	 * @return
	 */
	public List<ReturnListGoods> list(ReturnListGoods returnListGoods);
}
