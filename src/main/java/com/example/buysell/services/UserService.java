package com.example.buysell.services;

import com.example.buysell.models.User;

import java.security.Principal;
import java.util.List;
import java.util.Map;

public interface UserService {

    User getUserByPrincipal(Principal principal);

    boolean createUser(User user);
    User findByEmail(String email);

    List<User> getAllUsers();

    void userEdit(User user, Map<String, String> form);
}
