INSERT INTO Customer (
	first_name,
	last_name,
	email,
	birthday
) VALUES (
	'Oleg',
	'Yasikov',
	'yaskivo@gmail.com',
	'05/05/1965'
), (
	'Juan',
	'Salvador',
	'salvajuan@yahoo.com',
	'06/23/1963'
), (
	'Sadie',
	'Rhodes',
	's.rhodes88@yahoo.com',
	'04/30/1988'
), (
	'Eduardo',
	'Mendoza',
	'edumendoza@gmail.com',
	'09/22/1990'
	
), (
	'Joi',
	'Mirren',
	'bundleofjoi@gmail.com',
	'10/11/1985'
);

SELECT *
FROM Customer;

DELETE FROM Customer
WHERE customer_id BETWEEN 16 AND 20;

INSERT INTO Concessions (
	item,
	price,
	description,
	category
) VALUES (
	'Small Popcorn',
	9.99,
	'Small bucket of popcorn.',
	'Snacks'
), (
	'Large Popcorn',
	12.00,
	'Large bucket of popcorn. Like really large.',
	'Snacks'
), (
	'Small Pistachios',
	7.99,
	'Small bag of cracked pistachios.',
	'Snacks'
), (
	'Large Pistachios',
	10.99,
	'Big bag of UNCRACKED pistachios. The best.',
	'Snacks'
), (
	'Small Drink',
	4.99,
	'Your choice of fountain drink. 10oz.',
	'Drinks'
), (
	'Large Drink',
	5.50,
	'Your choice of fountain drink. 32oz.',
	'Drinks'
), (
	'Beer',
	8.99,
	'A pint of beer of your choosing.',
	'Drinks'
), (
	'Big Red Vines',
	4.75,
	'Big bag of strawberry Red Vines.',
	'Candy'
), (
	'Sour Patch Kids',
	4.00,
	'Small Bag of Sour Patch Kids.',
	'Candy'
), (
	'Sour Gummy Worms',
	4.75,
	'Big bag of sour gummy worms.',
	'Candy'
);

SELECT *
FROM Concessions;

INSERT INTO Movie (
	title,
	director,
	description,
	runtime,
	showtimes
) VALUES (
	'Finding Meno',
	'Marlo Weyans',
	'Man loses his son and now he is doing everythin to save him.',
	'2 hr 13min',
	'10:30, 13:00, 15:45, 21:00'
), (
	'I Am Despicable',
	'Steve Lucas',
	'Guy creates an army of yellow creatures to take over Earth.',
	'2 hr 24min',
	'10:30, 13:00, 15:45, 21:00'
), (
	'Man-Bat',
	'Christoph Nole',
	'Super rich guy blows up city to stop evil. Yes, all evil.',
	'4 hr 43min',
	'11:30, 16:20'
), (
	'Flash',
	'Steve Heelsbur',
	'This dude is really quick, he runs fast.',
	'1 hr 1min',
	'10:30, 13:00, 15:45, 21:00'
), (
	'The Father of God',
	'Clinton Marantino',
	'Italian mafia. Guns. Action. Betrayal. Certified classic.',
	'3 hr 16min',
	'11:30, 16:20'
);

SELECT *
FROM Movie;

INSERT INTO Tickets (
	ticket_opt,
	price
) VALUES (
	'Child',
	10.75
), (
	'Adult',
	12.75
), (
	'Senior',
	9.50
), (
	'Matinee',
	9.75
), (
	'Student',
	9.50
);

SELECT *
FROM Tickets;

INSERT INTO Inventory (
	amount,
	concessions_id,
	ticket_id
) VALUES (
	200,
	1,
	NULL
), (
	200,
	2,
	NULL
), (
	300,
	3,
	NULL
), (
	250,
	4,
	NULL
), (
	800,
	5,
	NULL
), (
	800,
	6,
	NULL
), (
	300,
	7,
	NULL
), (
	500,
	8,
	NULL
), (
	500,
	9,
	NULL
), (
	500,
	10,
	NULL
), (
	1000,
	NULL,
	1
), (
	1000,
	NULL,
	2
), (
	1000,
	NULL,
	3
), (
	500,
	NULL,
	4
), (
	500,
	NULL,
	5
);

SELECT *
FROM Inventory;

INSERT INTO Subscriber (
	expiration_date,
	subscription_fee,
	favorite_movie,
	customer_id
) VALUES (
	'05/05/2026',
	129.99,
	'Finding Meno',
	1
), (
	'09/23/2024',
	79.99,
	'Man-Bat',
	2
), (
	'04/30/2024',
	50.99,
	'I Am Despicable',
	3
), (
	'10/22/23',
	24.99,
	'I Am Despicable',
	4
), (
	'10/11/2026',
	129.99,
	'The Father of God',
	5
)

SELECT *
FROM Subscriber;

INSERT INTO Movie_Faves (
	subscriber_id,
	movie_id
) VALUES (
	5,
	5
), (
	3,
	2
), (
	4,
	2
), (
	1,
	1
), (
	2,
	3
);

SELECT *
From Movie_Faves;
