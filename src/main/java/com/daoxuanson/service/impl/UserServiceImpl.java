package com.daoxuanson.service.impl;

import com.daoxuanson.entity.Role;
import com.daoxuanson.entity.User;
import com.daoxuanson.model.request.UserRequest;
import com.daoxuanson.repository.RoleRepository;
import com.daoxuanson.repository.UserRepository;
import com.daoxuanson.service.UserService;
import com.daoxuanson.tranform.UserTranform;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;

    @Autowired
    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    @Override
    public User findUserByUserNameAndPassword(String userName, String password) {
        User user = userRepository.findUserByUserNameAndPassword(userName, password);

        return user;
    }

    @Override
    public void insert(UserRequest userRequest) {
        User user = new User();
        BeanUtils.copyProperties(userRequest, user);
        Set<Role> roles = new HashSet<>();
        for (Long id:userRequest.getIds()) {
            Role role = roleRepository.findOne(id);
            roles.add(role);
        }
        user.setRoles(roles);
        user.setCreatedDate(new Date());
        user.setCreatedBy("Admin");
        userRepository.save(user);
    }

    @Override
    public void delete(Long id) {
        userRepository.delete(id);
    }

    @Override
    public void update(UserRequest userRequest, Long id) {
        User userExist = userRepository.findOne(id);
        if(userExist == null) return;

        User user = new User();
        BeanUtils.copyProperties(userRequest, user);

        user.setId(userExist.getId());
        user.setCreatedDate(userExist.getCreatedDate());
        user.setCreatedBy(userExist.getCreatedBy());
        user.setModifiedDate(new Date());
        user.setModifiedBy("Admin");

        Set<Role> roles = new HashSet<>();
        for (Long idR : userRequest.getIds()) {
            Role role = roleRepository.findOne(idR);
            roles.add(role);
        }
        user.setRoles(roles);
        userRepository.save(user);
    }

    @Override
    public List<User> findAll() {
        return userRepository.findAll();
    }
}
