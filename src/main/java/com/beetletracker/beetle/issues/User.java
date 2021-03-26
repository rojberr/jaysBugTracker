package com.beetletracker.beetle.issues;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name="AppUser")
public class User {
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
    private String firstName;
    private String lastName;

    private LocalDate creationDate;

    private String password;
    private String passwordSalt;

    private String email;
}
