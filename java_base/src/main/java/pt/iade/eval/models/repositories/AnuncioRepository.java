package pt.iade.eval.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.eval.models.Anuncio;

public interface AnuncioRepository
extends CrudRepository<Anuncio, Integer> {
}