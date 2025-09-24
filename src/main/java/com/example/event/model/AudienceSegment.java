package com.example.event.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "audience_segments")
public class AudienceSegment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String region;

    private Integer minAge;
    private Integer maxAge;

    private String language;

    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "segment_risk_tags", joinColumns = @JoinColumn(name = "segment_id"))
    @Column(name = "risk_tag")
    private List<String> riskTags;

    private String segmentName;

    private Long audienceCount; // Example: 12,340 people

    // --- Constructors ---
    public AudienceSegment() {}

    public AudienceSegment(String region, Integer minAge, Integer maxAge, String language, List<String> riskTags, String segmentName, Long audienceCount) {
        this.region = region;
        this.minAge = minAge;
        this.maxAge = maxAge;
        this.language = language;
        this.riskTags = riskTags;
        this.segmentName = segmentName;
        this.audienceCount = audienceCount;
    }

    // --- Getters & Setters ---
    public Long getId() {
        return id;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public Integer getMinAge() {
        return minAge;
    }

    public void setMinAge(Integer minAge) {
        this.minAge = minAge;
    }

    public Integer getMaxAge() {
        return maxAge;
    }

    public void setMaxAge(Integer maxAge) {
        this.maxAge = maxAge;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public List<String> getRiskTags() {
        return riskTags;
    }

    public void setRiskTags(List<String> riskTags) {
        this.riskTags = riskTags;
    }

    public String getSegmentName() {
        return segmentName;
    }

    public void setSegmentName(String segmentName) {
        this.segmentName = segmentName;
    }

    public Long getAudienceCount() {
        return audienceCount;
    }

    public void setAudienceCount(Long audienceCount) {
        this.audienceCount = audienceCount;
    }
}
