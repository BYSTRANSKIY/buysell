package com.example.buysell.services;

import com.example.buysell.models.User;
import org.springframework.security.core.userdetails.UserDetails;

import java.security.Principal;

public interface UserService {

    User getUserByPrincipal(Principal principal);

    boolean createUser(User user);
    User findByEmail(String email);

}
