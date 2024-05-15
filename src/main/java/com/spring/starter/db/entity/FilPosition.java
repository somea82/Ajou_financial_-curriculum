package com.spring.starter.db.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
@Table(name="fil_position")
public class FilPosition extends BaseEntity{

    int rowId;
    int colId;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn
    FeSubject code;
}

