package com.spring.starter.api.response.index;

import com.spring.starter.api.response.SubjectDto;
import com.spring.starter.common.model.BaseResponse;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class SubjectRes extends BaseResponse {

    private List<SubjectDto> subjectDtoList;

    public SubjectRes(String msg, Integer status, List<SubjectDto> subjectDtoList) {
        super(msg, status);
        this.subjectDtoList = subjectDtoList;
    }
}
