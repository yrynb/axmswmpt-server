package com.spring.service.impl;

import com.base.ServiceBase;
import com.spring.dao.PeisongyuanMapper;
import com.spring.entity.Peisongyuan;
import com.spring.service.PeisongyuanService;
import org.springframework.stereotype.Service;
import util.Info;

import javax.annotation.Resource;

@Service("PeisongyuanService")
public class PeisongyuanServiceImpl extends ServiceBase<Peisongyuan> implements PeisongyuanService {
    @Resource
    private PeisongyuanMapper dao;

    @Override
    protected PeisongyuanMapper getDao() {
        return dao;
    }
    public Peisongyuan login(String username, String password) {
        Peisongyuan user = new Peisongyuan();
        user.setGonghao(username);
            user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Peisongyuan user = new Peisongyuan();
        user.setId(id);
            user.setMima(newPassword);
        int i = this.dao.updateByPrimaryKeySelective(user);
        return i == 1;
    }
}
