package com.jude.repository;

import com.jude.entity.Goods;
import org.apache.ibatis.annotations.Update;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


/**
 * 商品Repository接口
 */
@Transactional
public interface GoodsRepository extends JpaRepository<Goods, Integer>, JpaSpecificationExecutor<Goods>, CrudRepository<Goods, Integer> {

    /**
     * 获取最大的商品编号
     *
     * @return
     */
    @Query(value = "select max(code) from t_goods", nativeQuery = true)
    public String getMaxGoodsCode();

    /**
     * 查询采购预测商品 库存小于库存下限的商品
     *
     * @return
     */
    @Query(value = "SELECT * FROM t_goods WHERE inventory_quantity<min_num", nativeQuery = true)
    public List<Goods> listAlarm();

    @Modifying
    @Query(value = "update t_goods set inventory_quantity = ? WHERE id= ?", nativeQuery = true)
    public void updateKuCun(int kucun,int id);

    @Query(value = "SELECT g.* FROM t_goods g ", nativeQuery = true)
    public List<Goods> selectKucun( Specification goods);

}
