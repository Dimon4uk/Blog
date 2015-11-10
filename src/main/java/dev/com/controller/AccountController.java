package dev.com.controller;

import dev.com.domain.Blog;
import dev.com.domain.Item;
import dev.com.service.BlogService;
import dev.com.service.ItemService;
import dev.com.service.UserService;
import org.h2.engine.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.security.Principal;

/**
 * Created by dmytrok on 11/4/2015.
 */
@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private UserService userService;

    @Autowired
    private BlogService blogService;

    @Autowired
    private ItemService itemService;

    @RequestMapping
    public String showAccount(Model model, Principal principal) {
        model.addAttribute("accountUser", userService.findByName(principal.getName()));
        return "account";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String addBlog(@ModelAttribute("blog") Blog blog, Principal principal) {
            blogService.createBlog(blog, principal.getName());
        return "redirect:/account";
    }

    @ModelAttribute("blog")
    public Blog constructBlog() {
        return new Blog();
    }

    @RequestMapping(value = "/blog-detail/{blogId}", method = RequestMethod.GET)
    public String blogDetail(Model model, @PathVariable Integer blogId) {
        model.addAttribute("blog", blogService.findById(blogId));
        return "blog-detail";
    }

//    @RequestMapping(value = "/delete_{blogId}", method = RequestMethod.POST)
//    public String deleteBlog(@PathVariable Integer blogId) {
//        blogService.deleteBlog(blogId);
//        return "redirect:/account";
//    }

    // items
    @ModelAttribute("item")
    public Item constructItem() {
        return new Item();
    }


    @RequestMapping(value = "/create_{blogId}", method = RequestMethod.POST)
    public String addItem(@ModelAttribute("item") Item item, @PathVariable Integer blogId) {
        itemService.createItem(item, blogId);
        return "redirect:/account/blog-detail_{blogId}";
    }
}
