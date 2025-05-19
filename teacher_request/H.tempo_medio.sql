SELECT
    c.id as id_cliente,
    c.name as nome_cliente,
    AVG(DATEDIFF(r.ruterned_date, r.withdrawal_date)) as media_retorno
FROM rentals r
JOIN clients c ON c.id = r.client_id
WHERE r.ruterned_date IS NOT NULL
GROUP BY id_cliente
ORDER BY media_retorno DESC
;