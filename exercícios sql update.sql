create database exerciciosupdate;

use exerciciosupdate;


CREATE TABLE funcionarios(
    CodFunc INT PRIMARY KEY AUTO_INCREMENT,
    NomeFunc VARCHAR(100) NOT NULL,
    SexoFunc VARCHAR(1) NOT NULL,
    BairroFunc VARCHAR(50) NOT NULL,
    SalFunc DECIMAL(8,2) NOT NULL,
    SetorFunc VARCHAR(50) NOT NULL,
    SalPer VARCHAR(10) NOT NULL,
    SalDesc DECIMAL(8,2) NOT NULL
)


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Larissa Menezes','F','Jabaquara',1200,'Marketing');

INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Selma Nunes','F','Grajaú',3800,'Vendas');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Leandro Henrique','M','Socorro',2950,'RH');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Amélia Jeremias','F','Socorro',4200,'Marketing');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Cláudio Jorge Silva','M','Jabaquara',1480,'Vendas');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Luciano Souza','M','Pedreira',1000,'Vendas');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Gabriela Santos Nunes','F','Jurubatuba',4150,'');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Rafaela Vieira Jr','F','Jabaquara',700,'Marketing');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Suzana Crispim','F','Grajaú',5600,'Produção');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Sabrina Oliveira Castro','F','Pedreira',2900,'Marketing');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Jarbas Silva Nunes','M','Jurubatuba',5300,'Produção');


INSERT INTO funcionarios (NomeFunc,SexoFunc,BairroFunc,SalFunc,SetorFunc)
VALUES ('Ralf Borges','M','Jabaquara',1600,'Marketing');

select * from funcionarios;

-- 1 - Atualizar os registros onde o sexo seja feminino e o nome da pessoa seja Maria para o bairro sao braz com salario de 5800.21 e o setor para financas

update funcionarios set SalFunc = "5800.21", SetorFunc = "finanças", BairroFunc = "são braz" where SexoFunc = "F" and NomeFunc like "Maria%";

update funcionario
set BairroFunc = "são braz", SalFunc "5800.21", SetorFunc = "finanças"
where SexoFunc = "F" and NomeFunc like "Maria %";

-- 2 - Atualizar o salario do joaquim silveira dando um aumento de 10% caso ele ganhe 3000 reais ou mais.

update funcionarios set SalFunc = SalFunc * 1.1 where NomeFunc = "Joaquim silveira" and SalFunc >= 3000;

update funcionarios
set SalFunc = SalFunc * 1.1
where NomeFunc = "Joaquim Silveira" and SalFunc >= 3000;

-- 3 - Atualizar o salario dos funcionarios que moram no bairro pedreira, se o funcionario for parente do Pedro Lima, dando um aumento de 500 reais para este funcionarios.SalFunc

update funcionarios set SalFunc = SalFunc + 500 where BairroFunc = "Pedreira" and NomeFunc like "% lima";

-- 4 - atualizar o nome, salário dos funcionários , atualizando o salário para a média salarial de todos os funcionários mais 35%, dos funcionários que ganham abaixo da média.

SELECT @media:=avg(SalFunc) from funcionarios;
update funcionarios set SalFunc = @media * 1.35, NomeFunc = "Jose Silva" where SalFunc < @media;

select avg(SalFunc) into @mediasalarial from funcionarios;

-- 5 - Dar um aumento de 30% para os funcionários onde o sexo seja a minoria.

SELECT @fe:=COUNT(*) from funcionarios where SexoFunc = "F";
SELECT @ma:=COUNT(*) from funcionarios where SexoFunc = "M";
update funcionarios set SalFunc = SalFunc * 1.3 where SexoFunc = IF(@fe!=@ma, IF(@fe>@ma, "F", "M"), "FALSE");

-- Correcao

select SexoFunc into @sexo from funcionarios group by SexoFunc order by count(*) limit 1;
update funcionarios set SalFunc = SalFunc * 1.3 where SexoFunc = @sexo;


select Sexotranquilo

-- 6 - Subtrair 10% do salário onde seja o segundo setor com mais funcionários da empresa 

select @setor:=SetorFunc,count(*) as Total from funcionarios group by SetorFunc ORDER BY total DESC LIMIT 1, 1;
UPDATE funcionarios SET SalFunc = SalFunc - (SalFunc * 0.1) WHERE SetorFunc = @setor;

-- Correcao

select SetorFunc into @setor, count(*) from funcionarios group by SetorFunc order by count(*) desc limit 1,1;
update funcionarios set SalFunc = SalFunc * 0.9 where SetorFunc = @setor

-- 7 - Tirar 10% dos funcionários da diretoria, repassando esse valor distribuido igualmente para os funcionários do setor RH. 

Select @somaD:=sum(SalFunc) from funcionarios where SetorFunc = "Diretoria";
Select @qRH:=count(*) from funcionarios where SetorFunc = "RH";

set @dis:=(@somaD * 0.1)/@qRH;

update funcionarios set SalFunc = SalFunc + @dis where SetorFunc = "RH";
update funcionarios set SalFunc = SalFunc - (SalFunc * 0.1) where SetorFunc = "Diretoria";

-- Correcao

select sum(SalFunc) * 0.1 into @dez from funcionarios where SetorFunc = "Diretoria";
select count(*) into @rh from funcionarios where SetorFunc = "RH";

update funcionarios set SalFunc = SalFunc * 0.9
where SetorFunc = "Diretoria";

update funcionarios set Salfunc = SalFunc + (@dez/@rh) where SetorFunc = "RH";


-- 8 - Conforme a tabela de cálculo de IR, definir qual será o valor descontado para cada funcionário
-- dependendo do salário. Incluir um novo campo na tabela para armazenar estes valores e o percentual.

-- faixa 1 — até R$ 1.903,98: isento
-- faixa 2 — de R$ 1.903,99 até R$ 2.826,65: 7,5%
-- faixa 3 — de R$ 2.826,66 até R$ 3.751,05: 15%
-- faixa 4 — de R$ 3.751,06 até R$ 4.664,68: 22,5%
-- faixa 5 — acima de R$ 4.664,68: 27,5%

alter table funcionarios add column valorIR float, add column IRFunc floar;
UPDATE funcionarios
SET SalPer = 
IF(
    SalFunc <= 1903.98, 
    "0%", 
    IF(
        SalFunc > 1903.98 and SalFunc <= 2826.65, 
        "7.5%", 
        IF(
            SalFunc > 2826.65 and SalFunc <= 3751.05, 
            "15%", 
            IF(
                SalFunc > 3751.05 and SalFunc <= 4664.68, 
                "22.5%", 
                "27.5%"
            )
        )
    )
), 
SalDesc = 
IF(
    SalFunc <= 1903.98, 
    0.00, 
    IF(
        SalFunc > 1903.98 and SalFunc <= 2826.65, 
        SalFunc * 0.075, 
        IF(
            SalFunc > 2826.65 and SalFunc <= 3751.05, 
            SalFunc * 0.15, 
            IF(
                SalFunc > 3751.05 and SalFunc <= 4664.68, 
                SalFunc * 0.225, 
                SalFunc * 0.275
            )
        )
    )
)

-- Correcao

update funcionarios set IRFunc = case
when SalFunc <= 1903.98 then 0
when SalFunc BETWEEN 1903.99 and 2826.65 then 7.5
when SalFunc >= 2826.66 and SalFunc <= 3751.05 then 15 
when SalFunc >= 3751.06 and SalFunc <= 4664.68 then 22.5
when SalFunc >= 4664.69 then 27.5
end

update funcionarios set valorIR = SalFunc * IRFunc / 100;

-- 9 - Listar as faixas de IR com a quantidade de funcionários que recebem esta faixa.

select SalPer, count(*) from funcionarios group by SalPer;


-- 10 - Listar o total dos valores descontados dos funcionários, listando a faixa de IR e a soma do valor.

select NomeFunc, SalPer, SalDesc from funcionarios;


-- 11 - Listar o total de IR descontado dos funcionários da empresa.

select sum(SalDesc) from funcionarios;



select * from funcionarios;
