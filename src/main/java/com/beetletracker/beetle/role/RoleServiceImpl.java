package com.beetletracker.beetle.role;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class RoleServiceImpl implements RoleService{
    private final RoleRepository roleRepository;

    @Override
    public Role findByRole(String role) {
        return roleRepository.findByRole(role).orElseThrow(()->new IllegalStateException("Role "+role+" does not exists!"));
    }
}
