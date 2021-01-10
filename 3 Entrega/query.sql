/* ORDENAR A TABELA CLIENTES ALFABETICAMENTE PELO NOME */
select * from clientes order by cliente_nome;

/* ORDENAR A TABELA CLIENTES NUMERICAMENTE PELO ID */
select * from clientes order by cliente_id;

/* SELECIONA TODOS OS QUE TÊM UMA ENCOMENDA ENTREGUE DA EMPRESA X */
 SELECT condutor_has_anuncio.cond_id, condutor_has_empresa.empresa_id, empresa.empresa_name
	FROM condutor_has_empresa
	INNER JOIN condutor_has_anuncio ON condutor_has_empresa.cond_id = condutor_has_anuncio.cond_id
	INNER JOIN empresa ON condutor_has_empresa.empresa_id = empresa.empresa_id
	AND condutor_has_anuncio.estado = 'Entregue';

/* SELECIONA TODOS OS CLIENTES QUE SÃO CONDUTORES ORDENANDO POR ORDEM ALFABETICA */
SELECT * FROM clientes where cliente_id = any (select cliente_id from condutor) order by cliente_nome;

/* SELECIONA TODOS OS DONOS DE EMPRESAS */
SELECT condutor.cliente_id, condutor_has_empresa.empresa_id, clientes.cliente_nome
	FROM condutor
	INNER JOIN condutor_has_empresa ON condutor.cond_id = condutor_has_empresa.cond_id
	AND condutor_has_empresa.cargo = 'Dono'
    INNER JOIN clientes ON condutor.cliente_id = clientes.cliente_id;
    
/* SELECIONA TODOS OS FUNCIONARIOS DE EMPRESAS */
SELECT condutor.cliente_id, condutor_has_empresa.empresa_id, clientes.cliente_nome
	FROM condutor
	INNER JOIN condutor_has_empresa ON condutor.cond_id = condutor_has_empresa.cond_id
	AND condutor_has_empresa.cargo = 'Funcionario'
    INNER JOIN clientes ON condutor.cliente_id = clientes.cliente_id;
    
/* SELECIONA TODOS OS COM DESTINO A LISBOA */
select * from anuncio where anuncio_destino = 'Lisboa';

/* SELECIONA TODOS OS COM DESTINO A PORTO */
select * from anuncio where anuncio_destino = 'Porto';

/* SELECIONA TODOS OS COM DESTINO A FARO */
select * from anuncio where anuncio_destino = 'Faro';
    
/* SELECIONA TODOS OS COM DESTINO A Castelo Branco */
select * from anuncio where anuncio_destino = 'Castelo Branco';

/* SELECIONA TODOS OS COM DESTINO A Santarem*/
select * from anuncio where anuncio_destino = 'Santarem';

/* SELECIONA TODOS OS COM ORIGEM EM LISBOA*/
select * from anuncio where anuncio_origem = 'Lisboa';

/* SELECIONA TODOS OS COM ORIGEM EM PORTO*/
select * from anuncio where anuncio_origem = 'Porto';

/* SELECIONA TODOS OS COM ORIGEM EM FARO*/
select * from anuncio where anuncio_origem = 'Faro';

/* SELECIONA TODOS OS COM ORIGEM EM BRAGA*/
select * from anuncio where anuncio_origem = 'Braga';

/* SELECIONA TODOS OS COM ORIGEM EM BEJA*/
select * from anuncio where anuncio_origem = 'Beja';

/* SELECIONA TODOS OS COM ORIGEM EM LEIRIA*/
select * from anuncio where anuncio_origem = 'Leiria';
    
/* SELECIONA TODOS OS COM ORIGEM EM EVORA*/
select * from anuncio where anuncio_origem = 'Evora';

/* SELECIONA TODOS OS ANUNCIOS E ORDENADA PELO ESTADO DA MESMA */

 SELECT condutor_has_anuncio.estado, anuncio.anuncio_cliente_id
	FROM anuncio
	INNER JOIN condutor_has_anuncio ON anuncio.anuncio_id = condutor_has_anuncio.cond_anuncio_id
    ORDER BY estado;
    

