/*Qual o menor e o maior salario dos empregados?*/
select nome,salario from empregado
where salario = (select min(salario) from empregado);

select nome, salario from empregado
where salario = (select max(salario) from empregado);

select nome, salario from empregado
where salario > (select avg(salario) from empregado);

select nome,salario from empregado
where salario = (select min(salario) from empregado);

select nome,salario from empregado
where salario = (select min(salario) from empregado) or salario = (select max(salario) from empregado);

select sum(salario) from empregado;

select sum(salario) from empregado
where codDepto = 5;

select count(nome) from empregado
where sexo = 'F';

select count(codEmp), codSuperv from empregado group by codSuperv;

select count(codEmp), codDepto from empregado group by codDepto;
