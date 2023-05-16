package com.example.buysell.services;

import com.example.buysell.models.User;
import org.springframework.security.core.userdetails.UserDetails;

public interface UserService {

    boolean createUser(User user);
    User findByEmail(String email);

}
