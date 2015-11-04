package dev.com.service;

import dev.com.domain.User;

import java.util.List;

/**
 * Created by dmytrok on 19.10.15.
 */
public interface UserService{
    User findById(Integer id);

    List<User> findAll();

    User findByName(String name);

    User save(User user);
}
