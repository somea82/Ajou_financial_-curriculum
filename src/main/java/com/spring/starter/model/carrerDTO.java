package com.spring.starter.model;

import com.spring.starter.db.entity.CarrerId;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class carrerDTO {
    private long id;
    private String largeCategory;
    private String smallCategory;
    private String jobInfo;
    private String jobEx;
    private String ncsCode;

}
