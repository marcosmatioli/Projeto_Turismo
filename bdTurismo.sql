/*banco -oreon

fazer 6 inserts
fazer 3 updates
fazer um inner join juntando as 3 tabelas
fazer 4 commits
*/
create database bdTurismo;
use bdTurimos;
/*tabelas- cliente(cod cli,nome, idade, sexo, email, telefone,*/
create table tbCliente(
cod_cli int primary key AUTO_INCREMENT,
nome_cli varchar(50),
idade int,
sexo varchar(1),
email varchar(50),
telefone varchar(15)
);
/*planos(cod plano,tipo, descricação)*/
create table tbPlano(
cod_plano int primary key AUTO_INCREMENT,
tipo varchar(50),
descricao varchar(100)
);

/*pedido(cod pedido,cod cli,cod plano, data,hora,valor,descricao.*/
create table tbPedido(
cod_pedido int primary key AUTO_INCREMENT,
cod_cli int,
cod_plano int,
data varchar(20),
hora varchar(20),
valor DECIMAL(7,2),
descricao varchar(100),
foreign key (cod_cli) references Cliente(cod_cli),
foreign key (cod_plano) references tbPlano(cod_plano)
);
