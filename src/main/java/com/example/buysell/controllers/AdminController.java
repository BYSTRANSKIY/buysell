package com.example.buysell.controllers;

import com.example.buysell.models.User;
import com.example.buysell.models.enums.Role;
import com.example.buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class AdminController {
    private final UserService userService;

    @GetMapping("/admin")
    public String admin(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "admin";
    }

    @GetMapping("/admin/user/editing/{user}")
    public String userEditing(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());
        return "user-edit";
    }

//    @PostMapping("/admin/user/blocking/{id}")
//    public String userBlocking(@PathVariable Long id) {
//        userService.blockingUser(id);
//        return "redirect:/admin";
//    }

    @PostMapping("/admin/user/edit/{user}")
    public String userEdit(@PathVariable User user, @RequestParam Map<String, String> form) {
        userService.userEdit(user, form);
        return "redirect:/admin";
    }
}
