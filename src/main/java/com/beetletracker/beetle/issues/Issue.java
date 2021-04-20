package com.beetletracker.beetle.issues;
import com.beetletracker.beetle.user.User;
import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Data
@Entity
@Table
public class Issue {
    @Id
    @SequenceGenerator(
            name = "issues_sequence",
            sequenceName = "issues_sequence",
            allocationSize = 1
    )
    @GeneratedValue(
            strategy = GenerationType.SEQUENCE,
            generator = "issues_sequence"
    )
    private Long id;
    private LocalDate dob;
    private LocalTime tob;
    private String subject;
    private String description;
    private boolean solved;
    @ManyToOne
    private User user;
    @ManyToOne
    private IssueCategory category;

}
