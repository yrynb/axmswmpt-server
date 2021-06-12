package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.TiwenjianceMapper;
import com.spring.entity.Tiwenjiance;
import com.spring.service.TiwenjianceService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("TiwenjianceService")
public class TiwenjianceServiceImpl extends ServiceBase<Tiwenjiance> implements TiwenjianceService {
    @Resource
    private TiwenjianceMapper dao;

    @Override
    protected TiwenjianceMapper getDao() {
        return dao;
    }
}
