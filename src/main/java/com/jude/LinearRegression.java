package com.jude;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

/**
 * 使用最小二乘法实现线性回归预测
 */
public class LinearRegression {
    /**
     * 训练集数据
     */
    private Map<Double, Double> initData = new HashMap<>();
    /**
     * 截距
     */
    private double intercept = 0.0;
    //斜率
    private double slope = 0.0;
    /**
     * x、y平均值
     */
    private double averageX, averageY;
    /**
     * 求斜率的上下两个分式的值
     */
    private double slopeUp, slopeDown;

    public LinearRegression(Map<Double, Double> initData) {
        this.initData = initData;
        initData();
    }

    public LinearRegression() {
    }

    /**
     * 根据商品销量预测采购数量
     * 并计算斜率和截距
     */
    public void initData() {
        if (initData.size() > 0) {
            //数据个数
            int number = 0;
            //x值、y值总和
            double sumX = 0;
            double sumY = 0;
            averageX = 0;
            averageY = 0;
            slopeUp = 0;
            slopeDown = 0;
            for (Double x : initData.keySet()) {
                if (x == null || initData.get(x) == null) {
                    continue;
                }
                number++;
                sumX = DoubleUtils.add(sumX, x);
                sumY = DoubleUtils.add(sumY, initData.get(x));
            }
            //求x，y平均值
            averageX = DoubleUtils.div(sumX, (double) number);
            averageY = DoubleUtils.div(sumY, (double) number);
            for (Double x : initData.keySet()) {
                if (x == null || initData.get(x) == null) {
                    continue;
                }
                slopeUp = DoubleUtils.add(slopeUp, DoubleUtils.mul(DoubleUtils.sub(x, averageX), DoubleUtils.sub(initData.get(x), averageY)));
                slopeDown = DoubleUtils.add(slopeDown, DoubleUtils.mul(DoubleUtils.sub(x, averageX), DoubleUtils.sub(x, averageX)));
            }
            initSlopeIntercept();
        }
    }

    /**
     * 计算斜率和截距
     */
    private void initSlopeIntercept() {
        if (slopeUp != 0 && slopeDown != 0) {
            slope = slopeUp / slopeDown;
        }
        intercept = averageY - averageX * slope;
    }

    /**
     * 根据x值预测y值
     *
     * @param x x值
     * @return y值
     */
    public Double getY(Double x) {
        return DoubleUtils.add(intercept, DoubleUtils.mul(slope, x));
    }

    /**
     * 根据y值预测x值
     *
     * @param y y值
     * @return x值
     */
    public Double getX(Double y) {
        return DoubleUtils.div(DoubleUtils.sub(y, intercept), slope);
    }

    public Map<Double, Double> getInitData() {
        return initData;
    }

    public void setInitData(Map<Double, Double> initData) {
        this.initData = initData;
    }

    public static void main(String[] args) {
        LinearRegression linearRegression = new LinearRegression();
//训练集数据
        linearRegression.getInitData().put(1D, 8D);
        linearRegression.getInitData().put(1.5D, 9.5D);
        linearRegression.getInitData().put(2D, 11D);
        linearRegression.getInitData().put(2.5D, 10D);
        linearRegression.getInitData().put(3D, 14D);
//根据训练集数据进行线性函数预测
        linearRegression.initData();
        /*
         * 给定x值，预测y值
         */
        System.out.println(linearRegression.getY(8D));
        /*
         * 给定y值，预测x值
         */
        System.out.println(linearRegression.getX(9.5D));
    }
}

