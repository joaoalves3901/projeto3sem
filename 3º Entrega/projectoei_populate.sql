#Rafael Santos 20190800

-- Informação
insert into empresa (empresa_name,empresa_desc) values('DHL', 'DHL Express');
insert into empresa (empresa_name,empresa_desc) values('UPS','Unit Parcel Service');
insert into empresa (empresa_name,empresa_desc) values('MRW','MRW');
insert into empresa (empresa_name,empresa_desc) values('Nacex', 'Nacex Portugal');
insert into empresa (empresa_name,empresa_desc) values('DPDGroup', 'DPD e-commerce');
                        
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Joaquim Pires Lopes','Rua do Presepio N5',str_to_date('1995.01.01','%Y.%m.%d'),'M','jpl@gmail.com','ihd2hwd2',928340843);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Ana Maria Fonseca','Rua dos Sete Ceus N7',str_to_date('1997.03.03','%Y.%m.%d'),'F','ana@sapo.pt','jhh2jde',918240824);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Paula Antunes','Rua Vasco da Gama N35',str_to_date('1996.07.06','%Y.%m.%d'),'F','	pantunes@sapo.pt','kjhbd2jhj2de', 923289238);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Joana Ramalho Silva','Rua Fernando Pessoa N53',str_to_date('1984.09.23','%Y.%m.%d'),'F','juana@mac.com','oakjkaj',928323929);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Rui Manuel Silva','Rua Gago Coutinho N1',str_to_date('1994.08.15','%Y.%m.%d'),'M','rms@gmail.com','hjwpwqo',938329382);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('João Paulo Santos','Rua do ouro N29',str_to_date('1991.11.16','%Y.%m.%d'),'M','jps@yahoo.com','jedjdede',928483934);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Cristina Fernandes Lopes','Rua Paulo Seixo N29',str_to_date('1996.01.07','%Y.%m.%d'),'F','cfl@yahoo.com','jkjd3kjd',928384929);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Miguel Pinto Leite','Rua Capitao Fausto N1',str_to_date('1994.01.07','%Y.%m.%d'),'M','mpl@zmail.com','dwjwdeoed',938291829);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Francisco Costa Rosa','Rua da Liberdade',str_to_date('1998.02.16','%Y.%m.%d'),'M','fcr12@gmail.com','jdwdjwhde',918383829);  
insert into clientes (cliente_nome, cliente_morada, cliente_dtnasc, cliente_genero, cliente_email,cliente_pass,cliente_tlm) values ('Elsa Fialho Pinto','Rua Pedro Regouga N1',str_to_date('1999.10.29','%Y.%m.%d'),'F','elsafi@sapo.pt','jkjekeji1',938439283);  
                        
insert into cparticular (cparticular_id, cparticular_cliente_id) values (473273878,1);
insert into cparticular (cparticular_id, cparticular_cliente_id) values (473234534,3);
insert into cparticular (cparticular_id, cparticular_cliente_id) values (413274223,2);
insert into cparticular (cparticular_id, cparticular_cliente_id) values (455644664,4);

insert into funcionario (func_id, func_cliente_id, func_empresa_id, func_cargo) values (455345324,5,1,'Dono');
insert into funcionario (func_id, func_cliente_id, func_empresa_id, func_cargo) values (455537764,6,2,'Funcionario'); 
insert into funcionario (func_id, func_cliente_id, func_empresa_id, func_cargo) values (459382717,7,3,'Funcionario'); 
insert into funcionario (func_id, func_cliente_id, func_empresa_id, func_cargo) values (882938387,8,5,'Funcionario'); 

insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (1,'Lisboa','Castelo Branco',103,'Cabeceira');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (2,'Porto','Faro',245,'Secretaria');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (3,'Faro','Porto',58,'Caixa com loiça');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (4,'Beja','Lisboa',346,'Mobilia');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (5,'Leiria','Porto',594,'Estrado Cama');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (1,'Lisboa','Santarem',22,'Caixa Vinis');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (3,'Coimbra','Porto',44,'Computadores');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (7,'Braga','Lisboa',789,'Encomenda de Vinho');
insert into anuncio (anuncio_cliente_id,anuncio_origem,anuncio_destino,anuncio_volume,anuncio_desc) values (9,'Evora','Faro',543,'Mobilia Variada');
 
insert into funcionario_has_anuncio (anuncio_id, func_id, estado) values (1,459382717,'Confirmada'); 
insert into funcionario_has_anuncio (anuncio_id, func_id, estado) values (2,459382717,'Entregue'); 
insert into funcionario_has_anuncio (anuncio_id, func_id, estado) values (3,455537764,'Confirmada'); 
insert into funcionario_has_anuncio (anuncio_id, func_id, estado) values (4,882938387,'Espera Confirmacao'); 
insert into funcionario_has_anuncio (anuncio_id, func_id, estado) values (5,882938387,'Entregue');

insert into cparticular_has_anuncio (anuncio_id, cparticular_id, estado) values (6,473273878,'Confirmada'); 
insert into cparticular_has_anuncio (anuncio_id, cparticular_id, estado) values (7,413274223,'Espera Confirmacao'); 
insert into cparticular_has_anuncio (anuncio_id, cparticular_id, estado) values (8,473234534,'Confirmada'); 
insert into cparticular_has_anuncio (anuncio_id, cparticular_id, estado) values (9,455644664,'Entregue');
 
commit;
          