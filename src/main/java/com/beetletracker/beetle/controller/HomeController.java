package com.beetletracker.beetle.controller;

<<<<<<< HEAD
import com.beetletracker.beetle.issues.Issue;
import com.beetletracker.beetle.issues.IssueCategoryService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
=======
>>>>>>> e9b9e248f79344e4f965fe5a70f3b8729730de5a
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> e9b9e248f79344e4f965fe5a70f3b8729730de5a
@Controller
public class HomeController {

    @GetMapping("/home")
    public String getIssues() {
<<<<<<< HEAD
        return "home";
=======
        return "issues/home";
>>>>>>> e9b9e248f79344e4f965fe5a70f3b8729730de5a
    }



<<<<<<< HEAD


=======
>>>>>>> e9b9e248f79344e4f965fe5a70f3b8729730de5a
}
