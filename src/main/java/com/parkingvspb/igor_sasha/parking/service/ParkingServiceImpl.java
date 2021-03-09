package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Parking;
import com.parkingvspb.igor_sasha.parking.repository.ParkingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class ParkingServiceImpl implements ParkingService {

    @Autowired
    private ParkingRepository parkingRepository;

    public List<Parking> allFreePlaceParkingByName(String parkingName) {
        return parkingRepository.findByParkingName(parkingName);
    }

    public int countFreePlace() {
        return parkingRepository.findByFree(true).size();
    }

    public List<Parking> allParking() {
        return parkingRepository.findAll();
    }

    public List<List<Parking>> allParkingDiff() {
        List<List<Parking>> ar = new ArrayList<>();
        ar.add(parkingRepository.findByParkingName("Green"));
        ar.add(parkingRepository.findByParkingName("Yellow"));
        ar.add(parkingRepository.findByParkingName("Red"));
        return ar;
    }

    public Optional<Parking> getParking(int id) {
        return parkingRepository.findById(id);
    }
}
