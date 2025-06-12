SELECT COUNT(*) as quantidade, t.employee_id as id_funcionario, e.name as nome_funcionario
FROM(
	(SELECT r.employee_id, r.id, r.returned_date as action_date
	FROM `returns` r)
	UNION
	(SELECT r.employee_id, r.id, r.withdrawal_date as action_date
	FROM rentals r)
) as t
JOIN employees e ON e.id = t.employee_id
WHERE t.action_date BETWEEN '2025-01-01 00:00:01' AND '2025-12-31 23:59:59'
GROUP BY id_funcionario
ORDER BY quantidade;