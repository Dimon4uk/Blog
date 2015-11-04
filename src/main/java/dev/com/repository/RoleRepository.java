package dev.com.repository;

import dev.com.domain.Role;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dmytrok on 21.10.15.
 */
public interface RoleRepository extends CrudRepository<Role,Integer> {
}
