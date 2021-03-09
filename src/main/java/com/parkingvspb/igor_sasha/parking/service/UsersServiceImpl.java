package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.UserDetails;
import com.parkingvspb.igor_sasha.parking.entity.Users;
import com.parkingvspb.igor_sasha.parking.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.util.List;
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
        user.setUserDetails(new UserDetails());
        Connection connection = dataSource.getConnection();
        Statement statement = connection.createStatement();
        user.setPassword("{bcrypt}"+new BCryptPasswordEncoder().encode(user.getPassword()));
        usersRepository.save(user);
        statement.executeUpdate("INSERT INTO parking1_db.authorities (username, authority)" +
                "VALUES ('"+user.getName()+ "','ROLE_USER' );");
        return true;
    }

    public Users getUser (String nameOfUser){
        Optional<Users> userFromDB = usersRepository.findById(nameOfUser);
        if (userFromDB.isPresent()) {
            return userFromDB.get();
        }
        return null;
    }

    public void updateUserProfile(Users user){
        usersRepository.save(user);
    }

    public long countAllUsersWithoutADMIN(){
        return usersRepository.findAll().size()-1;
    }

    public List<Users> allUsers(){
        return usersRepository.findAll();
    }
}
