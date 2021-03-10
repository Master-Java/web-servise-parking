package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Users;

import java.sql.SQLException;
import java.util.List;

public interface UsersService {

    public boolean saveUser(Users user) throws SQLException;

    public Users getUser (String nameOfUser);

    public void updateUserProfile(Users user);

    public long countAllUsersWithoutADMIN();

    public List<Users> allUsers();
}
