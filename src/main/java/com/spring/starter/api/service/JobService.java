package com.spring.starter.api.service;

import com.spring.starter.dao.cilDAO;
import com.spring.starter.db.entity.CarrerPath;
import com.spring.starter.model.carrerDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class JobService {
    @Autowired
    private cilDAO jobDAO;
    public carrerDTO getJobById(long id) {
        carrerDTO job = jobDAO.getJobById(id);
        return job;
    }
}
