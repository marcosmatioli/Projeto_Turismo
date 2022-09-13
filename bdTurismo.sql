create database bdTurismo;
use bdTurismo;
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
create table tbPlanos(
cod_plano int primary key AUTO_INCREMENT,
tipo varchar(200),
descricao varchar(200)
);

/*pedido(cod pedido,cod cli,cod plano, data,hora,valor,descricao.*/
create table tbPedido(
cod_pedido int primary key AUTO_INCREMENT,
cod_cli int,
cod_plano int,
data varchar(20),
hora varchar(20),
valor DECIMAL(7,2),
descricao varchar(200),
foreign key (cod_cli) references tbCliente(cod_cli),
foreign key (cod_plano) references tbPlanos(cod_plano)
);

/*banco -oreon
fazer 6 inserts
fazer 3 updates
fazer um inner join juntando as 3 tabelas
fazer 4 commits
*/
insert into tbCliente (nome_cli,idade,sexo,email,telefone) values ("Batman",35,"M","batnabatcaverna@heroi.com.br","966668987");
insert into tbCliente (nome_cli,idade,sexo,email,telefone) values ("Mulher Gato",18,"F","mulhergatomiau@vila.com.br","987679687");

insert into tbPlanos (tipo,descricao) values ("Plano Tour New York", "Plano de viagem pelos Estados Unidos, conheça NY, Texas, Canada e Havai");
insert into tbPlanos (tipo,descricao) values ("Plano Tour Italia", "Plano Italia, conheça a Torre de Pisa, Vaticano e comer a comida local que é muito 'MASSA'!!");

insert into tbPedido (data,hora,valor,descricao) values ("20-09-2022","20:20",10567.90,"Comprado no dia 19-09 e foi parcelado a pessoa está emitindo o visto para prosseguir com o processo");
insert into tbPedido (data,hora,valor,descricao) values ("19-11-2023","13:20",20567.90,"Pct Italia, o cliente solicitou uma passada em vários pontos turisticos o que deixou muito mais caro");