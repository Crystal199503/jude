package com.jude.controller.admin;

import com.jude.entity.Customer;
import com.jude.entity.Log;
import com.jude.service.CustomerService;
import com.jude.service.LogService;
import com.jude.service.impl.Test2;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 根据销量预测进货量
 * 采用线性回归算法
 *
 */
@RestController
@RequestMapping("/admin/yuce")
public class SaleYuCeController {
	
	@Resource
	private Test2 test2;

	@RequestMapping("/yuce")
	@RequiresPermissions(value = { "采购预测" })
	public double list(String goodName )throws Exception{
		;
		return test2.yuce(goodName);
	}
	
}
