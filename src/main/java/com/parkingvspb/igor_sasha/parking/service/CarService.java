package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Car;

import java.util.List;
import java.util.Optional;

public interface CarService {

    public boolean presentCar(Car car);

    public long countAllCars();

    public List<Car> allCars();

    public Optional<Car> getCar(int id);

    public void save (Car car);

}
