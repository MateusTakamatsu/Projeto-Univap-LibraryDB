SELECT COUNT(*) as quantidade, t.employees_id as id_funcionario, e.name as nome_funcionario
FROM(
	(SELECT r.employees_id, r.id
	FROM `returns` r)
	UNION
	(SELECT r.employee_id, r.id
	FROM rentals r)
) as t
JOIN employees e ON e.id = t.employees_id
GROUP BY id_funcionario
ORDER BY quantidade;