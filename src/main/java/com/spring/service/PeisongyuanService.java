package com.spring.service;

import com.base.IServiceBase;
import com.spring.entity.Peisongyuan;

public interface PeisongyuanService extends IServiceBase<Peisongyuan> {
    public Peisongyuan login(String username, String password);
    public boolean updatePassword(int id, String newPassword);
}
