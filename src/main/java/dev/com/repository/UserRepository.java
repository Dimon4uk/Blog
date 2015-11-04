package dev.com.repository;

import dev.com.domain.User;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dmytrok on 19.10.15.
 */
public interface UserRepository extends CrudRepository<User,Integer> {

    User findByName(String name);

}
