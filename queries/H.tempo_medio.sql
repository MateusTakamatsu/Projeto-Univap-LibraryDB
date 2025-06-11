SELECT
    AVG(DATEDIFF(ret.returned_date, r.withdrawal_date)) AS media_retorno
FROM rentals r
JOIN `returns` ret ON ret.rental_id = r.id
WHERE ret.id IS NOT NULL;
