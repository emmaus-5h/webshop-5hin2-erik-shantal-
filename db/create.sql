--
-- create tables
--

-- feedback GEE 30 jan 2024
-- de tabellen voor het merk heb je goed gemaakt
-- let op de eisen die onder beoordelig staan in de opdracht
-- daarin staat dat een n:m ook nodig is

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  merk_id INTEGER
--  kleur_id integer
);
CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (255)
  );

--CREATE TABLE kleur (
--  id INTEGER PRIMARY KEY AUTOINCREMENT,
--  name VARCHAR (255)
--  );

CREATE TABLE colors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR (255)
);

CREATE TABLE product_colors (
  product_id  INTEGER REFERENCES products(id),
  color_id    INTEGER REFERENCES colors(id),
  PRIMARY KEY (product_id, color_id)
);

CREATE TABLE sizes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR (255)
  );

CREATE TABLE product_sizes (
  product_id  INTEGER REFERENCES products(id),
  size_id     INTEGER REFERENCES sizes(id),
  PRIMARY KEY (product_id, size_id)
);

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, merk_id) values ('BASIC STÜSSY TEE', 'Shortsleeve crewneck tee.', '816905633-0', 48, 1);
insert into products (name, description, code, price, merk_id) values ('DOBERMANS TEE', 'Oversized tee in piece dyed cotton with screenprinted graphics', '077030122-3', 48, 1);
insert into products (name, description, code, price, merk_id) values ('LOCATIONS TEE PIGMENT DYED', 'Oversized pigment dyed tee in midweight 6.5oz cotton jersey. Features screenprinted graphics.
', '686928463-6', 48, 1);
insert into products (name, description, code, price, merk_id) values ('TOUGH GEAR TEE', 'Oversized tee in piece dyed cotton with screenprinted graphics.', '492662523-8', 48, 1);
insert into products (name, description, code, price, merk_id) values ('Hand Draw Ape Head Crewnec', 'Material: Shell 85% cotton; 15% polyester; Trimming 100% cotton.', '492662523-11', 340, 2);
insert into products (name, description, code, price, merk_id) values ('Liquid Camo Shark Full Zip Hoodie', 'Material: Shell 80% cotton; 20% polyester.', '492662523-12', 552, 2);





insert into merk (name) values ('Stussy');
insert into merk (name) values ('Bape');
insert into merk (name) values ('Adidas');
/*
insert into kleur (name) values ('white');
insert into kleur (name) values ('black');
insert into kleur (name) values ('blue');
insert into kleur (name) values ('beige');
*/

INSERT INTO colors (code, name) VALUES ('W', 'white');
INSERT INTO colors (code, name) VALUES ('B', 'black');
INSERT INTO colors (code, name) VALUES ('G', 'grey');
INSERT INTO colors (code, name) VALUES ('B', 'blue');
INSERT INTO colors (code, name) VALUES ('P', 'pink');


INSERT INTO sizes (code, name) VALUES ('XS', 'extra small');
INSERT INTO sizes (code, name) VALUES ('S', 'small');
INSERT INTO sizes (code, name) VALUES ('M', 'medium');
INSERT INTO sizes (code, name) VALUES ('L', 'large');
INSERT INTO sizes (code, name) VALUES ('XL', 'extra lagre');
INSERT INTO sizes (code, name) VALUES ('XXL', 'extra extra lagre');

INSERT INTO product_sizes (product_id, size_id) VALUES (1, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (1, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (1, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (1, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (1, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (1, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (2, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (3, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (4, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (5, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (6, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (7, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (8, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (9, 6);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 1);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 2);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 3);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 4);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 5);
INSERT INTO product_sizes (product_id, size_id) VALUES (10, 6);

INSERT INTO product_colors (product_id, color_id) VALUES (1, 1);
--INSERT INTO product_colors (product_id, color_id) VALUES (1, 2);
--INSERT INTO product_colors (product_id, color_id) VALUES (1, 3);
--INSERT INTO product_colors (product_id, color_id) VALUES (1, 4);
--INSERT INTO product_colors (product_id, color_id) VALUES (1, 5);
--INSERT INTO product_colors (product_id, color_id) VALUES (1, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (2, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (3, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (4, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (5, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (6, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (7, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (8, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (9, 6);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 1);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 2);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 3);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 4);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 5);
INSERT INTO product_colors (product_id, color_id) VALUES (10, 6);
