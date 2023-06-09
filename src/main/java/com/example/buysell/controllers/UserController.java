package com.example.buysell.controllers;

import com.example.buysell.models.User;
import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String registration(User user, Model model) {
        if (userService.createUser(user)) {
            return "redirect:/";
        } else {
            model.addAttribute("errorMessage", "User: " + user.getEmail() + " is already registered");
            return "registration";
        }
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("productSize", user.getProducts().size());
        return "user-info";
    }
}
