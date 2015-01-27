package com.springapp.model;

import org.springframework.http.MediaType;
import org.springframework.web.accept.ContentNegotiationManager;
import org.springframework.web.servlet.view.ContentNegotiatingViewResolver;

import java.util.HashMap;

public class Activity {
    private String description;

    public String getDescription() {
        return description;
    }

    public Activity(String description) {
        this.description = description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
