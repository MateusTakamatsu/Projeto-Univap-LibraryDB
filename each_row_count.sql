SELECT 'clients' AS 'table', COUNT(*) AS registers FROM library_db.clients
UNION ALL
SELECT 'sessions', COUNT(*) FROM library_db.sessions
UNION ALL
SELECT 'publishers', COUNT(*) FROM library_db.publishers
UNION ALL
SELECT 'employees', COUNT(*) FROM library_db.employees
UNION ALL
SELECT 'rentals', COUNT(*) FROM library_db.rentals
UNION ALL
SELECT 'authors', COUNT(*) FROM library_db.authors
UNION ALL
SELECT 'aliases', COUNT(*) FROM library_db.aliases
UNION ALL
SELECT 'pieces', COUNT(*) FROM library_db.pieces
UNION ALL
SELECT 'volumes', COUNT(*) FROM library_db.volumes
UNION ALL
SELECT 'volumes_rentals', COUNT(*) FROM library_db.volumes_rentals;
