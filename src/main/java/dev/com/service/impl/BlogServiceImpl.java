package dev.com.service.impl;

import dev.com.domain.Blog;
import dev.com.domain.User;
import dev.com.repository.BlogRepository;
import dev.com.repository.UserRepository;
import dev.com.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by dmytrok on 11/4/2015.
 */
@Service
@Transactional
public class BlogServiceImpl implements BlogService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BlogRepository blogRepository;

    @Override
    public void createBlog(Blog blog, String name) {
        User user = userRepository.findByName(name);
        blog.setUser(user);
        blogRepository.save(blog);
       //todo
    }

    @Override
    @Transactional
    public void deleteBlog(Integer id) {
        blogRepository.delete(id);
    }

    @Override
    public Blog findByUserId(Integer id) {
        return blogRepository.findByUser(id);
    }

    @Override
    public Blog findById(Integer id) {
        return blogRepository.findOne(id);
    }
}
