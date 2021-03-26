package com.beetletracker.beetle.issues;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(path = "api/v1/issues")
public class IssuesController {

    private final IssuesService issuesService;

    @Autowired
    public IssuesController(IssuesService issuesService) {
        this.issuesService =  issuesService;
    }

    @GetMapping
    public List<Issue> getIssues() {
        return issuesService.getIssues();
    }


}
