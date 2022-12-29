# drop database cadastro;
create database cadastro default character set utf8 default collate utf8_general_ci ;
use cadastro;

create table pessoas(
	id int not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum("m","f"),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'brazil',
    primary key(id)
);
describe pessoas;

select * from pessoas;

insert into pessoas(nome,  nascimento, sexo, peso, altura, nacionalidade) 
values ('robertinho_gameplays', '1984-01-02', 'm', '78.5', '1.83', 'brazil');

insert into pessoas(nome,  nascimento, sexo, peso, altura, nacionalidade) 
values ('sus', '2999-01-02', 'm', '78.5', '1.83', default);

insert into pessoas values (default, 'poop', '1999-01-02', 'm', '78.5', '1.83', default);

-- aula 6
alter table pessoas add column profissao varchar(10) after nome; 
alter table pessoas drop column profissao;
alter table pessoas modify column profissao varchar(20) ;
alter table pessoas change column profissao prof varchar(20);

alter table pessoas rename to people;

describe people;
select * from people;

create table if not exists cursos (
	nome varchar(20) not null unique,
    descrição text,
    carga int unsigned,
    totalaulas int unsigned,
    ano year default '2016'
);

describe cursos;
select * from cursos;

alter table cursos add column idcurso int first;
alter table cursos add primary key(idcurso);