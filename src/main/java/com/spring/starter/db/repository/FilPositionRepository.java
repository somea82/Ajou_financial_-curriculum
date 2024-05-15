package com.spring.starter.db.repository;

import java.util.Optional;

import com.spring.starter.db.entity.FilPosition;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface FilPositionRepository extends JpaRepository<FilPosition, Long> {

    Optional<FilPosition> findByCode(String code);

    Optional<FilPosition> findFilPositionByRowIdAndColId(int rowId, int colId);

}


