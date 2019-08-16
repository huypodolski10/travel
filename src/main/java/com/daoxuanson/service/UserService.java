package com.daoxuanson.service;

import com.daoxuanson.entity.User;
import com.daoxuanson.model.request.UserRequest;

import java.util.List;

public interface UserService {
    User findUserByUserNameAndPassword(String userName, String password);
    void insert(UserRequest userRequest);
    void delete(Long id);
    void update(UserRequest userRequest, Long id);
    List<User> findAll();
}
