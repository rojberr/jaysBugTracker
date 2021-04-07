package com.beetletracker.beetle.controller;

import com.beetletracker.beetle.issues.IssuesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
        return "issues/report";
    }
}
