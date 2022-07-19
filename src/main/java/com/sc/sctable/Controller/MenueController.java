package com.sc.sctable.Controller;

import com.sc.sctable.Service.MenueService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*", maxAge=3600)
@RestController
@RequestMapping("/")
public class MenueController {
    private final MenueService menueService;

    @Autowired
    public MenueController(MenueService menueService) {
        this.menueService = menueService;
    }

    @GetMapping("/home")
    public String getHome() {
        System.out.println("browser Call !!!! ");
        return "Hello, world";
    }

}
