package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Parking;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public interface ParkingService {

    public List<Parking> allFreePlaceParkingByName(String parkingName);

    public int countFreePlace();

    public List<Parking> allParking();

    public List<List<Parking>> allParkingDiff();

    public Optional<Parking> getParking(int id);

}
