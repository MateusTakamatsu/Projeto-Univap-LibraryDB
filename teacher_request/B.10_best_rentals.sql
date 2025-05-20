SELECT COUNT(vr.volume_id) as Emprestimos, p.title as titulo
FROM volumes_rentals vr
JOIN volumes v ON v.id = vr.volume_id
JOIN pieces p on p.id = v.piece_id
GROUP BY v.id
ORDER BY Emprestimos DESC
LIMIT 10;