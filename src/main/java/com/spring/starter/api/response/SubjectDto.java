package com.spring.starter.api.response;

import com.spring.starter.db.entity.FeSubject;
import com.spring.starter.db.entity.FilPosition;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubjectDto {

    private String code;
    private String course;
    private int rowId;
    private int columnId;

    public SubjectDto(FeSubject subject) {
        this.code = subject.getCode();
        this.course = subject.getName();
    }
}
