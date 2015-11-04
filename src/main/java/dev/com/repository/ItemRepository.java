package dev.com.repository;

import dev.com.domain.Item;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dmytrok on 21.10.15.
 */
public interface ItemRepository extends CrudRepository<Item,Integer> {
}
