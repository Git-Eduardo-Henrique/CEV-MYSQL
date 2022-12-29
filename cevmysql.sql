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

insert into pessoas(nome,  nascimento, sexo, peso, altura, nacionalidade) values 
('robertinho_gameplays', '1984-01-02', 'm', '78.5', '1.83', 'brazil'),
('sus', '2999-01-02', 'm', '78.5', '1.83', default);

insert into pessoas values (default, 'poop', '1999-01-02', 'm', '78.5', '1.83', default);

-- aula 6
alter table pessoas add column profissao varchar(10) after nome; 
alter table pessoas drop column profissao;
alter table pessoas modify column profissao varchar(20) ;
alter table pessoas change column profissao prof varchar(20);

alter table pessoas rename to people;

create table if not exists cursos (
	nome varchar(20) not null unique,
    descrição text,
    carga int unsigned,
    totalaulas int unsigned,
    ano year default '2016'
);
alter table cursos add column idcurso int first;
alter table cursos add primary key(idcurso);

-- aula 7
insert into cursos values 
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Logica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução a Linguagem Java', '10', '29', '2000'),
('6', 'MySql', 'Bancos de Dados Mysql', '30', '15', '2016'),
('7', 'Word', 'Curso de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças ritmicas', '40', '30', '2018'),
('9', 'Cozinha arabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'Youtube', 'Gerar polemica e ganhar inscritos', '5', '2', '2018');

-- comandos tops
describe pessoas;
describe cursos;
describe people;

select * from cursos;
select * from people;
select * from pessoas;
