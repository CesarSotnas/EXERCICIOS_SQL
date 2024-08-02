-- tabelas:
-- cidades
-- clientes
-- concessionarias
-- estados
-- fluxo
-- op_faturamento
-- veiculos
-- vendas
-- vendedores

-- Atividade 1: Seleção Simples
-- Descrição: Liste todos os veículos com tipo 'SUV Compacta' e valor inferior a 30.000,00.

SELECT 
	tipo, 
	valor 
FROM 
	veiculos 
WHERE 
	tipo = 'SUV Compacta' AND valor < 3000000

-- Atividade 2: Junção Simples
-- Descrição: Exiba o nome dos clientes e o nome das concessionárias onde realizaram suas compras.

SELECT 
	c.cliente,
	co.concessionaria
FROM 
	clientes c
JOIN 
	concessionarias co ON co.id_concessionarias = c.id_concessionarias

-- Atividade 3: Contagem e Agrupamento
-- Descrição: Conte quantos vendedores existem em cada concessionária.

SELECT 
	co.concessionaria,
	COUNT(v.nome) AS vendedores_por_concessionaria
	
FROM concessionarias co
JOIN
	vendedores v ON v.id_concessionarias = co.id_concessionarias
GROUP BY
	co.concessionaria
ORDER BY
	vendedores_por_concessionaria DESC

-- Atividade 4: Subconsulta
-- Descrição: Encontre os veículos mais caros vendidos em cada tipo de veículo.

SELECT 
	v.tipo AS carro,
	MAX(ve.valor_pago) AS valor_maximo
FROM 
	veiculos v
JOIN
	vendas ve ON ve.id_veiculos = v.id_veiculos
GROUP BY
	carro
ORDER BY
	valor_maximo DESC;


	teste