package com.beetletracker.beetle.controller;

import com.beetletracker.beetle.issues.Issue;
import com.beetletracker.beetle.issues.IssueService;
import com.beetletracker.beetle.user.User;
import com.beetletracker.beetle.user.UserService;
import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@AllArgsConstructor
public class HomeController {
    private final UserService userService;
    private final IssueService issueService;

    @GetMapping("/home")
    public String getIssues() {
        return "home";
    }

    @GetMapping("/app/home")
    public String myIssuesGet(Model model, Authentication auth){
        List<Issue> issues = issueService.findAllByUser(userService.findByEmail(auth.getName()));
        model.addAttribute("issues", issues);
        return "issues/list";
    }
}
