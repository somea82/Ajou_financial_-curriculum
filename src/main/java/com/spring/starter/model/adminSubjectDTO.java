package com.spring.starter.model;

import com.spring.starter.db.entity.FeSubject;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class adminSubjectDTO {
    private  Long id;
    private String code;
    private String name;
    private String detail;
    private int semester;
    private int is_mandatory;
    private int original_language;
/*
    public adminSubjectDTO(FeSubject feSubject) {
        this.id = feSubject.getId();
        this.code = feSubject.getCode();
        this.name = feSubject.getName();
        this.detail = feSubject.getDetail();
        this.semester = feSubject.getSemester();;
        this.is_mandatory = feSubject.getIs_mandatory();;
        this.original_language = feSubject.getOriginal_language();;
    }
*/

}
