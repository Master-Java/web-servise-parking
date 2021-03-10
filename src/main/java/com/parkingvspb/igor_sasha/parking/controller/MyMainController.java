package com.parkingvspb.igor_sasha.parking.controller;

import com.parkingvspb.igor_sasha.parking.entity.Car;
import com.parkingvspb.igor_sasha.parking.entity.Parking;
import com.parkingvspb.igor_sasha.parking.entity.UserDetails;
import com.parkingvspb.igor_sasha.parking.entity.Users;
import com.parkingvspb.igor_sasha.parking.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Optional;

@Controller
@Validated
public class MyMainController {

    static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-dd-MM");

    @Autowired
    private UsersService usersService;

    @Autowired
    private CarService carService;

    @Autowired
    private ParkingService parkingService;

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
    public String myCars(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        model.addAttribute("cars", usersService.getUser(auth.getName()).getMyCars());
        return "myCars";
    }

    @GetMapping("/cars/new")
    public String addPageCars(Model model) {
        model.addAttribute("now", dateFormat.format(new Date()));
        Calendar calendar = new GregorianCalendar();
        calendar.add(Calendar.YEAR, 3);
        model.addAttribute("todayYear", calendar.get(Calendar.YEAR));
        Date date = calendar.getTime();
        model.addAttribute("max", dateFormat.format(date));
        return "newCar";
    }

    public String carIsPresent() {
        return "BadCar";
    }

    @PostMapping("/cars/new")
    public String addCars(@ModelAttribute("car") Car car) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (carService.presentCar(car)) {
            return carIsPresent();
        }
        Users user = usersService.getUser(auth.getName());
        user.addCar(car);
        usersService.updateUserProfile(user);
        return "redirect:/cars";
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

    @GetMapping("/index/reservation/{place}")
    public String reservationPage(@PathVariable("place") String place, Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (usersService.getUser(auth.getName()).getMyCars().size() > 0) {
            model.addAttribute("cars", usersService.getUser(auth.getName()).getMyCars());
        }
        if (place.equals("Green")) {
            model.addAttribute("place", parkingService.allFreePlaceParkingByName("Green"));
            model.addAttribute("name", "Green");
            return "reservation";
        } else if (place.equals("Yellow")) {
            model.addAttribute("place", parkingService.allFreePlaceParkingByName("Yellow"));
            model.addAttribute("name", "Yellow");
            return "reservation";
        } else if (place.equals("Red")) {
            model.addAttribute("place", parkingService.allFreePlaceParkingByName("Red"));
            model.addAttribute("name", "Red");
            return "reservation";
        }
        return "page404";
    }

    @PostMapping("/index/reservation")
    public String addReserv(@RequestParam("placeName") String placeName, @RequestParam("сarId") String сarId,
                            @RequestParam("dateFor") String dateFor, Model model) {
        Optional<Car> carFromBD = carService.getCar(Integer.parseInt(сarId));
        Car car = null;
        if (carFromBD.isPresent()) {
            car = carFromBD.get();
        }
        Optional<Parking> parkingFromBD = parkingService.getParking(Integer.parseInt(placeName));
        if (parkingFromBD.isPresent()) {
            car.setParking(parkingFromBD.get());
        }
        String date = dateAdd(dateFor);
        car.setDateForRented(date);
        car.setRent(true);
        car.getParking().setFree(false);
        car.getParking().setDateForRented(date);
        car.getParking().setCar(car);
        carService.save(car);
        car.getMyUser().getUserDetails().addMoney(car.getParking().getPrice()*Integer.parseInt(dateFor));
        usersService.updateUserProfile(car.getMyUser());
        model.addAttribute("parking", car.getParking());
        return "good";
    }

    public String dateAdd(String date){
        Calendar calendar = new GregorianCalendar();
        int i = Integer.parseInt(date);
        calendar.add(Calendar.MONTH,i);
        return dateFormat.format(calendar.getTime());
    }

    @GetMapping("/statistics")
    public String statPage(Model model) {
        model.addAttribute("countUsers", usersService.countAllUsersWithoutADMIN());
        model.addAttribute("countCars", carService.countAllCars());
        model.addAttribute("countFreePlace", parkingService.countFreePlace());
        return "statistics";
    }

    @GetMapping("/statistics/{info}")
    public String statPageInfoBy(@PathVariable("info") String info, Model model) {
        if (info.equals("users")) {
            model.addAttribute("users", usersService.allUsers());
            return "info";
        } else if (info.equals("cars")) {
            model.addAttribute("cars", carService.allCars());
            return "info";
        } else if (info.equals("parking")) {
            model.addAttribute("parking", parkingService.allParking());
            model.addAttribute("parking1", parkingService.allParkingDiff());
            return "info";
        }
        return "statistics";
    }
}
