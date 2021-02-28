package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.Users;
import com.parkingvspb.igor_sasha.parking.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.util.Optional;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersRepository usersRepository;

    @Autowired
    private DataSource dataSource;

    public boolean saveUser(Users user) throws SQLException {
        Optional<Users> userFromDB = usersRepository.findById(user.getName());
        if (userFromDB.isPresent()) {
            return false;
        }
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        user.setPassword("{bcrypt}"+new BCryptPasswordEncoder().encode(user.getPassword()));
        usersRepository.save(user);
        statement.executeUpdate("INSERT INTO parking_db.authorities (username, authority)" +
                "VALUES ('"+user.getName()+ "','ROLE_USER' );");
        return true;
    }
}
