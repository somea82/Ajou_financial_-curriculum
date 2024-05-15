package com.spring.starter.model;
public class cilDetailDTO {

    private int id;
    private String code;
    private String name;
    private String detail;
    private int semester;
    private int is_mandatory;
    private int original_language;
    private String joint_department;
    private String pre_subject_code;
    private String relate_subject_code;
    private String pre_subject_name;
    private String relate_subject_name;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getSubject() {
        return code;
    }
    public void setSubject(String code) {
        this.code = code;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDetail() {
        return detail;
    }
    public void setDetail(String detail) {
        this.detail = detail;
    }
    public int getSemester() {
        return semester;
    }
    public void setSemester(int semester) {
        this.semester = semester;
    }
    public int getIs_mandatory() {
        return is_mandatory;
    }
    public void setIs_mandatory(int is_mandatory) {
        this.is_mandatory = is_mandatory;
    }
    public int getOriginal_language() {
        return original_language;
    }
    public void setOriginal_language(int original_language) {
        this.original_language = original_language;
    }
    public String getJoint_department() {
        return joint_department;
    }
    public void setJoint_department(String joint_department) {
        this.joint_department = joint_department;
    }
    public String getPre_subject_code() {
        return pre_subject_code;
    }
    public void setPre_subject_code(String pre_subject_code) {
        this.pre_subject_code = pre_subject_code;
    }

    public String getRelate_subject_code() {
        return relate_subject_code;
    }
    public void setRelate_subject_code(String relate_subject_code) {
        this.relate_subject_code = relate_subject_code;
    }
    public String getPre_subject_name() {
        return pre_subject_name;
    }
    public void setPre_subject_name(String pre_subject_name) {
        this.pre_subject_name = pre_subject_name;
    }

    public String getRelate_subject_name() {
        return relate_subject_name;
    }
    public void setRelate_subject_name(String relate_subject_name) {
        this.relate_subject_name = relate_subject_name;
    }

}
