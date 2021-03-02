package com.parkingvspb.igor_sasha.parking.controller;

import com.parkingvspb.igor_sasha.parking.entity.UserDetails;
import com.parkingvspb.igor_sasha.parking.entity.Users;
import com.parkingvspb.igor_sasha.parking.service.DetailsService;
import com.parkingvspb.igor_sasha.parking.service.UsersServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@Controller
@Validated
public class MyMainController {

    @Autowired
    private UsersServiceImpl usersService;

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

    @GetMapping("/my_profile/edit")
    public String updateProfilePage(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("thisUserDetails", usersService.getUser(auth.getName()).getUserDetails());
        return "edit";
    }

    @PostMapping("/my_profile/edit")
    public String updateUser(@ModelAttribute("thisUserDetails") UserDetails userDetails) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users user = usersService.getUser(auth.getName());
        user.getUserDetails().copyAttribute(userDetails);
        usersService.updateUserProfile(user);
        return "redirect:/my_profile";
    }

    @GetMapping("/my_profile")
    public String profilePage(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("thisUser", usersService.getUser(auth.getName()));
        return "myProfile";
    }

    @GetMapping("/price")
    public String pricePage() {
        return "price";
    }

}
