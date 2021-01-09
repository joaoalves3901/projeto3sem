package pt.iade.projectoeico2_db.Models.Repositories;

import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import pt.iade.projectoeico2_db.Models.Cliente;

public interface ClienteRepository extends CrudRepository <Cliente, Integer> {

}
