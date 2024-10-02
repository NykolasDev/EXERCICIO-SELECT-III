	-- 1
	SELECT * FROM departamento
	HAVING (qtdfuncionariosdepto) > 15;

	-- 2 
	SELECT * FROM funcionario
	WHERE (salario > 4000);

	-- 3 
	SELECT AVG(salario) AS media_salarial
	from funcionario;

	-- 4
	SELECT ROUND (AVG(salario), 2) AS media_salarial
	from funcionario;

	-- 5
	SELECT * FROM funcionario
	WHERE nome_funcionario LIKE '%Gomes%';

	-- 6
	SELECT nome_funcionario, salario * 12 AS salario_anual
	FROM funcionario;

	-- 7
	SELECT nome_funcionario, salario
	FROM funcionario
	WHERE salario =(SELECT MAX(salario) FROM funcionario);

	-- 8
	SELECT salario FROM funcionario
	ORDER BY salario DESC 
	LIMIT 2;

	-- 9 
	SELECT cargo, nome_funcionario, MIN(data_admissão) AS data_admissão
	FROM funcionario
	GROUP BY cargo, nome_funcionario;

	-- 10
	SELECT DISTINCT sigla_depto 
    FROM funcionario
	WHERE salario > 5000;
	
    -- 11
	SELECT DISTINCT sigla_depto 
	FROM funcionario
	WHERE salario > (SELECT AVG(salario) FROM funcionario);

	-- 12 
	SELECT DISTINCT sigla_depto 
	FROM funcionario
    WHERE sigla_depto LIKE '%Costa%';

	-- 13
    SELECT sigla_depto FROM funcionario 
    WHERE EXISTS (
    SELECT * FROM funcionario
    WHERE salario > (SELECT AVG(salario) FROM funcionario)
    );
