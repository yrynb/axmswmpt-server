package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DingdanquxiaoMapper;
import com.spring.entity.Dingdanquxiao;
import com.spring.service.DingdanquxiaoService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DingdanquxiaoService")
public class DingdanquxiaoServiceImpl extends ServiceBase<Dingdanquxiao> implements DingdanquxiaoService {
    @Resource
    private DingdanquxiaoMapper dao;

    @Override
    protected DingdanquxiaoMapper getDao() {
        return dao;
    }
}
