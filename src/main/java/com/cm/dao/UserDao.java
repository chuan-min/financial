package com.cm.dao;

import com.cm.entity.Fm;

import java.util.List;

public interface UserDao {
    void save(Fm fm);
    List<Fm> findAll();

    void addFm(Fm fm);
}
