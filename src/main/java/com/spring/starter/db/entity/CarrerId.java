package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import java.util.LinkedList;
import java.util.List;

@Entity
@Builder
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name="carrer_id")
public class CarrerId extends BaseEntity{

    String carrer_path_id;

    String large_category;

    @OneToMany(mappedBy = "large_category", cascade = CascadeType.ALL)
    List<CarrerPath> carrerPathList;
    public void addCarrerPath(CarrerPath carrer) {
        if (this.carrerPathList == null) {
            this.carrerPathList = new LinkedList<>();
        }
        this.carrerPathList.add(carrer);
        carrer.setLarge_category(this);
    }

    @OneToMany(mappedBy = "carrer_path_id", cascade = CascadeType.ALL)
    List<CarrerPathSubjects> carrerPathSubjectsList;
    public void addCarrerPathSubjectId(CarrerPathSubjects CarrerPathSubject) {
        if (this.carrerPathSubjectsList == null) {
            this.carrerPathSubjectsList = new LinkedList<>();
        }
        this.carrerPathSubjectsList.add(CarrerPathSubject);
        CarrerPathSubject.setCarrer_path_id(this);
    }

    String category;
}
