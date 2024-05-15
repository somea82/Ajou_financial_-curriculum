package com.spring.starter.dao;

import com.spring.starter.model.filDTO;
import com.spring.starter.model.jobDTO;
import com.spring.starter.model.majorDTO;
import com.spring.starter.model.cilDetailDTO;
import com.spring.starter.model.cilPositionDTO;
import com.spring.starter.model.adminSubjectDTO;
import com.spring.starter.model.cilTrackDTO;
import com.spring.starter.model.cilPreDTO;
import com.spring.starter.model.mathDTO;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

@Mapper
public interface cilDAO {
    public ArrayList<filDTO> subjectList();
    public ArrayList<jobDTO> jobList();
    public ArrayList<majorDTO> majorList();
    public ArrayList<mathDTO> mathList();
    public ArrayList<adminSubjectDTO>subjectAllList();
    public ArrayList<cilDetailDTO> subjectDetailList(String code);
    public ArrayList<cilPositionDTO> subjectPositionList(String code);
    public ArrayList<cilPreDTO> subjectPreList(String subject);

    //public ArrayList<cilDetailCoreDTO> subjectDetailCoreList(String subject);
    public ArrayList<cilTrackDTO> subjectTrackList(@Param("carrer_path_id") String carrer_path_id, @Param("small_category") String small_category);
}