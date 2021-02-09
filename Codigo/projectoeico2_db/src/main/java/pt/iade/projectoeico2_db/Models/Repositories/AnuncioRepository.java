package pt.iade.projectoeico2_db.Models.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.projectoeico2_db.Models.Anuncio;

public interface AnuncioRepository extends CrudRepository <Anuncio, Integer> {

    String QueryFindAnuncio = "select * from anuncio where anuncio_id NOT IN (select cond_anuncio_id from condutor_has_anuncio) order by anuncio_origem;";
    String QueryFindAnuncioId= "select * from anuncio where anuncio_cliente_id = :clienteId";

    @Query(value = QueryFindAnuncio, nativeQuery = true)
    Iterable<Anuncio> findAnuncios ();

    @Query(value = QueryFindAnuncioId, nativeQuery = true)
    Iterable<Anuncio> findAnunciosId (@Param("clienteId") int clienteId);

    Iterable<Anuncio> findAnuncioByDestino (String destino);

   /* String QueryInsertAnuncio = "insert into anuncio (anuncio_cliente_id, anuncio_origem, anuncio_destino, anuncio_volume, anuncio_desc) values (:#{#anuncio.cliente.id}, "+
    ":#{#anuncio.origem},:#{#anuncio.destino},:#{#anuncio.volume},:#{#anuncio.descricao}";
    @Modifying
    @Transactional
    @Query(value=QueryInsertAnuncio, nativeQuery = true)
    void addAnuncio(@Param("Anuncio")int id);*/

}
