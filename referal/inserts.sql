INSERT INTO authors (first_name, last_name, country, date_of_birth) VALUES
('Лев', 'Толстой', 'Россия', '1828-09-09'),
('Федор', 'Достоевский', 'Россия', '1821-11-11'),
('Вильям', 'Шекспир', 'Англия', '1564-04-26');

INSERT INTO books (title, author_id, publication_year, genre) VALUES
('Война и мир', 1, 1869, 'Роман'),
('Анна Каренина', 1, 1877, 'Роман'),
('Преступление и наказание', 2, 1866, 'Роман'),
('Гамлет', 3, 1600, 'Трагедия'),
('Отелло', 3, 1604, 'Трагедия');

INSERT INTO editions (book_id, publication_date, isbn, publisher) VALUES
(1, '2005-01-01', '978-1-56619-909-4', 'Penguin Classics'),
(2, '2000-05-20', '978-1-56619-909-5', 'Oxford University Press'),
(3, '1999-07-15', '978-1-56619-909-6', 'Penguin Books'),
(4, '2010-06-01', '978-1-56619-909-7', 'Cambridge University Press'),
(5, '2008-09-01', '978-1-56619-909-8', 'Folger Shakespeare Library');

INSERT INTO readers (first_name, last_name, registration_date) VALUES
('Иван', 'Иванов', '2021-09-01'),
('Петр', 'Петров', '2021-10-15'),
('Светлана', 'Сидорова', '2022-01-20');

-- Предположим, что Иван взял "Война и мир", а Петр - "Гамлет".
INSERT INTO loans (reader_id, edition_id, loan_date, return_date) VALUES
(1, 1, '2023-03-01', NULL),
(2, 4, '2023-03-05', NULL);