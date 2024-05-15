package com.spring.starter.db.entity;

import javax.persistence.*;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name="micro_major")
public class MicroMajor extends BaseEntity{

    String major_name;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
    FeSubject subject_code;

    String type;

}
