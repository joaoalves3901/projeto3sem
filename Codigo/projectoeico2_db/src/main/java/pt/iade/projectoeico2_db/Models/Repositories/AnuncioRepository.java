package pt.iade.projectoeico2_db.Models.Repositories;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import pt.iade.projectoeico2_db.Models.Anuncio;

public interface AnuncioRepository extends CrudRepository <Anuncio, Integer> {

    String QueryFindAnuncio =
    "SELECT a.anuncio_id AS id, a.anuncio_cliente_id AS cliente, a.anuncio_origem AS origem, "+
    "a.anuncio_destino AS destino, a.anuncio_volume AS volume, a.anuncio_desc AS descricao, "+
    "FROM anuncio a";

    @Query(value = QueryFindAnuncio + " Where a.anuncio_destino=:destino", nativeQuery = true)
    Iterable<Anuncio> findAnuncioByDestino (@Param("destino") String destino);
}
