package com.springapp.controller;

import com.springapp.model.GoalModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("goal")
public class GoalController {

    @RequestMapping(value = "/addGoal", method = RequestMethod.GET)
    public String addGoal(Model model) {
        GoalModel goalModel = new GoalModel();
        goalModel.setMinutes(10);

        model.addAttribute("goal", goalModel);

        return "addGoal";
    }

    @RequestMapping(value = "/addGoal", method = RequestMethod.POST)
    public String updateGoal(@ModelAttribute("goal") GoalModel goalModel) {
        System.out.println("Minutes updated: " + goalModel.getMinutes());

        return "redirect:addMinutes";
    }
}
