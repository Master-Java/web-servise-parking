package com.parkingvspb.igor_sasha.parking.repository;

import com.parkingvspb.igor_sasha.parking.entity.UserDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DetailsRepository extends JpaRepository<UserDetails, Integer> {
}
