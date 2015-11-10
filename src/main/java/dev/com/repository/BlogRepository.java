package dev.com.repository;

import dev.com.domain.Blog;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dmytrok on 21.10.15.
 */
public interface BlogRepository extends CrudRepository<Blog,Integer> {

    Blog findByUser(Integer id);
}
