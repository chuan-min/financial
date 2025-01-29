package com.cm.service;

import com.cm.entity.Fm;

import java.util.List;

public interface UserService {
    void save(Fm f);
    List<Fm> findAll();

    void addFm(Fm f);
}
