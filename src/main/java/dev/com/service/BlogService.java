package dev.com.service;

import dev.com.domain.Blog;

/**
 * Created by dmytrok on 21.10.15.
 */
public interface BlogService {

    void createBlog(Blog blog, String name);

    void deleteBlog(Integer id);
}
