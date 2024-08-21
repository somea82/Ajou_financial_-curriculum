package com.spring.starter.api.controller;

import com.spring.starter.api.service.AdminService;
import com.spring.starter.db.entity.CarrerPath;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/carrer-path")
public class AdminEditController {
    @Autowired
    private AdminService careerPathService;

    @GetMapping("/edit")
    public String editCarrerPath(@RequestParam("id") int id, Model model) {
        CarrerPath carrerPath = careerPathService.getCarrerPathById(id);
        System.out.println("AdminEditController.editCarrerPath: "+ carrerPath.getJobEx());
        model.addAttribute("careerPath", carrerPath);
        return "jobdetail/edit_carrer_path"; // JSP 파일명
    }

    @PostMapping("/update")
    public String updateCareerPath(@ModelAttribute CarrerPath carrerPath) {
        careerPathService.updateCarrerPath(carrerPath);
        return "redirect:/admin"; // 업데이트 후 리다이렉트
    }
}
