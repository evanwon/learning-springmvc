package com.springapp.controller;

import com.springapp.model.Activity;
import com.springapp.model.MinutesModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MinutesController {

    @RequestMapping("/addMinutes")
    public String addMinutes(@ModelAttribute(value = "minutesModel") MinutesModel minutesModel) {
        System.out.println("Added minutes: " + minutesModel.getMinutes());

        System.out.println("Activity: " + minutesModel.getActivity());

        return "addMinutes";
    }

    @RequestMapping(value = "/activities", method = RequestMethod.GET)
    public @ResponseBody List<Activity> findAllActivities() {
        List<Activity> activities = new ArrayList<>();

        activities.add(new Activity("run"));
        activities.add(new Activity("bike"));
        activities.add(new Activity("swim"));

        return activities;
    }

}
