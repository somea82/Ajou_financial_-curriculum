package com.spring.starter.dao;

import java.util.ArrayList;

import com.spring.starter.model.videoDTO;
import com.spring.starter.model.videoViewDTO;

public interface amamDAO {
    public ArrayList<videoDTO> videoList();
    //public ArrayList<industryDTO> industryList();
    public ArrayList<videoViewDTO> getVideoCode(String videoCode);
}
