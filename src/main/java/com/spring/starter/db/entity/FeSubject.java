package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.*;
import java.util.LinkedList;
import java.util.List;


import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="fe_subject")
public class FeSubject extends BaseEntity{

    @NotNull
    String code;

    String name;

    private String detail;

    private int semester;

    private int is_mandatory;

    private int original_language;


    @OneToMany(mappedBy = "code", cascade = CascadeType.ALL)
    List<FilPosition> positionList;
    public void addPosition(FilPosition position) {
        if (this.positionList == null) {
            this.positionList = new LinkedList<>();
        }
        this.positionList.add(position);
        position.setCode(this);
    }

    @OneToMany(mappedBy = "code", cascade = CascadeType.ALL)
    List<JointDepartments> jointDepartmentsList;
    public void addJoint(JointDepartments jointDepartment) {
        if (this.jointDepartmentsList == null) {
            this.jointDepartmentsList = new LinkedList<>();
        }
        this.jointDepartmentsList.add(jointDepartment);
        jointDepartment.setCode(this);
    }


    @OneToMany(mappedBy = "subject_code", cascade = CascadeType.ALL)
    List<MicroMajor> microMajorsList;
    public void addMicro(MicroMajor MicroMajor) {
        if (this.microMajorsList == null) {
            this.microMajorsList = new LinkedList<>();
        }
        this.microMajorsList.add(MicroMajor);
        MicroMajor.setSubject_code(this);
    }

    @OneToMany(mappedBy = "code", cascade = CascadeType.ALL)
    List<PrerequisiteSubjects> PrerequisiteSubjectList;
    public void addPrerequisite(PrerequisiteSubjects PrerequisiteSubject) {
        if (this.PrerequisiteSubjectList == null) {
            this.PrerequisiteSubjectList = new LinkedList<>();
        }
        this.PrerequisiteSubjectList.add(PrerequisiteSubject);
        PrerequisiteSubject.setCode(this);
    }


    @OneToMany(mappedBy = "code", cascade = CascadeType.ALL)
    List<RelateSubjects> RelateSubjectList;
    public void addRelateSubject(RelateSubjects RelateSubject) {
        if (this.RelateSubjectList == null) {
            this.RelateSubjectList = new LinkedList<>();
        }
        this.RelateSubjectList.add(RelateSubject);
        RelateSubject.setCode(this);
    }

    @OneToMany(mappedBy = "subject_code", cascade = CascadeType.ALL)
    List<CarrerPathSubjects> carrerPathSubjectsList;
    public void addCarrerPathSubject(CarrerPathSubjects CarrerPathSubject) {
        if (this.carrerPathSubjectsList == null) {
            this.carrerPathSubjectsList = new LinkedList<>();
        }
        this.carrerPathSubjectsList.add(CarrerPathSubject);
        CarrerPathSubject.setSubject_code(this);
    }
}
