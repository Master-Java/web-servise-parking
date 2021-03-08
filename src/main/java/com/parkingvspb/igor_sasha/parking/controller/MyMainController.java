package com.parkingvspb.igor_sasha.parking.controller;

import com.parkingvspb.igor_sasha.parking.entity.Car;
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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

@Controller
@Validated
public class MyMainController {

    static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-dd-MM");

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

    @GetMapping("/cars")
    public String carsPage(Model model) {
        model.addAttribute("now",dateFormat.format(new Date()));
        Calendar calendar = new GregorianCalendar();
        calendar.add(Calendar.YEAR, 3);
        model.addAttribute("todayYear", calendar.get(Calendar.YEAR));
        Date date = calendar.getTime();
        model.addAttribute("max",dateFormat.format(date));
        return "myCars";
    }

    @PostMapping("/cars")
    public String addCarsPage(@ModelAttribute("car") Car car) {
        System.out.println(car);
        return "myCars";
    }

    @GetMapping("/profile/edit")
    public String updateProfilePage(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("thisUserDetails", usersService.getUser(auth.getName()).getUserDetails());
        return "edit";
    }

    @PostMapping("/profile/edit")
    public String updateUser(@ModelAttribute("thisUserDetails") UserDetails userDetails) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users user = usersService.getUser(auth.getName());
        user.getUserDetails().copyAttribute(userDetails);
        usersService.updateUserProfile(user);
        return "redirect:/profile";
    }

    @GetMapping("/profile")
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
