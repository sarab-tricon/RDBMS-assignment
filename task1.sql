CREATE TABLE author (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    author_id INT NOT NULL REFERENCES author(author_id),
    title VARCHAR(100) NOT NULL,
    published_year INT
);
