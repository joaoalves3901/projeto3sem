DELIMITER //
CREATE PROCEDURE adicionar_anuncio 
(
IN anuncio_cliente_id INTEGER,
IN anuncio_origem   VARCHAR(30),  
IN anuncio_destino  VARCHAR(30), 
IN anuncio_volume   INTEGER,  
IN anuncio_desc     VARCHAR(60)

)
  BEGIN

INSERT INTO anuncio (anuncio_cliente_id, anuncio_origem, anuncio_destino, anuncio_volume, anuncio_desc)
VALUES (anuncio_cliente_id, anuncio_origem, anuncio_destino, anuncio_volume, anuncio_desc);

insert into anuncioinfo (anuncio_data, cliente_id, anuncio_estado_id, anuncio_id)
VALUES (curdate(), anuncio_cliente_id, 1 , LAST_INSERT_ID());

END //
        
 DELIMITER ;  