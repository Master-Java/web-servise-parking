package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Car;
import com.parkingvspb.igor_sasha.parking.repository.CarRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarRepository carRepository;

    @Override
    public boolean presentCar(Car car){
        Optional<Car> carFromDB = carRepository.findByNumber(car.getNumber());
        if(carFromDB.isPresent()){
            return true;
        }
        return false;
    }

    @Override
    public long countAllCars(){
        return carRepository.findAll().size();
    }

    @Override
    public List<Car> allCars(){
        return carRepository.findAll();
    }

    @Override
    public Optional<Car> getCar(int id){
        return carRepository.findById(id);
    }

    @Override
    public void save (Car car){
        carRepository.save(car);
    }
}
