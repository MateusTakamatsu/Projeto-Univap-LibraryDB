SELECT p.title as titulo, COUNT(v.id) as quantidade
FROM volumes v
JOIN pieces p ON p.id = v.piece_id
where v.status = 'guardados'
group by titulo
ORDER BY quantidade DESC;