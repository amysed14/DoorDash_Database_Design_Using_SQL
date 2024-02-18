USE doordash;
INSERT INTO Customer Values
(100, 'Hermione', 'Granger', 3012298192, 'hermionegranger@hogwarts.edu'),
(101, 'Harry', 'Potter', 1994563131, 'Hpotter@gryffindor.com'),
(102, 'Tony', 'Stark', 3339981291, 'IamIronMan@mcu.com'),
(103, 'Steve', 'Rogers', 2239178124, 'CaptainAmerica@marvel.com'),
(104, 'Natasha', 'Romanoff', 6693097897, NULL),
(105, 'Ron', 'Weasley', 2910228991, 'RonWeasley@hogwarts.edu'),
(106, 'Kim', 'Namjoon', 7165202908, 'kimnamjoon@bts.com'),
(107, 'Dwight', 'Schrute', 6689201331, 'SchruteFarms@theoffice.com'),
(108, 'Michael', 'Scott', 3915528992, 'Michael@michaelscottpapercompany.com'),
(109, 'Monica', 'Geller', 1192823117, NULL),
(110, 'Jake', 'Peralta', 7135168890, 'Jake.P123@nypd.com');
	
Insert into Address Values			
(500, '1498 Hello Dr', NULL,' San Jose', 'CA', '94024'),		
(501, 'Number 4 Privet Drive', NULL,  'San Mateo', 'CA',  '95054'),	
(502, '1000 Stark Dr',' Apt B', 'New York', 'NY', '10001'),	
(503, '2045 Cap Street', NULL, 'Brooklyn',' NY', '11237'),	
(504, 'Avengers Rd', NULL, 'New York', 'NY', '10004'),	
(505, '1509 Burroghs St', 'Unit C', 'Palo Alto',' CA', '94306'),	
(506, '145 Seventh St', NULL, 'Foster City', 'CA', '94404'),	
(507, '893 Shrew Ln',' Apt A', 'Queens',' NY',' 11428'),	
(508,' 678 Sarcasm St', NULL, 'Daly City',' CA', '91052'),	
(509,  '495 Grove Street',' Apt 215A',  'Manhattan', 'NY',' 10016'),
(510, '1005 Friends Ave', NULL,' Brooklyn', 'NY', '11204'),	
(550, '2014 Ponticello Dr', NULL, 'Brookyln', 'NY',' 11205'),	
(551, '8765 Via Margutta Ave', NULL,' Santa Clara',' CA', '95050'),
(552, '1452 Monroe Ave', NULL, 'San Jose',' CA',' 95067'),	
(553,'134 Queens Dr', NULL, 'New York', 'NY', '11235'),	
(554, '1357 Stanford St', NULL, 'Palo Alto', 'CA',' 94020'),	
(555,' 18 Joy Joy St', 'Suite C',  'Brookyln', 'NY', '11001'),	
(556, '1754 Jade Rabbit', NULL, 'Santa Clara', 'CA', '95050'),	
(557, '162 Winchester Dr',NULL, 'San Jose', 'CA', '94203'),		
(558, '17 Fourth St', 'Suite A', 'Queens', 'NY', '11267'),	
(559, '1829 Lily Dr', NULL, 'Foster City', 'CA', '94404');

INSERT INTO CustomerAddress Values
(100, 500),
(101, 501),
(102, 502),
(103, 503),
(104, 504),
(105, 505),
(107, 507),
(108, 508),
(109, 509),
(110, 510);

INSERT INTO Restaurant VALUES
(300, 550, 'The Cal Zones', 'Italian'),
(301, 551, 'Taste of Rome', 'Italian'),
(302, 552, 'Bombay', 'Indian'),
(303, 553, 'Bawarchi', 'Indian'),
(304, 554, 'Annapurna', 'Indian'),
(305, 555, 'The Chinese Wok', 'Chinese'),
(306, 556, 'Moon Moon Heaven', 'Chinese'),
(307, 557, 'The Cantonese Couple', 'Chinese'),
(308, 558, 'Sushi Heaven', 'Japanese'),
(309, 559, 'Sushi Palace', 'Japanese');

INSERT INTO Menu VALUES
(700, 300, 'Pizza', 'Pepperoni', 15.99),
(710, 300, 'Pizza', 'Spicy Chicken', 16.99),
(711, 300, 'Pizza', 'Pineapple, Garlic and Onions', 11.99),
(712, 300, 'Pizza', 'Garlic Bread', 9.99),
(701, 301, 'Pasta', 'Pesto Pasta', 14.99),
(713, 301, 'Pasta', 'Alfredo Pasta', 14.99),
(702, 302, 'Naan', 'Gaarlic Naan', 2.39),
(714, 302, 'Naan', 'Butter Naan', 3.39),
(703, 303, 'Butter Chicken', 'Spicy Butter Chicken', 14.99),
(715, 303, 'Butter Paneer', 'Spicy Paneer in Buttery Sauce', 14.99),
(704, 304, 'Modak', 'Steaming hot modaks', 4.99),
(716, 304, 'Puran Poli', 'Steaming hot Puran polis', 7.99),
(717, 304, 'Batata Bhaji', 'Spicy potato bhaaji', 9.99),
(718, 304, 'Vanga Bhaji', 'Spicy brinjal sabji Maharashtrian Style', 8.99),
(719, 304, 'Bisibelle Bhaat', 'Rice with lentils and mixed veggies', 12.99),
(705, 305, 'Hakka Noodles', 'Hakka Noodles with Chicken and mixed veggies', 14.99),
(706, 306, 'Orange Chicken', 'Sweet fried chicken with orange flavor', 9.99),
(707, 307, 'Kung Pao Chicken', 'Chicken with mixed veggies and peanuts', 10.99),
(708, 308, 'Spicy Tuna', 'Tuna Roll with spices and cucumbers', 12.99),
(709, 309, 'Sashimi', 'Fresh cuts of delicious fish', 19.99),
(720, 309, 'Edamame', 'Fresh steamed edamame beans', 5.99),
(721, 309, 'Spicy Edamame', 'Fresh steamed edamame beans with spice', 7.99);

INSERT INTO DeliveryAgent VALUES
(400, 'Colin', 'Creevey', 3877433092, 'Car', 'I1747847'),
(401, 'Penelope', 'Clearwater', 7004485196, 'Car', 'S7651638'),
(402, 'Cho', 'Chang', 6160655717, 'Car', 'G4091548'),
(403, 'Oliver', 'Wood', 7847691943, 'Car', 'C9487761'),
(404, 'Charlie', 'Weasley', 8192053840, 'Bike', 'J4192609'),
(405, 'Parvati', 'Patil', 5163236456, 'Car', 'O3732019'),
(406, 'Victor', 'Krum', 4895434732, 'Car', 'T4700970'),
(407, 'Susan', 'Bones', 5520411186, 'Car', 'W2419503'),
(408, 'Dean', 'Thomas', 1457884593, 'Bike', 'L9602441'),
(409, 'Lavender', 'Brown', 2536411407, 'Car', 'A1109532'),
(410, 'Vincent', 'Crabbe', 3340396122, 'Car', 'U6074283');

INSERT INTO Orders Values
(200, 100, '2021-01-14 03:14:07', 700, 1, 400),
(201, 101, '2021-03-09 12:34:09', 714, 2, 403),
(202, 109, '2021-03-14 13:14:15', 716, 10, 407),
(203, 103, '2021-04-12 05:45:12', 721, 2, 409),
(204, 100, '2021-05-01 12:22:22', 714, 2, 403),
(205, 105, '2021-05-11 21:34:04', 719, 3, 404),
(206, 106, '2021-06-06 14:45:07', 714, 5, 406),
(207, 106, '2021-06-06 18:34:23', 703, 1, 406),
(208, 107, '2021-07-04 17:17:17', 709, 1, 401),
(209, 110, '2021-08-13 19:23:01', 718, 4, 402);

Insert into Payment Values	
(600,  100, 'Debit Card', '2021-01-14 03:14:07', 19.22),
(601,  101, 'Debit Card', '2021-03-09 12:34:09', 77.88),
(602,  109, 'Debit Card', '2021-03-14 13:14:15', 14.14),
(603,  103, 'Credit Card', '2021-04-12 05:45:12', 23.23),
(604,  100, 'Credit Card', '2021-05-01 12:22:22', 12.56),
(605,  105, 'Credit Card', '2021-05-11 21:34:04', 22.15),
(606,  106, 'Debit Card', '2021-06-06 14:45:07', 6.66),
(607,  106, 'Credit Card', '2021-06-06 18:34:23', 10.97),
(608,  107, 'Credit Card', '2021-07-04 17:17:17', 9.47),
(609,  110, 'Credit Card', '2021-08-13 19:23:01', 7.43);

INSERT INTO Review VALUES
(800, 200, 400, 5, 4, "The food was phenomenal. We ordered the Pepperoni pizza and it was so delicious,
we finished every last bite. Highly recommend this place."),
(801, 201, 403, 1, 5, "I'll never order here again. The packing was so bad and half the food had spilled from the containers.
On top of this, I was billed three items instead of two. "),
(802, 202, 407, 5, 5, "We have ordered here twice and the food was good both the times.
Items we love to reorder - Dabeli (very soft, less spicy and delicious overall).The food is inexpensive.
Dahi batata sev puri was also great, with a perfect combination of sweet and savory.
We didn’t like the Bombay Paneer Frankie roll, the spices felt a bit undercooked so we ordered a paneer tikka sandwich - a bit spicy but yummy.
We will order again to try some more items from the menu."),
(803, 203, 409, 4, 3, "The udon noodles are great! The veggies in it leave a little to be desired.
The sushi roll, while a little overpriced was perfect and the wasabi is on point."),
(804, 204, 403, 1, 2, "Bad food and highly unhappy with the place"),
(805, 205, 404, 1, 2, "The amount of food for the price is insane.
I ordered cashed chicken and broccoli beef, I got two small togo containers.
This was during lunch mind you."),
(806, 206, 406, 1, 4, "The meal is really terrible. Almost every meal is salty."),
(807, 207, 406, 1, 4, "The meat was so old, my kid could not even chew it and the egg in the goat biryani was old, refrigerated and cold.
The person on the call says get it we will change it for you."),
(808, 208, 401, 4, 1, "We are regulars here. Sushi is pretty good here. They don't charge for hot tea.
Packing is also pretty okay. Their sushi is a bit pricey but thats expected in the Bay Area."),
(809, 209, 402, 4, 3, "Good food");

select * from restaurant;
