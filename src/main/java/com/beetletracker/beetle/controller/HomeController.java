package com.beetletracker.beetle.controller;

import com.beetletracker.beetle.issues.Issue;
import com.beetletracker.beetle.issues.IssueCategoryService;
import org.springframework.security.oauth2.core.oidc.user.OidcUser;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Controller for the home page with the list of issues.
 */
@Controller
@AllArgsConstructor
public class HomeController {
    private final IssueCategoryService issueCategoryService;

    @GetMapping("/home")
    public String home(Model model, @AuthenticationPrincipal OidcUser principal) {
        if (principal != null) {
            model.addAttribute("profile", principal.getClaims());
        }
        return "home";
    }
}
