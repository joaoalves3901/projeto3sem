package pt.iade.projectoeico2_db.Models.Repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import pt.iade.projectoeico2_db.Models.Empresa;

public interface EmpresaRepository extends CrudRepository <Empresa, Integer>{

    String QueryFindEmpresa =
    "SELECT e.empresa_id AS id, e.empresa_name AS nome, e.empresa_desc AS descricao, "+
    "FROM empresa e ";
    

    @Query(value= QueryFindEmpresa, nativeQuery=true)
    Iterable<Empresa> findAllEmpresa();

    @Query(value = QueryFindEmpresa + " Where e.empresa_id=:id", nativeQuery = true)
    Iterable<Empresa> findEmpresaById (@Param("id") int id);

}

