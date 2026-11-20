-- criar banco de dados
create database cadastro_empresa;
-- selecionar banco de dados
use cadastro_empresa;

-- tabela empresa
create table empresa (
	id_empresa int(30) not null auto_increment,
    cnpj varchar(11),
    end_empresa varchar(60),
    tel_empresa varchar(12),
    
    primary key (id_empresa)
    );
    
-- tabela cliente
create table cliente(
    id_cliente int(11) not null auto_increment,
    nome_cliente varchar(60),
    end_cliente varchar(80),
	cidade__cliente varchar(60),
    tel_cliente varchar(12),
    tipo_cliente char(1)
    
    primary key (id_cliente)
    );
    
-- tabela cliente_empresa
create table cliente_empresa (
    id_empresa int(11) not null,
    id cliente int (11) not null,
    
    primary key (id_empresa, id_cliente),
    