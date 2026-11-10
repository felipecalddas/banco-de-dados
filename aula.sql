CREATE DATABASE AULA_NOITE4;

USE AULA_NOITE4;

CREATE TABLE empregado (
   matricula INT primary key,
   nome VARCHAR(100) not null,
   cpf	VARCHAR(14) UNIQUE,
   salario DECIMAL(10,2) not null
);

INSERT INTO empregado 
(matricula, nome, cpf, salario) 
VALUES 
(220, 'JOSEFA', '01123456700', 1500), 
(223, 'Mariana', '01023456789', 1500), 
(224, 'PEDRO', '01223456789', 1500),
(333, 'DOMINGUES', '01123456788', 10500),
(111, 'MENDEZ', NULL, 3000),
(2209, 'JOSEFINA', '02123456700', 1500), 
(2239, 'Mariano', '02023456789', 1500), 
(2249, 'PAULO', '02223456789', 1500),
(3339, 'SAVIO', '02123456788', 10500),
(1119, 'AMARAL', NULL, 3000),
(2220, 'Lorena', '123456700', 1500), 
(2223, 'Maria', '023456789', 1500), 
(2224, 'Jose', '223456789', 1500),
(3333, 'DOMINGOS', '123456788', 10500),
(1111, 'MENDES', NULL, 3000)
;

select * from empregado
where salario != 1500;

select * from empregado where not salario not between 1000 and 3000;

select * from empregado
where salario not in (1000,20,5000,2000,3000,99999);

select * from empregado
where nome not in ('DOMINGOS', 'MENDES');

Select * from empregado where cpf is null; 

select * from empregado 
where nome like "m%"
or salario < 2000 
order by nome desc, salario desc
limit 1000;



select * from empregado where salario like '%00%';


INSERT INTO empregado 
(matricula, nome, cpf, salario) 
VALUES 
(220, 'JOSEFA', '01123456700', 1500), 
(223, 'Mariana', '01023456789', 1500), 
(224, 'PEDRO', '01223456789', 1500),
(333, 'DOMINGUES', '01123456788', 10500),
(111, 'MENDEZ', NULL, 3000),
(2209, 'JOSEFINA', '02123456700', 1500), 
(2239, 'Mariano', '02023456789', 1500), 
(2249, 'PAULO', '02223456789', 1500),
(3339, 'SAVIO', '02123456788', 10500),
(1119, 'AMARAL', NULL, 3000),
(2220, 'Lorena', '123456700', 1500), 
(2223, 'Maria', '023456789', 1500), 
(2224, 'Jose', '223456789', 1500),
(3333, 'DOMINGOS', '123456788', 10500),
(1111, 'MENDES', NULL, 3000)
;




























CREATE DATABASE aula_noite5;

USE aula_noite5;

CREATE TABLE empregado (
matricula int primary key,
nome varchar (100) not null,
cpf varchar (14) unique,
salario decimal (10,2) not null,
id_depto int not null
);

select *from empregado;

INSERT INTO empregado 
(matricula, nome, cpf, salario, id_depto) 
VALUES 
(220, 'JOSEFA', '01123456700', 1500, 2), 
(223, 'Mariana', '01023456789', 1500, 1), 
(224, 'PEDRO', '01223456789', 1500, 3),
(333, 'DOMINGUES', '01123456788', 10500, 1),
(111, 'MENDEZ', NULL, 3000, 1),
(2209, 'JOSEFINA', '02123456700', 1500, 2), 
(2239, 'Mariano', '02023456789', 1500, 3), 
(2249, 'PAULO', '02223456789', 1500, 4),
(3339, 'SAVIO', '02123456788', 10500, 5),
(1119, 'AMARAL', NULL, 3000, 1),
(2220, 'Lorena', '123456700', 1500, 2), 
(2223, 'Maria', '023456789', 1500, 3), 
(2224, 'Jose', '223456789', 1500, 4),
(3333, 'DOMINGOS', '123456788', 10500, 5),
(1111, 'MENDES', NULL, 3000, 1)
;

select count(distinct salario) from empregado;

select sum(salario) from empregado; 

select max(salario) from empregado; 

select min(salario) from empregado; 

select avg(salario) from empregado; 

select sum(salario) / count(*), avg(salario)
 from empregado; 
 
 select count(*), sum(salario), max(salario), min(salario), avg(salario) 
 from empregado;
 
 select id_depto, max(salario) from empregado 
 group by id_depto; 
 
 select id_depto, count(*) from empregado 
 group by id_depto; 
 
select id_depto, count(*), max(salario) from empregado 
group by id_depto; 

select id_depto, count(*), max(salario), avg(salario) from empregado 
group by id_depto; 

select id_depto, count(*), max(salario), avg(salario) from empregado 
where id_depto in (3, 4, 5) 
group by id_depto; 

select count(*), id_depto, salario from empregado
group by id_depto, salario;




CREATE DATABASE AULA_NOITE_6;
USE AULA_NOITE_6;

CREATE TABLE DEPARTAMENTO (
id_depto int primary key,
nome varchar(50) not null
);

CREATE TABLE empregado (
   matricula INT primary key,
   nome VARCHAR(100) not null,
   cpf	VARCHAR(14) UNIQUE,
   salario DECIMAL(10,2) not null,
   id_depto int not null,
   foreign key (id_depto) references departamento (id_depto)
);

insert into departamento (id_depto, nome) values
(1, 'RH'),
(2, 'FINANCEIRO'),
(3, 'TI'),
(4, 'DIRETORIA'),
(5, 'SUPORTE'),
(6, 'JURIDICO');


INSERT INTO empregado 
(matricula, nome, cpf, salario, id_depto) 
VALUES 
(220, 'JOSEFA', '01123456700', 1500, 1), 
(223, 'Mariana', '01023456789', 1500, 5), 
(224, 'PEDRO', '01223456789', 1500, 2), 
(333, 'DOMINGUES', '01123456788', 10500, 2), 
(111, 'MENDEZ', NULL, 3000, 3), 
(2209, 'JOSEFINA', '02123456700', 1500, 3), 
(2239, 'Mariano', '02023456789', 1500, 3), 
(2249, 'PAULO', '02223456789', 1500, 1), 
(3339, 'SAVIO', '02123456788', 10500, 3), 
(1119, 'AMARAL', NULL, 3000, 1), 
(2220, 'Lorena', '123456700', 1500, 4), 
(2223, 'Maria', '023456789', 1500, 1), 
(2224, 'Jose', '223456789', 1500, 4), 
(3333, 'DOMINGOS', '123456788', 10500, 1), 
(1111, 'MENDES', NULL, 3000, 5);


select*from departamento;

select*from empregado;



select count(*) as quantidade from departamento;

select count(*) as quantidade from empregado;

select sum(salario) soma,
avg(salario) media,
min(salario) minimo,
max(salario) maximo
from empregado;

select max(salario) from empregado where id_depto = 1;

select max(salario), id_depto from empregado 
group by id_depto;

select sum(salario) soma,
avg(salario) media,
min(salario) minimo,
max(salario) maximo,
count(*)qtd, id_depto
from empregado 
group by id_depto;

select sum(salario) soma,
avg(salario) media,
min(salario) minimo,
max(salario) maximo,
count(*) qtd, id_depto
from empregado where id_depto in (4, 5)
group by id_depto;

select sum(salario) soma,
avg(salario) media,
min(salario) minimo,
max(salario) maximo,
count(*) qtd, id_depto
from empregado 
group by id_depto
having count(*) > 2;

select departamento.nome depto, empregado.nome empregado
from departamento join empregado 
on empregado.id_depto = departamento.id_depto;

select dep.nome depto, emp.nome empregado
from departamento dep inner join empregado emp 
on emp.id_depto = dep.id_depto;

select dep.nome depto, emp.nome empregado
from departamento dep inner join empregado emp 
on emp.id_depto = dep.id_depto 
where salario > 10000;

select dep.nome depto, emp.nome empregado, emp.salario
from departamento dep inner join empregado emp 
on emp.id_depto = dep.id_depto 
where salario > 10000;


select dep.nome depto, emp.nome empregado, emp.salario
from departamento dep inner join empregado emp 
on dep.id_depto = emp.id_depto;

select dep.nome depto, avg (emp.salario) media
from empregado emp join departamento dep 
on emp.id_depto = dep.id_depto
group by dep.nome;

select dep.nome depto, avg (emp.salario) media, max(salario), min(salario), sum(salario), count(*) empregados
from empregado emp inner join departamento dep 
on emp.id_depto = dep.id_depto
group by dep.nome;

select dep.nome depto, avg (emp.salario) media, max(salario), min(salario), sum(salario), count(*) empregados
from empregado emp inner join departamento dep 
on emp.id_depto = dep.id_depto where salario > 1500
group by dep.nome;

select dep.nome depto, avg (emp.salario) media, max(salario), min(salario), sum(salario), count(*) empregados
from empregado emp inner join departamento dep 
on emp.id_depto = dep.id_depto where salario > 1500
group by dep.nome
having avg (salario) > 1000
order by dep.nome;






















 