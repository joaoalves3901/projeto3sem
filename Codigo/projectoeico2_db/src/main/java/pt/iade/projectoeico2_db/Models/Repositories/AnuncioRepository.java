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

    String QueryFindAnuncio = "SELECT * FROM anuncio a";

    //@Query(value = QueryFindAnuncio + " Where a.anuncio_destino=:destino", nativeQuery = true)
    Iterable<Anuncio> findAnuncioByDestino (String destino);
}
