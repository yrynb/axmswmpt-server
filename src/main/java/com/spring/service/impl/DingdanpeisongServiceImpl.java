package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DingdanpeisongMapper;
import com.spring.entity.Dingdanpeisong;
import com.spring.service.DingdanpeisongService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DingdanpeisongService")
public class DingdanpeisongServiceImpl extends ServiceBase<Dingdanpeisong> implements DingdanpeisongService {
    @Resource
    private DingdanpeisongMapper dao;

    @Override
    protected DingdanpeisongMapper getDao() {
        return dao;
    }
}
