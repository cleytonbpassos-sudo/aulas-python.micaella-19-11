create database  exemplo_empresa;    /*criar um banco de dados*/

use exemplo_empresa;

create table cliente(
id_cliente int not null auto_increment,
cpf_cliente varchar (60),
end_cliente varchar(80),
cidade_cliente varchar (80),
tel_cliente varchar(20),
tipo_cliente char(1),
primary key (id_cliente)
);

create table empresa(
id_empresa int not null auto_increment,
cnpj_empresa varchar(11),
end_empresa varchar(80),
tel_empresa varchar(12),
primary key(id_empresa)
);

create table cliente_empresa(
id_empresa int not null,
id_cliente int not null,
primary key (id_empresa, id_cliente),
foreign key (id_empresa) references empresa(id_empresa),
foreign key (id_cliente) references cliente(id_cliente)
);



