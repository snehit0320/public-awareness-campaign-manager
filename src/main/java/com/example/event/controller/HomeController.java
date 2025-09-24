package com.example.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    // Example only; keep your own package/class names
    @GetMapping("/")
    public String home() {
        return "index";
    }

    @GetMapping("/home/campaign")
    public String campaigns() {
        return "campaign";
    }

    @GetMapping("/create")
    public String create() {
        return "createCampaign";
    }

    @GetMapping("/home/segments")
    public String segments() {
        return "segments";
    }

    @GetMapping("/scheduler")
    public String scheduler() {
        return "scheduler";
    }

    @GetMapping("/performance")
    public String perf() {
        return "performance";
    }

    @GetMapping("/templates")
    public String templates() {
        return "templates";
    }

    @GetMapping("/collaboration")
    public String collab() {
        return "collaboration";
    }



    @GetMapping("/about")
    public String about() {
        return "about";  // will resolve to /WEB-INF/jsp/about.jsp
    }
}
