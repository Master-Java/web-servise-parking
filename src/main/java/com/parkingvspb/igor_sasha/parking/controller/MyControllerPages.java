package com.parkingvspb.igor_sasha.parking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
@Validated
public class MyControllerPages {

    @RequestMapping("/")
    public String ask() {
        return "index";
    }

//    @RequestMapping("/registration")
//    public ModelAndView askEmpDetails(Model model) {
//        model.addAttribute("user", new Users());
//        return new ModelAndView("registration");
//    }

    @RequestMapping("/login")
    public String showLogin(@RequestParam(value = "error", required = false) String error,
                            @RequestParam(value = "logout", required = false) String logout,
                            Model model) {
        model.addAttribute("error", error != null);
        model.addAttribute("logout", logout != null);
        return "login";
    }
}
