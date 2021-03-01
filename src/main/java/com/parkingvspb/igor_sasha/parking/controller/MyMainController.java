package com.parkingvspb.igor_sasha.parking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
@Validated
public class MyMainController {

    @GetMapping("/")
    public String firstPage() {
        return "firstPage";
    }

    @GetMapping("/index")
    public String mainPage() {
        return "index";
    }

    @GetMapping("/login")
    public String loginPage(@RequestParam(value = "error", required = false) String error,
                            @RequestParam(value = "logout", required = false) String logout,
                            Model model) {
        model.addAttribute("error", error != null);
        model.addAttribute("logout", logout != null);
        return "login";
    }

    @GetMapping("/address")
    public String addressPage() {
        return "address";
    }

    @GetMapping("/gallery")
    public String galleryPage() {
        return "gallery";
    }

    @GetMapping("/my_cars")
    public String carsPage() {
        return "myCars";
    }

    @GetMapping("/my_profile")
    public String profilePage() {
        return "myProfile";
    }

    @GetMapping("/price")
    public String pricePage() {
        return "price";
    }

}
