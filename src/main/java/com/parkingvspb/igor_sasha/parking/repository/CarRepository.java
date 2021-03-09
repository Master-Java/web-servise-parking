package com.parkingvspb.igor_sasha.parking.repository;

import com.parkingvspb.igor_sasha.parking.entity.Car;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CarRepository extends JpaRepository<Car, Integer> {
    public Optional<Car> findByNumber(String number);
}
