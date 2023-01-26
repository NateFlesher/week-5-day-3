CREATE TABLE "Concessions" (
	"concessions_id" SERIAL PRIMARY KEY,
	"food" VARCHAR(100),
	"drink" VARCHAR(100),
	"concession_cost" NUMERIC(5,2)
);

CREATE TABLE "Premimum Membership" (
	"prem_mem_id" SERIAL PRIMARY KEY,
	"is_member" BOOLEAN
);

CREATE TABLE "Payment" (
	"payment_id" SERIAL PRIMARY KEY,
	"payment_type" VARCHAR(100),
	"is_default" BOOLEAN
);

CREATE TABLE "Movie Times" (
	"movie_times_id" SERIAL PRIMARY KEY,
	"matinee_times" VARCHAR(500),
	"regular_times" VARCHAR(500)
);

CREATE TABLE "Movies" (
	"movies_id" SERIAL PRIMARY KEY,
	"movie_name" VARCHAR(100),
	"movie_rating" VARCHAR(100),
	"movie_synopsis" VARCHAR(500),
	"movie_times_id" INTEGER REFERENCES "Movie Times"("movie_times_id")
);

CREATE TABLE "Tickets" (
	"tickets_id" SERIAL PRIMARY KEY,
	"ticket_type" VARCHAR(100),
	"ticket_cost" NUMERIC(5,2),
	"movie_id" INTEGER REFERENCES "Movies"("movies_id")
);

CREATE TABLE "User Qty" (
	"qty_id" SERIAL PRIMARY KEY,
	"quantity" INTEGER,
	"tickets_id" INTEGER REFERENCES "Tickets"("tickets_id"),
	"concessions_id" INTEGER REFERENCES "Concessions"("concessions_id")
);

CREATE TABLE "Cart" (
	"cart_id" SERIAL PRIMARY KEY,
	"qty_id" INTEGER REFERENCES "User Qty"("qty_id")
);

CREATE TABLE "Customer" (
	"customer_id" SERIAL PRIMARY KEY,
	"first_name" VARCHAR(100),
	"last_name" VARCHAR(100),
	"prem_mem_id" INTEGER REFERENCES "Premimum Membership"("prem_mem_id"),
	"payment_id" INTEGER REFERENCES "Payment"("payment_id")
);

CREATE TABLE "Order" (
	"order_id" SERIAL PRIMARY KEY,
	"order_date" DATE,
	"tickets_cost" NUMERIC(8,2),
	"concessions_cost" NUMERIC(8,2),
	"total_cost" NUMERIC(8,2),
	"cart_id" INTEGER REFERENCES "Cart"("cart_id"),
	"customer_id" INTEGER REFERENCES "Customer"("customer_id")
);

INSERT INTO "Concessions"(
	"food",
	"concession_cost"
) VALUES(
	'small popcorn',
	6.99
);

INSERT INTO "Concessions"(
	"food",
	"concession_cost"
) VALUES(
	'medium popcorn',
	7.99
);

SELECT *
FROM "Concessions";

INSERT INTO "Concessions"(
	"food",
	"concession_cost"
) VALUES(
	'large popcorn',
	8.99
);

INSERT INTO "Concessions"(
	"drink",
	"concession_cost"
) VALUES(
	'small',
	5.99
);

INSERT INTO "Concessions"(
	"drink",
	"concession_cost"
) VALUES(
	'medium drink',
	8.99
);

INSERT INTO "Concessions"(
	"drink",
	"concession_cost"
) VALUES(
	'large drink',
	9.99
);

INSERT INTO "Payment"(
	"payment_type",
	"is_default"
) VALUES(
	'Visa',
	True
);



INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'9:00 a.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'10:00 a.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'11:00 a.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'12:00 p.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'1:00 p.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'2:00 p.m.'
);

INSERT INTO "Movie Times"(
	"matinee_times"
	
) VALUES(
	'3:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'4:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'5:00 p.m.'
);
INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'6:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'7:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'8:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'9:00 p.m.'
);

INSERT INTO "Movie Times"(
	"regular_times"
	
) VALUES(
	'10:00 p.m.'
);

SELECT *
FROM "Movie Times";

INSERT INTO "Premimum Membership"(
	"is_member"
	
) VALUES(
	TRUE
);

INSERT INTO "Premimum Membership"(
	"is_member"
	
) VALUES(
	FALSE
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	1
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	2
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	3
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	4
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	5
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	6
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	7
);

INSERT INTO "Movies"(
	"movie_name",
	"movie_rating",
	"movie_synopsis",
	"movie_times_id"
) VALUES(
	'Avatar 2: Way Of Water',
	'PG-13',
	'Long Awaited Sequel to James Camerons Original Masterpiece',
	8
);

SELECT *
FROM "Movies"

INSERT INTO "Tickets"(
	"ticket_type",
	"ticket_cost",
	"movie_id"
) VALUES(
	'matinee',
	10,
	1
);


INSERT INTO "Tickets"(
	"ticket_type",
	"ticket_cost",
	"movie_id"
) VALUES(
	'regular',
	13,
	8
);

INSERT INTO "User Qty"(
	"quantity",
	"tickets_id",
	"concessions_id"
) VALUES (
	1,
	1,
	1
);

INSERT INTO "Cart"(
	"qty_id"
) VALUES (
	1
);

INSERT INTO "Customer"(
	"first_name",
	"last_name",
	"prem_mem_id",
	"payment_id"
) VALUES(
	'Nate',
	'Flesher',
	1,
	1
);

INSERT INTO "Order"(
	"order_date",
	"tickets_cost",
	"concessions_cost",
	"total_cost",
	"cart_id",
	"customer_id"
) VALUES(
	'2023/1/26',
	13,
	5.99,
	18.99,
	1,
	1
);












