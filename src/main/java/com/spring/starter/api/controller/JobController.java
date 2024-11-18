package com.spring.starter.api.controller;

import com.spring.starter.api.service.JobService;
import com.spring.starter.db.entity.CarrerPath;
import com.spring.starter.model.carrerDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;


@Controller
public class JobController {

    @Autowired
    private JobService jobService;
    @GetMapping("/jobdetail/{id}")
    public String jobDetail(@PathVariable("id") long id, Model model) {
        carrerDTO job = jobService.getJobById(id);
        if (job == null) {
            return "redirect:/error";  // ID가 유효하지 않으면 오류 페이지로 리다이렉트
        }
        model.addAttribute("job", job);
        return "jobdetail/job_information";
    }
}