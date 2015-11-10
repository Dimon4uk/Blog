package dev.com.service;

import dev.com.domain.Item;

import java.util.List;

/**
 * Created by dmytrok on 21.10.15.
 */
public interface ItemService {
    List<Item> findAllItems();

    void createItem(Item item, Integer blogId);
}
