package com.jude.repository;

import com.jude.entity.CustomerReturnListGoods;
import com.jude.entity.PurchaseListGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 客户退货单商品Repository接口
 *
 */
public interface CustomerReturnListGoodsRepository extends JpaRepository<CustomerReturnListGoods, Integer>, JpaSpecificationExecutor<CustomerReturnListGoods> {

	/**
	 * 根据客户退货单id查询所有客户退货单商品
	 * @param customerReturnListId
	 * @return
	 */
	@Query(value="select * from t_customer_return_list_goods where customer_return_list_id=?1",nativeQuery=true)
	public List<CustomerReturnListGoods> listByCustomerReturnListId(Integer customerReturnListId);

	@Query(value="select * from t_customer_return_list_goods g left join  t_customer_return_list l on g.customer_return_list_id= l.id where g.name like %?1% and if(?2!='',l.customer_id=?2,1=1) and if(?3!='',l.customer_return_date>=?3,1=1)and if(?4!='',l.customer_return_date<=?4,1=1)",nativeQuery=true)
	public List<CustomerReturnListGoods> listByReturnName(String name, String supplier_id, String bPurchaseDate, String ePurchaseDate);


	/**
	 * 删除指定客户退货单的所有商品
	 * @param customerReturnListId
	 */
	@Query(value="delete from t_customer_return_list_goods where customer_return_list_id=?1",nativeQuery=true)
	@Modifying
	public void deleteByCustomerReturnListId(Integer customerReturnListId);
	
	/**
	 * 统计某个商品的客户退货总量
	 * @param goodsId
	 * @return
	 */
	@Query(value="SELECT SUM(num) AS total FROM t_customer_return_list_goods WHERE goods_id=?1",nativeQuery=true)
	public Integer getTotalByGoodsId(Integer goodsId);
}
