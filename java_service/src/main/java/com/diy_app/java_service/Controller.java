package com.diy_app.java_service;

import com.diy_app.java_service.model.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class Controller {

    @GetMapping("/{id}")
    public String getUser(@PathVariable("id") String id) {
        // Logic to retrieve user by ID from the database
        return "User ID: " + id;
    }

    @PostMapping
    public String createUser(@RequestBody User user) {
        // Logic to create a new user in the database
        return "User created: " + user.getName();
    }
}