CREATE TABLE Customer (
  "customer_name" VARCHAR (150),
  "phone_number" INTEGER,
  "customer_id" SERIAL,
  PRIMARY KEY ("customer_id")
);

CREATE TABLE Ticket (
  "ticket_number" SERIAL,
  "ticket_price" NUMERIC(4,2),
  "seat_number" INTEGER,
  "movie_id" INTEGER,
  "customer_id" INTEGER,
  PRIMARY KEY ("ticket_number"),
    FOREIGN KEY ("movie_id")
      REFERENCES "movie"("movie_id"), 
	FOREIGN KEY ("customer_id")
	  REFERENCES "customer"("customer_id")
);

CREATE TABLE "movie" (
  "movie_name" VARCHAR,
  "movie_time" TIME,
  "movie_length" TIME,
  "movie_id" SERIAL,
  PRIMARY KEY ("movie_id")
);

CREATE TABLE "concession" (
  "item_name" VARCHAR,
  "staff_id" INTEGER,
  "item_cost" NUMERIC(5,2),
  "item_id" SERIAL,
  "item_stock" INTEGER,
  PRIMARY KEY ("item_id")
);

INSERT INTO customer(
	customer_name,
	phone_number,
	customer_id
)VALUES(
	'Kuda',
	'55509',
	1
);

SELECT *
FROM customer;

INSERT INTO Movie 
VALUES(
	'Galactica',
	'08:20:00',
	'01:43:52',
	'1'
);



INSERT INTO Ticket (
	ticket_number,
	ticket_price,
	seat_number,
	movie_id,
	customer_id
)VALUES(
	'01',
	09.99,
	'4',
	'1',
	'74923'
);

INSERT INTO CONCESSION 
VALUES(
	'Popcorn',
	'324',
	'08.25',
	'8429',
	'543'
);
