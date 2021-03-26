package com.beetletracker.beetle.user;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService{
    private final UserRepository userRepository;

    @Override
    public User findByEmail(String email) {
        return userRepository.findFirstByEmail(email).orElseThrow(()->
                new IllegalStateException("User with email "+email+"does not exists"));
    }
}
