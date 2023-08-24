use teste;


create table testando (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'), 	
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
);


create table coisa (
id int not null auto_increment,
usuario varchar (20) not null,
jogo varchar (20) not null,
nome_do_personagem varchar(40) ,
arma_favorita varchar(40),
primary key (id)
);



create table doidera(
id int not null auto_increment,
comida_favorita varchar(30),
artista_preferido varchar(30),
materia_favorita varchar(30),
primary key (id)
);

alter table testando add constraint foreign key (id) references coisa(id);

select testando.nome, coisa.usuario
from testando
inner join coisa
on testando.id = coisa.id
where coisa.usuario like '%nome%';
