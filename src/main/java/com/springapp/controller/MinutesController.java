package com.springapp.controller;

import com.springapp.model.MinutesModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MinutesController {

    @RequestMapping("/add")
    public String addMinutes(@ModelAttribute(value = "minutesModel") MinutesModel minutesModel) {
        System.out.println("Added minutes: " + minutesModel.getMinutes());

        return "addMinutes";
    }
}
