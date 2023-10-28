create table movie(
	movie_id SERIAL PRIMARY KEY UNIQUE,
	title VARCHAR(100),
	description VARCHAR(200),
	director VARCHAR(100)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY UNIQUE,
	customer_id INTEGER UNIQUE,
	movie_id INTEGER,
	theater_id INTEGER,
	price numeric(4,2)
);

CREATE TABLE customer(
	customer_id INTEGER PRIMARY KEY,
	name VARCHAR(100),
	email VARCHAR(100)
);

CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,
	location VARCHAR(100),
	num_seats INTEGER
);