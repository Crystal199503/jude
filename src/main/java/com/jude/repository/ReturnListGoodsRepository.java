package com.jude.repository;

import com.jude.entity.PurchaseListGoods;
import com.jude.entity.ReturnListGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 退货单商品Repository接口
 *
 *
 */
public interface ReturnListGoodsRepository extends JpaRepository<ReturnListGoods, Integer>, JpaSpecificationExecutor<ReturnListGoods> {

	/**
	 * 根据退货单id查询所有退货单商品
	 * @param returnListId
	 * @return
	 */
	@Query(value="select * from t_return_list_goods where return_list_id=?1",nativeQuery=true)
	public List<ReturnListGoods> listByReturnListId(Integer returnListId);
	@Query(value="select * from t_return_list_goods g left join  t_return_list l on g.return_list_id= l.id where g.name like %?1% and if(?2!='',l.supplier_id=?2,1=1) and if(?3!='',l.return_date>=?3,1=1)and if(?4!='',l.return_date<=?4,1=1)",nativeQuery=true)
	public List<ReturnListGoods> listByReturnName(String name, String supplier_id, String bReturnDate, String eReturnDate);

	/**
	 * 删除指定退货单的所有商品
	 * @param returnListId
	 */
	@Query(value="delete from t_return_list_goods where return_list_id=?1",nativeQuery=true)
	@Modifying
	public void deleteByReturnListId(Integer returnListId);
}