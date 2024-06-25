package com.spring.starter.api.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Service
public class AdminDetailsService implements UserDetailsService {

    @Value("${admin.username}")
    private String adminUsername;

    @Value("${admin.password}")
    private String adminPassword;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        if (!username.equals(adminUsername)) {
            throw new UsernameNotFoundException("Admin not found with username: " + username);
        }

        return new User(adminUsername, adminPassword, Collections.singleton(new SimpleGrantedAuthority("ROLE_ADMIN")));
    }
}