package com.spring.starter.dao;

import com.spring.starter.model.curriDTO;
import com.spring.starter.model.mentorDTO;
import com.spring.starter.model.videoDTO;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
public interface adminDAO {
    //교과과정 편집
    public ArrayList<curriDTO> curriList();
    public void deleteCurriculum(int page_id);

    public void addFeSubject(@Param("code") String code, @Param("name") String name, @Param("detail") String detail, @Param("semester") int semester, @Param("is_mandatory") int is_mandatory, @Param("original_language") int original_language);
    public void updateFeSubject(@Param("code") String code, @Param("name") String name, @Param("detail") String detail, @Param("semester") int semester, @Param("is_mandatory") int is_mandatory, @Param("original_language") int original_language);
    public void deleteFeSubject(@Param("code") String code);

    public void addFePosition(@Param("code") String code,@Param("row_id")Integer row_id, @Param("col_id")Integer col_id);
    public void updateFePosition(@Param("code") String code,@Param("row_id")Integer row_id,@Param("col_id") Integer col_id);
    public void deleteFePosition(@Param("code") String code);

    public void addJoint(@Param("code") String code,@Param("joint_department")String joint_department);
    public void updateJoint(@Param("code") String code,@Param("joint_department")String joint_department);
    public void deleteJoint(@Param("code") String code ,@Param("joint_department")String joint_department);

    public void addRelate(@Param("code") String code,@Param("relate_subject_code")String relate_subject_code);
    public void updateRelate(@Param("code") String code,@Param("relate_subject_code")String relate_subject_code);
    public void deleteRelate(@Param("code") String code ,@Param("relate_subject_code")String relate_subject_code);
    public void addPrerequisite(@Param("code") String code,@Param("pre_subject_code")String pre_subject_code);
    public void updatePrerequisite(@Param("code") String code,@Param("pre_subject_code")String pre_subject_code);
    public void deletePrerequisite(@Param("code") String code ,@Param("pre_subject_code")String pre_subject_code);

}
