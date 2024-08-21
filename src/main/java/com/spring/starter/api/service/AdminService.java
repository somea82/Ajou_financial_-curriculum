package com.spring.starter.api.service;

import com.spring.starter.dao.adminDAO;
import com.spring.starter.db.entity.CarrerPath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    private adminDAO carrerPathDAO;

    public CarrerPath getCarrerPathById(int id) {
        return carrerPathDAO.getCarrerPathById(id);
    }

    public void updateCarrerPath(CarrerPath carrerPath) {
        carrerPathDAO.updateCarrerPath(carrerPath);
    }
}
