package com.parkingvspb.igor_sasha.parking.controller;

import com.parkingvspb.igor_sasha.parking.entity.Users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
@Validated
public class MyControllerPages {

    @RequestMapping("/")
    public String ask() {
        return "index";
    }

    @RequestMapping("/registration")
    public ModelAndView askEmpDetails(Model model) {
        model.addAttribute("user", new Users());
        return new ModelAndView("registration");
    }

    @RequestMapping("/login")
    public String showLogin(@RequestParam(value = "error", required = false) String error,
                            @RequestParam(value = "logout", required = false) String logout,
                            Model model, @Valid @ModelAttribute("user") Users user, BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            System.out.println("123123123");
            return "registration";
        }
        model.addAttribute("error", error != null);
        model.addAttribute("logout", logout != null);
        return "login";
    }

}
