package com.spring.dao;

import com.base.MapperBase;
import com.spring.entity.Peisongyuan;

import org.springframework.stereotype.Repository;


@Repository
public interface PeisongyuanMapper extends MapperBase<Peisongyuan> {
    Peisongyuan login(Peisongyuan peisongyuan);
}
