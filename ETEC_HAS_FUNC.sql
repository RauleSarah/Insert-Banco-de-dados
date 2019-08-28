create database ETEC_HAS_FUNC; 

go

use ETEC_HAS_FUNC; 

go

create table cargo(
	cd_cargo		int		not null		primary key,
	ds_cargo		varchar (40),
);

go

create table departamento(
	cd_depto		int		not null		primary key,
	nm_depto		varchar (40),
	sg_depto		varchar (5),
);

go

create table funcionario(
	cd_cargo		integer		not null,
	constraint cargo_fk foreign key (cd_cargo) references cargo (cd_cargo),
	cd_depto		integer		not null,
	constraint departamento_fk foreign key (cd_depto) references departamento (cd_depto),
	cd_func			integer		not null		primary key,
	nm_pnome_func	varchar (50),
	nm_unome_func	varchar (30),
	dt_inicio		date,
	vl_salario		numeric (9,2),
	end_func		varchar (150),
);

go

insert into cargo 
	values (1,'Analista');
insert into cargo
	values (2,'Programador');
insert into cargo
	values ( 3,'Contador');
insert into cargo 
	values ( 4,'Analista RH');
insert into cargo 
	values ( 5,'Vendedor');
insert into cargo 
	values ( 6,'Analista Financeiro');
insert into cargo 
	values ( 7,'Assistente Adm');

Select * from cargo

drop table cargo

insert into departamento 
	values (10,'Contabilidade','CT'),
		   (20,'Informática','INF'),
		   (30,'Recursos Humanos','RH'),
			(40,'Administrativo','ADM'),
			(50,'Vendas','VDA'),
			(60,'Financeiro','FIN'),
			(70,'Pessoal','PES');

insert into funcionario 
	values  (1,4,50,'Antonio','Isaias','2015-05-01','3000','Rua A, 115'),
			(2,'','','','','','',''),
			(3,'','','','','','',''),
			(4,'','','','','','',''),
			(5,'','','','','','',''),
			(6,'','','','','','',''),
			(7,'','','','','','',''),
			(8,'','','','','','',''),
			(9,'','','','','','',''),
			(10,'','','','','','',''),
			(11,'','','','','','',''),
			(12,'','','','','','','');