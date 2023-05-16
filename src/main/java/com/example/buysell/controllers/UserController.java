package com.example.buysell.controllers;

import com.example.buysell.models.User;
import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String registration(User user, Model model) {
        if (userService.createUser(user)) {
            return "redirect:/hello";
        } else {
            model.addAttribute("errorMessage", "User: " + user.getEmail() + " is already registered");
            return "registration";
        }
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }
}
