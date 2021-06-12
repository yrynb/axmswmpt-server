package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.DingdanquerenMapper;
import com.spring.entity.Dingdanqueren;
import com.spring.service.DingdanquerenService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("DingdanquerenService")
public class DingdanquerenServiceImpl extends ServiceBase<Dingdanqueren> implements DingdanquerenService {
    @Resource
    private DingdanquerenMapper dao;

    @Override
    protected DingdanquerenMapper getDao() {
        return dao;
    }
}
