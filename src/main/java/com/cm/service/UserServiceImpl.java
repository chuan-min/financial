package com.cm.service;

import com.cm.dao.UserDao;
import com.cm.entity.Fm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserDao userDao;
    @Override
    public void save(Fm f) {
        userDao.save(f);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Fm> findAll() {
        return userDao.findAll();
    }

    @Override
    public void addFm(Fm f) {
        userDao.addFm(f);
    }
}
