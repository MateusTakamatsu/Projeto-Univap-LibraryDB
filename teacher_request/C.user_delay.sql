SELECT c.name as nome, DATEDIFF(CURDATE(),r.planned_date) as atraso_em_dias,r.planned_date as dia_devolucao,CURDATE() as hoje
FROM rentals r
JOIN clients c on c.id = r.client_id
LEFT JOIN `returns` re on re.rental_id = r.id
WHERE re.id IS NULL
ORDER BY atraso_em_dias DESC;