DELIMITER //
CREATE PROCEDURE procurar_anuncio (
IN origem VARCHAR(30),
IN destino  VARCHAR(30) 
)
BEGIN

SELECT * from anuncio where anuncio_origem = origem 
AND anuncio_destino = destino;



END //

 DELIMITER ;