package com.jude.service.impl;

import com.jude.repository.GoodsTypeRepository;
import com.jude.service.GoodsTypeService;
import com.jude.entity.GoodsType;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 商品类别Service实现类
 *
 *
 */
@Service("goodsTypeService")
public class GoodsTypeServiceImpl implements GoodsTypeService {

	@Resource
	private GoodsTypeRepository goodsTypeRepository;
	
	@Override
	public void save(GoodsType goodsType) {
		goodsTypeRepository.save(goodsType);
	}

	@Override
	public void delete(Integer id) {
		goodsTypeRepository.deleteById(id);
	}

	@Override
	public List<GoodsType> findByParentId(int parentId) {
		return goodsTypeRepository.findByParentId(parentId);
	}

	@Override
	public GoodsType findById(Integer id) {
		return goodsTypeRepository.findById(id).get();
	}

}
