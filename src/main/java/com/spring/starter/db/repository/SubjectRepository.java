package com.spring.starter.db.repository;

import com.spring.starter.db.entity.FeSubject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface SubjectRepository extends JpaRepository<FeSubject, Long> {
    Optional<FeSubject> findByCode(String code);

}

