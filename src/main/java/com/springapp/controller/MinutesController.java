package com.springapp.controller;

import com.springapp.model.Activity;
import com.springapp.model.MinutesModel;
import com.springapp.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MinutesController {

    @Autowired
    private ActivityService activityService;

    @RequestMapping("/addMinutes")
    public String addMinutes(@ModelAttribute(value = "minutesModel") MinutesModel minutesModel) {
        System.out.println("Added minutes: " + minutesModel.getMinutes());

        System.out.println("Activity: " + minutesModel.getActivity());

        return "addMinutes";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.GET)
    public @ResponseBody List<Activity> findAllActivities() {

        return activityService.findAllActivities();
    }

}
