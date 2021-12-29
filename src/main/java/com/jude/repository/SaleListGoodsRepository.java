package com.jude.repository;

import com.jude.entity.SaleListGoods;
import com.jude.entity.SaleListGoods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * 销售单商品Repository接口
 *
 *
 */
public interface SaleListGoodsRepository extends JpaRepository<SaleListGoods, Integer>, JpaSpecificationExecutor<SaleListGoods> {

	/**
	 * 根据销售单id查询所有销售单商品
	 * @param saleListId
	 * @return
	 */
	@Query(value="select * from t_sale_list_goods where sale_list_id=?1",nativeQuery=true)
	public List<SaleListGoods> listBySaleListId(Integer saleListId);
	@Query(value="select * from t_sale_list_goods g left join  t_sale_list l on g.sale_list_id= l.id where g.name like %?1% and if(?2!='',l.customer_id=?2,1=1) and if(?3!='',l.sale_date>=?3,1=1)and if(?4!='',l.sale_date<=?4,1=1)",nativeQuery=true)
	public List<SaleListGoods> listBySaleName(String name, String custom_id, String bSaleDate, String eSaleDate);


	/**
	 * 删除指定销售单的所有商品
	 * @param saleListId
	 */
	@Query(value="delete from t_sale_list_goods where sale_list_id=?1",nativeQuery=true)
	@Modifying
	public void deleteBySaleListId(Integer saleListId);
	
	/**
	 * 统计某个商品的销售总量
	 * @param goodsId
	 * @return
	 */
	@Query(value="SELECT SUM(num) AS total FROM t_sale_list_goods WHERE goods_id=?1",nativeQuery=true)
	public Integer getTotalByGoodsId(Integer goodsId);
	@Query(value="select extract(year_month from l.sale_date) yearMonth,SUM(g.total) countSum from t_sale_list_goods g left join  t_sale_list l on g.sale_list_id= l.id where g.name like %?1% GROUP BY extract(year_month from sale_date)",nativeQuery=true)
	public List<Object []> yuceBySaleName(String name);

}
