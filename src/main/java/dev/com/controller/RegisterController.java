package dev.com.controller;

import com.google.common.collect.Lists;
import dev.com.domain.Role;
import dev.com.domain.User;
import dev.com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by dmytrok on 22.10.15.
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

    @Autowired
    private UserService userService;

    @ModelAttribute("user")
    public User construct() {
        return new User();
    }

    @RequestMapping
    public String showRegister() {
        return "registration";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String doRegister(@ModelAttribute("user") User user, BindingResult result) {
//        Role role = new Role();
//        role.setName("ROLE_USER");
//
//      List<Role> roles = new ArrayList<>();
//        roles.add(role);
//        user.setRoles(roles);
//        List<User> users = new ArrayList<>();
//        users.add()

        if(result.hasErrors()) {
            return "registration";
        }
        userService.save(user);
        return "registration";
        //todo
//        return "registration.jsp?success=true";
    }


}
