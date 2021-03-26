package com.beetletracker.beetle.issues;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.Month;
import java.util.List;

@Service
public class IssuesService {

    private final IssuesRepository issuesRepository;

    public IssuesService(IssuesRepository issuesRepository) {
        this.issuesRepository = issuesRepository;
    }


    @Autowired
    public List<Issue> getIssues() {
        return issuesRepository.findAll();
    }
}
