package dev.com.service.impl;

import com.google.common.collect.Lists;
import dev.com.domain.Blog;
import dev.com.domain.Item;
import dev.com.domain.User;
import dev.com.repository.ItemRepository;
import dev.com.repository.UserRepository;
import dev.com.service.BlogService;
import dev.com.service.ItemService;
import dev.com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * Created by dmytrok on 11/6/2015.
 */

@Service
@Transactional
public class ItemServiceImpl implements ItemService {

    @Autowired
    private ItemRepository itemRepository;

    @Autowired
    private UserService userService;

    @Autowired
    private BlogService blogService;

    @Override
    public List<Item> findAllItems() {
        return Lists.newArrayList(itemRepository.findAll());
    }

    @Override

    public void createItem(Item item,Integer blogId) {
        Blog blog = blogService.findById(blogId);
        item.setBlog(blog);
        item.setDate(new Date());
        itemRepository.save(item);
    }
}
