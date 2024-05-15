package com.spring.starter.db.entity;

import lombok.*;

import javax.persistence.*;
import javax.persistence.Entity;
import javax.validation.constraints.NotNull;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name="carrer_path")
public class CarrerPath extends BaseEntity{

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
    CarrerId large_category;
    String small_category;


    @OneToMany(mappedBy = "small_category", cascade = CascadeType.ALL)
    List<CarrerPathSubjects> carrerPathSubjectsList;
    public void addSmallCategory(CarrerPathSubjects CarrerPathSubject) {
        if (this.carrerPathSubjectsList == null) {
            this.carrerPathSubjectsList = new LinkedList<>();
        }
        this.carrerPathSubjectsList.add(CarrerPathSubject);
        CarrerPathSubject.setSmall_category(this);
    }

}
