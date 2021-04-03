package com.beetletracker.beetle.controller;

import com.beetletracker.beetle.issues.Issue;
import com.beetletracker.beetle.issues.IssuesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
//@RequestMapping(path = "api/v1/issues")
public class IssuesController {

    private final IssuesService issuesService;

    @Autowired
    public IssuesController(IssuesService issuesService) {
        this.issuesService =  issuesService;
    }
//    @GetMapping
//    public List<Issue> getIssues() {
//        return issuesService.getIssues();
//    }
    @GetMapping("/create")
    public String createGet() {
        return "issues/create";
    }
}
