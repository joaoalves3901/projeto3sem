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
		     		     
create table funcionario (func_id int not null, #carta de conducao
					 func_cliente_id int unique not null,
					 func_empresa_id int not null,
                     func_cargo varchar(30) not null,
					 primary key (func_id));
		           
create table empresa (empresa_id int not null auto_increment,
						    empresa_name varchar(60) not null,
							empresa_desc varchar(60) not null, 
							primary key (empresa_id));	     
		           
create table cparticular (cparticular_id int not null, #carta de conducao
						  cparticular_cliente_id int unique not null, 
						  primary key (cparticular_id));
		    
create table anuncio (anuncio_id int not null auto_increment,
						   anuncio_cliente_id int not null,
						   anuncio_origem varchar(30) not null,
                           anuncio_destino varchar(30) not null,
                           anuncio_volume int not null,
                           anuncio_desc varchar(60) not null,
						   primary key (anuncio_id));		
		            		                 		     
create table cparticular_has_anuncio (cp_anuncio_id int not null auto_increment,
						 anuncio_id int not null,
						 cparticular_id int not null,
                         estado varchar(45) not null,
						 primary key (cp_anuncio_id));
                         
                         
create table funcionario_has_anuncio (func_anuncio_id int not null auto_increment,
						 anuncio_id int not null,
						 func_id int not null,
                         estado varchar(45) not null,
						 primary key (func_anuncio_id));

# Chaves estrangeiras
alter table funcionario add constraint funcionario_fk_clientes
            foreign key (func_cliente_id) references clientes(cliente_id)
			ON DELETE NO ACTION ON UPDATE NO ACTION;
alter table funcionario add constraint funcionario_fk_empresa
            foreign key (func_empresa_id) references empresa(empresa_id)
            ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table cparticular add constraint cparticular_fk_clientes
            foreign key (cparticular_cliente_id) references clientes(cliente_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
            
alter table anuncio add constraint anuncio_fk_clientes
            foreign key (anuncio_cliente_id) references clientes(cliente_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;            
            
alter table cparticular_has_anuncio add constraint cpanuncio_fk_cparticular
            foreign key (cparticular_id) references cparticular(cparticular_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
alter table cparticular_has_anuncio add constraint cpanuncio_fk_anuncio
            foreign key (anuncio_id) references anuncio(anuncio_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;

alter table funcionario_has_anuncio add constraint fanuncio_fk_funcionario
            foreign key (func_id) references funcionario(func_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION;
alter table funcionario_has_anuncio add constraint fanuncio_fk_anuncio
            foreign key (anuncio_id) references anuncio(anuncio_id) 
			ON DELETE NO ACTION ON UPDATE NO ACTION; 
