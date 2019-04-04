package com.example.auth.service;

import com.example.auth.dao.UserDao;
import com.example.auth.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService implements UserDetailsService {
    private final UserDao userDao;

    @Autowired
    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userDao.findByUsername(s);
        if (user == null) {
            throw new UsernameNotFoundException("no user");
        }
        return user;
    }

    @Transactional
    public User add(User user) throws Exception {
        if(userDao.findByUsername(user.getUsername()) != null) {
            throw new Exception("user exist");
        }

        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        return userDao.save(user);
    }

    User getAuthUser(){
        SecurityContext context = SecurityContextHolder.getContext();
        return userDao.findByUsername(context.getAuthentication().getName());
    }
}
