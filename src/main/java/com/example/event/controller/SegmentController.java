package com.example.event.controller;

import com.example.event.model.AudienceSegment;
import com.example.event.repository.AudienceSegmentRepository;
import com.fasterxml.jackson.databind.DatabindContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;
import java.util.Collections;
import java.util.List;
@Controller
@RequestMapping("/segments")
public class SegmentController {

    @Autowired
    private AudienceSegmentRepository repository;

    // Show page with form + saved segments
    @GetMapping
    public String showSegments(Model model) {
        List<AudienceSegment> segments = repository.findAll();
        model.addAttribute("segments", segments);
        return "segments"; // segment.jsp
    }

    // Handle form submission
    @PostMapping("/create")
    public String createSegment(
            @RequestParam String region,
            @RequestParam(required = false) Integer minAge,
            @RequestParam(required = false) Integer maxAge,
            @RequestParam String language,
            @RequestParam(required = false, name = "riskTags") List<String> riskTags
    ) {
        AudienceSegment seg = new AudienceSegment();
        seg.setRegion(region);
        seg.setMinAge(minAge);
        seg.setMaxAge(maxAge);
        seg.setLanguage(language);

        // join tags into a single string
        seg.setRiskTags(riskTags != null ? riskTags : Collections.emptyList());


        // random audience count (demo)
        seg.setAudienceCount((long)(Math.random() * 50000 + 1000));

        // generate segment name
        StringBuilder nameBuilder = new StringBuilder(region);
        if (minAge != null || maxAge != null) {
            nameBuilder.append(" ");
            nameBuilder.append(minAge != null ? minAge : "").append("-");
            nameBuilder.append(maxAge != null ? maxAge : "");
        }
        if (!"Any".equalsIgnoreCase(language)) {
            nameBuilder.append(" (").append(language).append(")");
        }
        seg.setSegmentName(nameBuilder.toString());

        repository.save(seg);

        return "redirect:/segments"; // reload same page
    }

    // Delete segment
    @PostMapping("/delete/{id}")
    public String deleteSegment(@PathVariable Long id) {
        repository.deleteById(id);
        return "redirect:/segments";
    }
    @GetMapping("/select/{id}")
    public String selectSegment(@PathVariable Long id,
                                @RequestParam(required = false) String redirect,
                                HttpSession session) {
        AudienceSegment seg = repository.findById(id).orElse(null);
        if (seg != null) {
            // Store selection in session
            session.setAttribute("selectedSegment", seg.getSegmentName());
        }

        // Redirect back to the campaign form
        return "redirect:" + (redirect != null ? redirect : "/campaign/create");
    }

}
