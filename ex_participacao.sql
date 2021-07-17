-- 9 - Listar as faixas de IR com a quantidade de funcionários que recebem esta faixa.

select SalPer, count(*) from funcionarios group by SalPer;


-- 10 - Listar o total dos valores descontados dos funcionários, listando a faixa de IR e a soma do valor.

select NomeFunc, SalPer, SalDesc from funcionarios;


-- 11 - Listar o total de IR descontado dos funcionários da empresa.

select sum(SalDesc) from funcionarios;
