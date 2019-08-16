package com.daoxuanson.repository;

import com.daoxuanson.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findUserByUserNameAndPassword(String userName, String password);

    User findUserByUserName(String userName);
}
