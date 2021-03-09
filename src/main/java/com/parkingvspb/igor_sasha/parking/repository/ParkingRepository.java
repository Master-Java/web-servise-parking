package com.parkingvspb.igor_sasha.parking.repository;

import com.parkingvspb.igor_sasha.parking.entity.Parking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ParkingRepository extends JpaRepository<Parking, Integer> {
    public List<Parking> findByParkingName(String parkingName);

    public List<Parking> findByFree(boolean free);
}
