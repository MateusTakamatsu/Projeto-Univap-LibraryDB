SELECT COUNT(*) as quantidade, t.employee_id as id_funcionario, e.name as nome_funcionario
FROM(
	(SELECT r.employee_id, r.id
	FROM `returns` r)
	UNION
	(SELECT r.employee_id, r.id
	FROM rentals r)
) as t
JOIN employees e ON e.id = t.employee_id
GROUP BY id_funcionario
ORDER BY quantidade;