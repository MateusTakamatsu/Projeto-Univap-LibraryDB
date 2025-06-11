SELECT au.name as pseudonimo, al.name as nome_real, COUNT(p.id) as quantidade
FROM aliases al
JOIN authors au ON au.id = al.author_id
JOIN pieces p ON p.alias_id = al.id
GROUP BY pseudonimo
ORDER BY quantidade DESC
LIMIT 1;