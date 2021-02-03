	/* ORDENAR A TABELA CLIENTES ALFABETICAMENTE PELO NOME */
    
	SELECT * from clientes order by cliente_nome;

	/* ORDENAR A TABELA CLIENTES NUMERICAMENTE PELO ID */
    
	SELECT * from clientes order by cliente_id;

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
    
	/* SELECIONA TODOS OS ANUNCIOS DISPONIVEIS PARA SEREM ACEITES ORDENANDO PELA ORIGEM */

	SELECT anuncio.anuncio_id, anuncio.anuncio_cliente_id, anuncio.anuncio_origem, anuncio.anuncio_destino, anuncio.anuncio_desc
	FROM anuncio
	INNER JOIN condutor_has_anuncio ON anuncio.anuncio_id = condutor_has_anuncio.cond_anuncio_id
	AND condutor_has_anuncio.estado_entrega_id = 3
    INNER JOIN anuncioinfo ON anuncio.anuncio_id = anuncioinfo.anuncio_id
    AND anuncioinfo.anuncio_estado_id = 1;
    
	/* SELECIONA TODOS OS QUE TÊM UMA ENCOMENDA ENTREGUE DA EMPRESA X */
    
	SELECT condutor_has_anuncio.cond_id, condutor_has_empresa.empresa_id, empresa.empresa_name
	FROM condutor_has_empresa
	INNER JOIN condutor_has_anuncio ON condutor_has_empresa.cond_id = condutor_has_anuncio.cond_id
	INNER JOIN empresa ON condutor_has_empresa.empresa_id = empresa.empresa_id
	AND condutor_has_anuncio.estado_entrega_id = 2;
    
    /* SELECIONA TODOS OS ANUNCIOS ACEITES E ORDENADA PELO ESTADO DA MESMA */

	SELECT condutor_has_anuncio.estado_entrega_id, anuncio.anuncio_cliente_id
	FROM anuncio
	INNER JOIN condutor_has_anuncio ON anuncio.anuncio_id = condutor_has_anuncio.cond_anuncio_id
    ORDER BY estado_entrega_id;
    

    /*SELECIONA TODOS OS ANUNCIOS QUE AINDA NAO FORAM ACEITES POR CONDUTORES*/
    select * from anuncio where anuncio_id NOT IN (select cond_anuncio_id from condutor_has_anuncio) order by anuncio_origem;
    
    
    
    
