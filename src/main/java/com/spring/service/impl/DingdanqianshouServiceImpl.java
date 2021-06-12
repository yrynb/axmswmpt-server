package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DingdanqianshouMapper;
import com.spring.entity.Dingdanqianshou;
import com.spring.service.DingdanqianshouService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DingdanqianshouService")
public class DingdanqianshouServiceImpl extends ServiceBase<Dingdanqianshou> implements DingdanqianshouService {
    @Resource
    private DingdanqianshouMapper dao;

    @Override
    protected DingdanqianshouMapper getDao() {
        return dao;
    }
}
