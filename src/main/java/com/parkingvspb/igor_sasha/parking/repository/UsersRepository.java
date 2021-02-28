package com.parkingvspb.igor_sasha.parking.repository;

import com.parkingvspb.igor_sasha.parking.entity.Users;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<Users, String> {
}
