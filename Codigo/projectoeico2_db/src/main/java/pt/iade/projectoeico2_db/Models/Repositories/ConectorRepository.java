package pt.iade.projectoeico2_db.Models.Repositories;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.projectoeico2_db.Models.ConectorAnuncioCondutor;

public interface ConectorRepository extends CrudRepository <ConectorAnuncioCondutor, Integer> {

    /*String QueryAddDoneAnuncio = "insert into condutor_has_anuncio (cond_anuncio_id, cond_id, estado) values (:#{#anuncio.getId()}, "+
    ":#{#condutor.getCondutorid()}, :#{#ConectorAnuncioCondutor.getEstado()})";

    @Modifying
    @Transactional
    @Query(value=QueryAddDoneAnuncio, nativeQuery=true)
    int saveAlbumTrack(@Param("anuncioID") int id);*/

}
