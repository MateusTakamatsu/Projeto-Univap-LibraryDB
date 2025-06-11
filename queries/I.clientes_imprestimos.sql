SELECT c.id as id_cliente, c.name as nome_cliente, COUNT(vr.rental_id) as emprestimos_totais
FROM volumes_rentals vr
JOIN rentals r ON r.id = vr.rental_id
JOIN clients c ON c.id = r.client_id
GROUP BY id_cliente
ORDER BY emprestimos_totais DESC
;