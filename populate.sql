INSERT INTO `library_db`.`clients` (`name`, `cpf`, `email`, `phone`, `cep`, `street`, `number`, `complement`, `birthdate`, `status`, `created_at`, `updated_at`) VALUES
('Ana Souza', '12345678901', 'ana.souza@email.com', '11987654321', '12345678', 'Rua A', 101, 'Apto 101', '1985-05-10', 'ok', NOW(), NOW()),
('Carlos Silva', '23456789012', 'carlos.silva@email.com', '11976543210', '23456789', 'Rua B', 102, 'Apto 102', '1990-06-15', 'inadimplente', NOW(), NOW()),
('Fernanda Lima', '34567890123', 'fernanda.lima@email.com', '11965432109', '34567890', 'Rua C', 103, 'Apto 103', '1982-07-20', 'bloqueado', NOW(), NOW()),
('Gustavo Pereira', '45678901234', 'gustavo.pereira@email.com', '11954321098', '45678901', 'Rua D', 104, 'Apto 104', '1995-08-25', 'suspenso', NOW(), NOW()),
('Juliana Costa', '56789012345', 'juliana.costa@email.com', '11943210987', '56789012', 'Rua E', 105, 'Apto 105', '1988-09-30', 'ok', NOW(), NOW()),
('Lucas Oliveira', '67890123456', 'lucas.oliveira@email.com', '11932109876', '67890123', 'Rua F', 106, 'Apto 106', '1992-10-05', 'ok', NOW(), NOW()),
('Mariana Rocha', '78901234567', 'mariana.rocha@email.com', '11921098765', '78901234', 'Rua G', 107, 'Apto 107', '1994-11-10', 'bloqueado', NOW(), NOW()),
('Paulo Martins', '89012345678', 'paulo.martins@email.com', '11910987654', '89012345', 'Rua H', 108, 'Apto 108', '1980-12-15', 'suspenso', NOW(), NOW()),
('Roberta Almeida', '90123456789', 'roberta.almeida@email.com', '11909876543', '90123456', 'Rua I', 109, 'Apto 109', '1986-01-20', 'inadimplente', NOW(), NOW()),
('Tiago Santos', '01234567890', 'tiago.santos@email.com', '11998765432', '01234567', 'Rua J', 110, 'Apto 110', '1998-02-25', 'ok', NOW(), NOW());

INSERT INTO `library_db`.`sessions` (`bookcase`, `starting_corridor`, `ending_corridor`, `created_at`, `updated_at`) VALUES
(1, 1, 10, NOW(), NOW()),
(2, 11, 20, NOW(), NOW()),
(3, 21, 30, NOW(), NOW()),
(4, 31, 40, NOW(), NOW()),
(5, 41, 50, NOW(), NOW()),
(6, 51, 60, NOW(), NOW()),
(7, 61, 70, NOW(), NOW()),
(8, 71, 80, NOW(), NOW()),
(9, 81, 90, NOW(), NOW()),
(10, 91, 100, NOW(), NOW());

INSERT INTO `library_db`.`publishers` (`name`, `description`, `fundation_year`, `created_at`, `updated_at`) VALUES
('Editora A', 'Descrição da Editora A', 2000, NOW(), NOW()),
('Editora B', 'Descrição da Editora B', 2005, NOW(), NOW()),
('Editora C', 'Descrição da Editora C', 2010, NOW(), NOW()),
('Editora D', 'Descrição da Editora D', 2015, NOW(), NOW()),
('Editora E', 'Descrição da Editora E', 2020, NOW(), NOW()),
('Editora F', 'Descrição da Editora F', 2001, NOW(), NOW()),
('Editora G', 'Descrição da Editora G', 2006, NOW(), NOW()),
('Editora H', 'Descrição da Editora H', 2011, NOW(), NOW()),
('Editora I', 'Descrição da Editora I', 2016, NOW(), NOW()),
('Editora J', 'Descrição da Editora J', 2021, NOW(), NOW());

INSERT INTO `library_db`.`employees` (`id`, `name`, `email`, `role`, `cpf`, `phone`, `residence_file_path`, `pis`, `created_at`, `updated_at`) VALUES
(1, 'Ana Souza', 'ana.souza@empresa.com', 'Gerente', '12345678901', '11987654321', '/caminho/arquivo1.pdf', '12345678901', NOW(), NOW()),
(2, 'Carlos Silva', 'carlos.silva@empresa.com', 'Supervisor', '23456789012', '11976543210', '/caminho/arquivo2.pdf', '23456789012', NOW(), NOW()),
(3, 'Fernanda Lima', 'fernanda.lima@empresa.com', 'Auxiliar', '34567890123', '11965432109', '/caminho/arquivo3.pdf', '34567890123', NOW(), NOW()),
(4, 'Gustavo Pereira', 'gustavo.pereira@empresa.com', 'Estagiário', '45678901234', '11954321098', '/caminho/arquivo4.pdf', '45678901234', NOW(), NOW()),
(5, 'Juliana Costa', 'juliana.costa@empresa.com', 'Gerente', '56789012345', '11943210987', '/caminho/arquivo5.pdf', '56789012345', NOW(), NOW()),
(6, 'Lucas Oliveira', 'lucas.oliveira@empresa.com', 'Supervisor', '67890123456', '11932109876', '/caminho/arquivo6.pdf', '67890123456', NOW(), NOW()),
(7, 'Mariana Rocha', 'mariana.rocha@empresa.com', 'Auxiliar', '78901234567', '11921098765', '/caminho/arquivo7.pdf', '78901234567', NOW(), NOW()),
(8, 'Paulo Martins', 'paulo.martins@empresa.com', 'Estagiário', '89012345678', '11910987654', '/caminho/arquivo8.pdf', '89012345678', NOW(), NOW()),
(9, 'Roberta Almeida', 'roberta.almeida@empresa.com', 'Gerente', '90123456789', '11909876543', '/caminho/arquivo9.pdf', '90123456789', NOW(), NOW()),
(10, 'Tiago Santos', 'tiago.santos@empresa.com', 'Supervisor', '01234567890', '11998765432', '/caminho/arquivo10.pdf', '01234567890', NOW(), NOW());

INSERT INTO `library_db`.`rentals` (`withdrawal_date`, `planned_date`, `ruterned_date`, `status`, `created_at`, `updated_at`, `client_id`, `employee_id`) VALUES
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'emprestado', NOW(), NOW(), 1, 1),
(NOW(), CURDATE() + INTERVAL 7 DAY, NOW(), 'devolvido', NOW(), NOW(), 2, 2),
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'atrasado', NOW(), NOW(), 3, 3),
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'perdido', NOW(), NOW(), 4, 4),
(NOW(), CURDATE() + INTERVAL 7 DAY, NOW(), 'devolvido', NOW(), NOW(), 5, 5),
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'emprestado', NOW(), NOW(), 6, 6),
(NOW(), CURDATE() + INTERVAL 7 DAY, NOW(), 'devolvido', NOW(), NOW(), 7, 7),
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'atrasado', NOW(), NOW(), 8, 8),
(NOW(), CURDATE() + INTERVAL 7 DAY, NULL, 'perdido', NOW(), NOW(), 9, 9),
(NOW(), CURDATE() + INTERVAL 7 DAY, NOW(), 'devolvido', NOW(), NOW(), 10, 10);

INSERT INTO `library_db`.`authors` (`name`, `birthdate`, `death_date`, `nationality`, `created_at`, `updated_at`) VALUES
('Machado de Assis', '1839-06-21', '1908-09-29', 'Brasileiro', NOW(), NOW()),
('Clarice Lispector', '1920-12-10', '1977-12-09', 'Brasileira', NOW(), NOW()),
('Jorge Amado', '1912-08-10', '2001-08-06', 'Brasileiro', NOW(), NOW()),
('Graciliano Ramos', '1892-10-27', '1953-03-20', 'Brasileiro', NOW(), NOW()),
('Monteiro Lobato', '1882-04-18', '1948-07-04', 'Brasileiro', NOW(), NOW()),
('Carlos Drummond', '1902-10-31', '1987-08-17', 'Brasileiro', NOW(), NOW()),
('Cecília Meireles', '1901-11-07', '1964-11-09', 'Brasileira', NOW(), NOW()),
('Manuel Bandeira', '1886-04-19', '1968-10-13', 'Brasileiro', NOW(), NOW()),
('Rachel de Queiroz', '1910-11-17', '2003-11-04', 'Brasileira', NOW(), NOW()),
('Paulo Coelho', '1947-08-24', NULL, 'Brasileiro', NOW(), NOW());

INSERT INTO `library_db`.`aliases` (`id`, `name`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'M. de Assis', NOW(), NOW(), 1),
(2, 'C. Lispector', NOW(), NOW(), 2),
(3, 'J. Amado', NOW(), NOW(), 3),
(4, 'G. Ramos', NOW(), NOW(), 4),
(5, 'M. Lobato', NOW(), NOW(), 5),
(6, 'C. Drummond', NOW(), NOW(), 6),
(7, 'C. Meireles', NOW(), NOW(), 7),
(8, 'M. Bandeira', NOW(), NOW(), 8),
(9, 'R. Queiroz', NOW(), NOW(), 9),
(10, 'P. Coelho', NOW(), NOW(), 10);

INSERT INTO `library_db`.`pieces` (`tittle`, `pages`, `published_year`, `category`, `is_scanned`, `edition`, `isbn`, `languege`, `cover`, `created_at`, `updated_at`, `publisher_id`, `aliase_id`) VALUES
('Dom Casmurro', 256, 1899, 'Romance', b'1', '1ª Edição', '9788535914849', 'pt-BR', 'Hardcover', NOW(), NOW(), 1, 1),
('A Hora da Estrela', 96, 1977, 'Drama', b'1', '2ª Edição', '9788535915242', 'pt-BR', 'Softcover', NOW(), NOW(), 2, 2),
('Capitães da Areia', 272, 1937, 'Ficção', b'0', '3ª Edição', '9788520926423', 'pt-BR', 'Dustjacket', NOW(), NOW(), 3, 3),
('Vidas Secas', 176, 1938, 'Romance', b'1', '4ª Edição', '9788535913491', 'pt-BR', 'wireo', NOW(), NOW(), 4, 4),
('O Saci', 140, 1921, 'Infantil', b'0', '1ª Edição', '9788579022874', 'pt-BR', 'Hardcover', NOW(), NOW(), 5, 5),
('Alguma Poesia', 120, 1930, 'Poesia', b'1', '1ª Edição', '9788535916881', 'pt-BR', 'Softcover', NOW(), NOW(), 6, 6),
('Romanceiro da Inconfidência', 210, 1953, 'Histórico', b'1', '2ª Edição', '9788572328560', 'pt-BR', 'Dustjacket', NOW(), NOW(), 7, 7),
('Estrela da Vida Inteira', 360, 1966, 'Poesia', b'0', '3ª Edição', '9788535912777', 'pt-BR', 'wireo', NOW(), NOW(), 8, 8),
('O Quinze', 200, 1930, 'Romance', b'1', '2ª Edição', '9788535902853', 'pt-BR', 'Hardcover', NOW(), NOW(), 9, 9),
('O Alquimista', 208, 1988, 'Autoajuda', b'1', '5ª Edição', '9780061122415', 'pt-BR', 'Softcover', NOW(), NOW(), 10, 10);

INSERT INTO `library_db`.`volumes` (`bought_date`, `status`, `printing_year`, `condition`, `created_at`, `updated_at`, `piece_id`, `session_id`) VALUES
('2020-01-15', 'guardados', 2020, 'Novo', NOW(), NOW(), 1, 1),
('2019-05-10', 'alocado', 2019, 'Boas condições', NOW(), NOW(), 2, 2),
('2018-03-22', 'guardados', 2018, 'Parcialmente danificado', NOW(), NOW(), 3, 3),
('2021-07-08', 'não alocavel', 2021, 'Danificado', NOW(), NOW(), 4, 4),
('2017-10-12', 'alocado', 2017, 'Boas condições', NOW(), NOW(), 5, 5),
('2022-11-11', 'guardados', 2022, 'Novo', NOW(), NOW(), 6, 6),
('2016-04-05', 'perdido', 2016, 'impréstimo inviável', NOW(), NOW(), 7, 7),
('2015-09-30', 'guardados', 2015, 'Boas condições', NOW(), NOW(), 8, 8),
('2014-12-25', 'não alocavel', 2014, 'Danificado', NOW(), NOW(), 9, 9),
('2023-02-20', 'alocado', 2023, 'Novo', NOW(), NOW(), 10, 10);


INSERT INTO `library_db`.`volumes_rentals` (`volume_id`, `rental_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
