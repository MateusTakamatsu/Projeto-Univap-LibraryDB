SELECT p.category as categoria, COUNT(r.id) as emprestimos
FROM volumes_rentals vr
JOIN rentals r ON r.id = vr.rental_id
JOIN volumes v ON v.id = vr.volume_id
JOIN pieces p ON p.id = v.piece_id
WHERE r.withdrawal_date BETWEEN '2024-01-01 00:00:01' AND '2024-12-31 23:59:59'
GROUP BY categoria
ORDER BY emprestimos DESC
LIMIT 1
;