package com.jude.repository;

import com.jude.entity.PurchaseListGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 进货单商品Repository接口
 *
 *
 */
public interface PurchaseListGoodsRepository extends JpaRepository<PurchaseListGoods, Integer>, JpaSpecificationExecutor<PurchaseListGoods> {

	/**
	 * 根据进货单id查询所有进货单商品
	 * @param purchaseListId
	 * @return
	 */
	@Query(value="select * from t_purchase_list_goods where purchase_list_id=?1",nativeQuery=true)
	public List<PurchaseListGoods> listByPurchaseListId(Integer purchaseListId);

	/**
	 * 根据进货单商品名称查询所有进货单商品
	 * @param name
	 * @return
	 */
	@Query(value="select * from t_purchase_list_goods g left join  t_purchase_list l on g.purchase_list_id= l.id where g.name like %?1% and if(?2!='',l.supplier_id=?2,1=1) and if(?3!='',l.purchase_date>=?3,1=1)and if(?4!='',l.purchase_date<=?4,1=1)",nativeQuery=true)
	public List<PurchaseListGoods> listByPurchaseName(String name,String supplier_id,String bPurchaseDate,String ePurchaseDate);

	/**
	 * 删除指定进货单的所有商品
	 * @param purchaseListId
	 */
	@Query(value="delete from t_purchase_list_goods where purchase_list_id=?1",nativeQuery=true)
	@Modifying
	public void deleteByPurchaseListId(Integer purchaseListId);

	/**
	 * 根据进货单商品名称查询所有进货单商品
	 * @param name
	 * @return
	 */
	@Query(value="select extract(year_month from l.purchase_date) yearMonth,SUM(g.total) countSum from t_purchase_list_goods g left join t_purchase_list l on g.purchase_list_id = l.id where g.name like %?1% GROUP BY extract(year_month from purchase_date)",nativeQuery=true)
	public List<Object []> yuceByPurchaseName(String name);

}
