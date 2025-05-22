SELECT COUNT(*) as livros_emprestados
FROM volumes_rentals vr
JOIN rentals r ON r.id = vr.rental_id
WHERE r.withdrawal_date BETWEEN '2025-01-01 00:00:00' AND '2025-03-31 23:59:59';