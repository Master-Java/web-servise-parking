package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Users;

import java.sql.SQLException;

public interface UsersService {
    public boolean saveUser(Users user) throws SQLException;
}
