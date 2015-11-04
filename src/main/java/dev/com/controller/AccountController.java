package dev.com.controller;

import dev.com.domain.Blog;
import dev.com.service.BlogService;
import dev.com.service.UserService;
import org.h2.engine.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.security.Principal;

/**
 * Created by dmytrok on 11/4/2015.
 */
@Controller
public class AccountController {

    @Autowired
    private UserService userService;

    @Autowired
    private BlogService blogService;

    @RequestMapping("/account")
    public String showAccount(Model model, Principal principal) {
        model.addAttribute("accountUser", userService.findByName(principal.getName()));
        return "account";
    }

    @RequestMapping(value = "/account", method = RequestMethod.POST)
    public String addBlog(Model model, @ModelAttribute("blog") Blog blog, Principal principal) {
            blogService.createBlog(blog, principal.getName());
        return "redirect:account";
    }

    @ModelAttribute("blog")
    public Blog constructBlog() {
        return new Blog();
    }

}
