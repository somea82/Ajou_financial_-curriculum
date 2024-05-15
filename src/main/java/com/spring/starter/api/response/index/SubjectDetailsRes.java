package com.spring.starter.api.response.index;

import com.spring.starter.db.entity.FeSubject;
import com.spring.starter.db.entity.JointDepartments;
import com.spring.starter.db.entity.PrerequisiteSubjects;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDetailsRes extends BaseResponse {

    private String course;
    private String keyWord;
    private String details;
    private String tools;
    private String prerequisiteCourses;
    private String relatedCourses;

    public SubjectDetailsRes(String msg, Integer status, FeSubject subject) {
        super(msg, status);
        this.course = subject.getName();
        this.details = subject.getDetail();

    }
}

