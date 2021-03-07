package com.parkingvspb.igor_sasha.parking.service;

import com.parkingvspb.igor_sasha.parking.entity.UserDetails;
import com.parkingvspb.igor_sasha.parking.repository.DetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DetailsServiceImpl implements DetailsService{

    @Autowired
    private DetailsRepository detailsRepository;

    public void updateDetail (UserDetails userDetails){
        detailsRepository.save(userDetails);
    }
}
