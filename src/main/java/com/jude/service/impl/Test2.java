package com.jude.service.impl;

import com.jude.LinearRegression;
import com.jude.entity.PurchaseListGoods;
import com.jude.entity.SaleListGoods;
import com.jude.repository.PurchaseListGoodsRepository;
import com.jude.repository.SaleListGoodsRepository;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class Test2 {

    @Resource
    private PurchaseListGoodsRepository purchaseListGoodsRepository;
    @Resource
    private SaleListGoodsRepository saleListGoodsRepository;

    public double yuce(String goodName) {
        Map<Double, Double> initData = new HashMap<>();
        // x 代表销量，y代表进货量
        // 根据传入的商品名称 预测该商品的进货量
        // 求出某个商品每个月的销量
        List<Object []> buyList = purchaseListGoodsRepository.yuceByPurchaseName(goodName);
        List<Object []> saleList = saleListGoodsRepository.yuceBySaleName(goodName);

        for (Object [] buyInfo : buyList) {
            for (Object [] saleInfo : saleList) {
                if(buyInfo[0].equals(saleInfo[0])){
                    initData.put((double) saleInfo[1],(double)buyInfo[1]);
                }else{
                    initData.put((double)saleInfo[1],0d);
                }
            }
        }
        // 求出某个商品每个月的进货量
        LinearRegression linearRegression = new LinearRegression(initData);
        // 根据销量，预测进货量

        double y = linearRegression.getY(20d);
       return y;
    }
}
