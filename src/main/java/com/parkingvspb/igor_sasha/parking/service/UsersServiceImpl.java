package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Users;
import com.parkingvspb.igor_sasha.parking.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;

    public boolean saveUser(Users user) {
        Optional<Users> userFromDB = usersRepository.findById(user.getName());
        if (userFromDB.isPresent()) {
            return false;
        }

        usersRepository.save(user);
        return true;
    }
}
