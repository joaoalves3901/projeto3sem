#Rafael Santos 20190800

create database projecto_eico2;

use projecto_eico2;

create table clientes (cliente_id int not null auto_increment,
					 cliente_nome varchar(60) not null,
					 cliente_morada varchar(60), 
					 cliente_dtnasc date not null,
					 cliente_genero char(1) not null,
					 cliente_email varchar(30),
                     cliente_pass varchar(30),
                     cliente_tlm int,
					 primary key (cliente_id));
		     		     
create table condutor (cond_id int not null, #id cliente
					 cond_carta int unique not null, #carta de conducao
					 primary key (cond_id));
		           
create table empresa (empresa_id int not null auto_increment,
						    empresa_name varchar(60) not null,
							empresa_desc varchar(60) not null, 
							primary key (empresa_id));	     
		    
create table anuncio (anuncio_id int not null auto_increment,
						   anuncio_cliente_id int not null,
						   anuncio_origem varchar(30) not null,
                           anuncio_destino varchar(30) not null,
                           anuncio_volume int not null,
                           anuncio_desc varchar(60) not null,
						   primary key (anuncio_id));		
		            		                 		     
create table condutor_has_anuncio (cond_anuncio_id int not null, #id anuncio
						 cond_id int not null,
                         estado varchar(45) not null,
						 primary key (cond_anuncio_id));
                         
                         
create table condutor_has_empresa (cond_empresa_id int not null auto_increment,
						 empresa_id int not null,
						 cond_id int not null,
                         cargo varchar(45) not null,
						 primary key (cond_empresa_id));

# Chaves estrangeiras
alter table condutor add constraint condutor_fk_clientes
            foreign key (cond_id) references clientes(cliente_id)
			ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table anuncio add constraint anuncio_fk_clientes
            foreign key (anuncio_cliente_id) references clientes(cliente_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;            
            
alter table condutor_has_anuncio add constraint condutor_fk_condutor
            foreign key (cond_id) references condutor(cond_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
alter table condutor_has_anuncio add constraint cpanuncio_fk_anuncio
            foreign key (cond_anuncio_id) references anuncio(anuncio_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table condutor_has_empresa add constraint empresa_fk_condutor
            foreign key (empresa_id) references empresa(empresa_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
alter table condutor_has_empresa add constraint condutor_fk_empresa
            foreign key (cond_id) references condutor(cond_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
