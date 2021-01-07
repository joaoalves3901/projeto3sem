package pt.iade.eval.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.eval.models.Cliente;

public interface ClienteRepository
extends CrudRepository<Cliente, Integer> {
}