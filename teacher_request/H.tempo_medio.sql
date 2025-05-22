SELECT
    AVG(DATEDIFF(ret.ruterned_date, r.withdrawal_date)) as media_retorno
FROM rentals r
JOIN returns ret ON ret.rental_id = r.id
WHERE ret.ruterned_date IS NOT NULL
;