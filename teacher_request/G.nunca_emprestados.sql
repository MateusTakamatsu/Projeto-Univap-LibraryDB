SELECT p.title as titulo
FROM pieces p 
JOIN volumes v ON v.piece_id = p.id 
LEFT JOIN volumes_rentals vr  ON vr.volume_id = v.id
WHERE vr.volume_id IS NULL
GROUP BY titulo 
ORDER BY titulo
;