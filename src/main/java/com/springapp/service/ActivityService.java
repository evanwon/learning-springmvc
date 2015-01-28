package com.springapp.service;

import com.springapp.model.Activity;

import java.util.ArrayList;
import java.util.List;

@org.springframework.stereotype.Service("activityService")
public class ActivityService implements Service {

    @Override
    public List<Activity> findAllActivities() {
        List<Activity> activities = new ArrayList<>();

        activities.add(new Activity("run"));
        activities.add(new Activity("bike"));
        activities.add(new Activity("swim"));

        return activities;
    }
}
