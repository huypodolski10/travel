package com.daoxuanson.service;

import com.daoxuanson.entity.User;

public interface UserService {
    User findUserByUserNameAndPassword(String userName, String password);
}
