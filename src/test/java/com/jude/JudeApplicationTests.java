package com.jude;

import com.jude.repository.PurchaseListGoodsRepository;
import com.jude.service.impl.Test2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;


@RunWith(SpringRunner.class)
@SpringBootTest
public class JudeApplicationTests {

    @Resource
    private Test2 test;
    @Test
    public void contextLoads() {

        test.yuce("陶华碧老干妈香辣脆油辣椒");
    }

}
