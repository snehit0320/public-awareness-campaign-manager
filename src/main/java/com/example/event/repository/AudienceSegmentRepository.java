package com.example.event.repository;

import com.example.event.model.AudienceSegment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AudienceSegmentRepository extends JpaRepository<AudienceSegment, Long> {
}
