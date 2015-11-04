package dev.com.security;

import dev.com.domain.Role;
import dev.com.domain.User;
import dev.com.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dmytrok on 20.10.15.
 */
public class UserDetailsServiceImpl implements UserDetailsService {

    final Logger logger = LoggerFactory.getLogger(UserDetailsServiceImpl.class);

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails userDetails;
        logger.info("Loading user record with user name: {}", username);

        User user = userService.findByName(username);

        if(user != null) {

            userDetails = fetchUserDetails(user);
        } else {
            logger.info("User with username = {} not found", username);
            throw new UsernameNotFoundException("User" + username + "not found");
        }

        return userDetails;
    }

    private UserDetails fetchUserDetails(User user) {
        List<Role> userRoles = user.getRoles();

        List<GrantedAuthority> authorities = new ArrayList<>();
        String roleName;
        for (Role role : userRoles) {
            roleName = role.getName();
            GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(roleName);
            authorities.add(grantedAuthority);
        }

        return new UserDetails(user.getName(), user.getPassword(), user.getEnabled(), true, true, true, authorities);
    }

}
