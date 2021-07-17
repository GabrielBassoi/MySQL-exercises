create database museus;
use museus;
create table museus1(
	idmuseu int primary key auto_increment,
	nome varchar(45) not null,
    horario_de_abertura time,
    horario_de_fechamento time,
    dias_de_funcionamento text,
    quantidade_de_obras int,
    valor_total_estimado_das_obras float,
    pago bool,
    valor_do_ingresso float,
    endereco text not null,
    aberto bool
);

select * from museus1;
delete from museus1 where idmuseu = "4";
use museus;

-- 1

insert into museus1(
	nome, 
	horario_de_abertura, 
    horario_de_fechamento, 
    dias_de_funcionamento, 
	quantidade_de_obras, 
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu Oscar Niemeyer", "10:00:00", "20:00:00", "S, T, Qu, Qi, Se", "1456","100000000.00","1", "20.00", "Rua Amem", "1");

-- 2

use museus;
insert into museus1(
	nome,
	horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu do Holocausto", "11:00:00", "21:00:00", "S, T, Qu, Qi, Se", "234","1003455.00","0", "0.00", "Rua Holoquinho meu", "1");

-- 3

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu Egipcio Ordem Rosacruz", "7:00:00", "18:00:00", "S, T, Qu, Qi, Se", "563","123634.00","1", "30.00", "Rua Gato Antigo", "0");

-- 4

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu do Expedicionario", "10:30:00", "16:00:00", "S, T, Qu, Qi", "134", "504354.00", "0", "0.00", "Rua das Armas", "1");

-- 5

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museus Paranaense", "10:00:00", "18:00:00", "T, Qu, Qi, Se", "978", "128445.00", "0", "0.00", "Rua Parana", "0");

-- 6

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Memorial da Seguranca no Transporte", "11:00:00", "21:00:00", "S, T, Qu, Qi, Se, Sa", "465", "475638.00", "0", "0.00", "Rua do Carro", "1");

-- 7

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Memorial da Imigracao Polonesa", "10:00:00", "21:00:00", "S, T, Qu, Qi, Se", "87", "100000", "0", "0.00", "Rua Verde", "1");

-- 8

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu do Automovel", "07:00:00", "17:00:00", "T, Qu, Qi, Se", "284", "1040562.00", "1", "25.00", "Rua dos Veiculos", "1");

-- 9

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu da Vida", "09:00:00", "18:00:00", "S, T, Qu, Qi, Se", "147", "486721.00", "0", "0.00", "Rua da Paz", "0");

-- 10

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu da Arte Indigena", "11:00:00", "21:00:00", "S, T, Qi, Se", "183", "18434", "1", "15.00", "Rua da tribo", "1");

-- 11

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu Ferroviario", "10:00:00", "20:00:00", "S, T, Qu, Qi, Se", "3847", "398393", "0", "0.00", "Rua do trem", "1");

-- 12

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Memorial de Curitiba", "10:00:00", "21:00:00", "S, T, Qu, Qi, Se, Sa", "1238", "34504353", "0", "0.00", "Rua Curitibana", "1");

-- 13

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu de Historia Natural", "07:30:00", "18:00:00", "S, T, Qu, Qi", "2304", "453324", "1", "30.00", "Rua Historica", "0");

-- 14

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Memorial da Imigracao Japonesa", "10:00:00", "20:00:00", "S, T, Qu, Qi", "234", "543553", "0", "0.00", "Rua Praca do Japao", "1");

-- 15

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Museu Botanico Municipal", "08:35:00", "17:00:00", "T, Qu, Qi, Se", "2342", "238234", "1", "15.00", "Rua dos animais", "1");

-- 16

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("Curitiba Antique Car", "10:00:00", "20:00:00", "S, T, Qu, Qi, S", "234", "345353", "1", "35.00", "Rua auto", "1");

-- 17

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("mefsdfhn", "10:00:00", "20:00:00", "sdsdffs", "4234", "534563", "0", "0.00", "sdfsfdsf", "1");

-- 18

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("mefsdfhn", "10:00:00", "20:00:00", "sdsdffs", "4234", "534563", "0", "0.00", "sdfsfdsf", "1");

-- 19

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("mefsdfhn", "10:00:00", "20:00:00", "sdsdffs", "4234", "534563", "0", "0.00", "sdfsfdsf", "1");

-- 20

use museus;
insert into museus1(
	nome,
    horario_de_abertura,
    horario_de_fechamento,
    dias_de_funcionamento,
    quantidade_de_obras,
    valor_total_estimado_das_obras,
    pago,
    valor_do_ingresso,
    endereco,
    aberto
)values("mefsdfhn", "10:00:00", "20:00:00", "sdsdffs", "4234", "534563", "0", "0.00", "sdfsfdsf", "1");

use museus;
select * from museus1 where horario_de_abertura = "10:00:00";














