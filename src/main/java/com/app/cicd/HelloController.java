package com.app.cicd;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/api")
    public String hello() {
        return "Hello from Java + GKE + Argo CD!";
    }
}

