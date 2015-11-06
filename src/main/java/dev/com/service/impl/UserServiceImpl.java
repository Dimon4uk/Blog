package dev.com.service.impl;

import com.google.common.collect.Lists;
import dev.com.domain.Blog;
import dev.com.domain.Item;
import dev.com.domain.Role;
import dev.com.domain.User;
import dev.com.repository.BlogRepository;
import dev.com.repository.ItemRepository;
import dev.com.repository.RoleRepository;
import dev.com.repository.UserRepository;
import dev.com.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dmytrok on 19.10.15.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public User findById(Integer id) {
        return userRepository.findOne(id);
    }

    @Override
    public List<User> findAll() {
        return Lists.newArrayList(userRepository.findAll());
    }

    @Transactional(readOnly = true)
    @Override
    public User findByName(String name) {
        return userRepository.findByName(name);
    }

    @Transactional
    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public void deleteUser(Integer id){
        userRepository.delete(id);
    }

}
