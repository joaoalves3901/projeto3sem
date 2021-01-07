package pt.iade.eval.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.eval.models.Empresa;

public interface EmpresaRepository
extends CrudRepository<Empresa, Integer> {
}