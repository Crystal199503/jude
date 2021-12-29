package com.jude.service.impl;

import com.jude.repository.GoodsUnitRepository;
import com.jude.service.GoodsUnitService;
import com.jude.entity.GoodsUnit;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 商品单位Service实现类
 *
 *
 */
@Service("goodsUnitService")
public class GoodsUnitServiceImpl implements GoodsUnitService {

	@Resource
	private GoodsUnitRepository goodsUnitRepository;
	
	@Override
	public List<GoodsUnit> listAll() {
		return goodsUnitRepository.findAll();
	}

	@Override
	public void save(GoodsUnit goodsUnit) {
		goodsUnitRepository.save(goodsUnit);
	}

	@Override
	public void delete(Integer id) {
		goodsUnitRepository.deleteById(id);
	}

	@Override
	public GoodsUnit findById(Integer id) {
		return goodsUnitRepository.findById(id).get();
	}

}
