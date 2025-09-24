package com.example.event.controller;

import com.example.event.model.Campaign;
import com.example.event.repository.CampaignRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

@Controller
@RequestMapping("/campaign")
public class CampaignController {

    private final CampaignRepository campaignRepo;

    @Value("${upload.dir:uploads}") // relative folder inside static
    private String uploadDir;

    public CampaignController(CampaignRepository campaignRepo) {
        this.campaignRepo = campaignRepo;
    }

    // Show list of campaigns
    @GetMapping
    public String listCampaigns(Model model) {
        List<Campaign> campaigns = campaignRepo.findAll();
        model.addAttribute("campaign", campaigns);
        return "campaign"; // JSP page
    }

    // Show create campaign form
    @GetMapping("/create")
    public String showCreateForm(Model model, HttpSession session) {
        model.addAttribute("campaign", new Campaign());

        // Check if user selected a segment previously
        String selectedSegment = (String) session.getAttribute("selectedSegment");
        if (selectedSegment != null) {
            model.addAttribute("selectedSegment", selectedSegment);
            session.removeAttribute("selectedSegment"); // clear after use
        }

        return "createCampaign";
    }

    // Handle form submission
    @PostMapping("/create")
    public String createCampaign(
            @RequestParam String title,
            @RequestParam(required = false) String objective,
            @RequestParam(required = false) String message,
            @RequestParam(required = false) MultipartFile mediaFile,
            @RequestParam(required = false) List<String> channels,
            @RequestParam(required = false) String segmentSummary,
            @RequestParam String startDate,
            @RequestParam String startTime,
            @RequestParam String frequency,
            @RequestParam(required = false) String templateId
    ) throws IOException {

        Campaign c = new Campaign();
        c.setTitle(title);
        c.setObjective(objective);
        c.setMessage(message);

        // Handle file upload
            if (mediaFile != null && !mediaFile.isEmpty()) {
                String fileName = Path.of(mediaFile.getOriginalFilename()).getFileName().toString();
                Path uploadPath = Paths.get(uploadDir); // absolute path from properties

                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }

                Path filePath = uploadPath.resolve(fileName);
                mediaFile.transferTo(filePath.toFile());

                // Save relative path for JSP
                c.setMediaPath("/uploads/" + fileName); // map this in your resource handler
            }




        if (channels != null) {
            c.setChannels(String.join(",", channels));
        }

        c.setSegmentSummary(segmentSummary);
        c.setStartDate(LocalDate.parse(startDate));
        c.setStartTime(LocalTime.parse(startTime));
        c.setFrequency(frequency);
        c.setTemplateId(templateId);

        campaignRepo.save(c);
        return "redirect:/campaign";
    }


}
