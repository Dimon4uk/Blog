package dev.com.controller;

import dev.com.domain.Item;
import dev.com.domain.User;
import dev.com.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by dmytrok on 19.10.15.
 */
@Controller
public class IndexController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("/index")
    public String index(Model model) {
        List<Item> items =  itemService.findAllItems();
        model.addAttribute("allItems",items);
        return "index";
    }
}
