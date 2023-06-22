CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  birthday DATE
);

CREATE TABLE Concessions (
  concessions_id Serial PRIMARY KEY,
  item VARCHAR(30),
  price NUMERIC(10,2),
  description VARCHAR(100),
  category VARCHAR(50)
);

CREATE TABLE Movie (
  movie_id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  director VARCHAR(20),
  description VARCHAR(300),
  runtime VARCHAR(20),
  showtimes VARCHAR(30)
);

CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  ticket_opt VARCHAR(30),
  price NUMERIC(10,2)
);

CREATE TABLE Subscriber (
  subscriber_id SERIAL PRIMARY KEY,
  expiration_date DATE,
  subscription_fee NUMERIC(10,2),
  favorite_movie VARCHAR(50),
  customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE Inventory (
  inventory_id SERIAL PRIMARY KEY,
  amount INTEGER,
  concessions_id INTEGER,
  ticket_id INTEGER,
	FOREIGN KEY (concessions_id)
		REFERENCES Concessions(concessions_id),
	FOREIGN KEY (ticket_id)
		REFERENCES Tickets(ticket_id)
);

CREATE TABLE Movie_Faves (
  fave_id SERIAL PRIMARY KEY,
  subscriber_id INTEGER,
  movie_id INTEGER,
	FOREIGN KEY (subscriber_id)
		REFERENCES Subscriber(subscriber_id),
	FOREIGN KEY (movie_id)
		REFERENCES Movie(movie_id)
);