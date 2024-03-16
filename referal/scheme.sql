CREATE TABLE IF NOT EXISTS authors (
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    date_of_birth DATE
);

-- Создание таблицы "книги"
CREATE TABLE IF NOT EXISTS books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INTEGER NOT NULL,
    publication_year INTEGER,
    genre VARCHAR(50),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Создание таблицы "издания"
CREATE TABLE IF NOT EXISTS editions (
    edition_id SERIAL PRIMARY KEY,
    book_id INTEGER NOT NULL,
    publication_date DATE NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publisher VARCHAR(100),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Создание таблицы "читатели"
CREATE TABLE IF NOT EXISTS readers (
    reader_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL
);

-- Создание таблицы "выдача книг"
CREATE TABLE IF NOT EXISTS loans (
    loan_id SERIAL PRIMARY KEY,
    reader_id INTEGER NOT NULL,
    edition_id INTEGER NOT NULL,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    FOREIGN KEY (edition_id) REFERENCES editions(edition_id)
);