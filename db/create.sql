--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  merk_id INTEGER
);
CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR (255)
  );
  

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, merk_id) values ('White Stussy T-shirt', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5, 1);
insert into products (name, description, code, price, merk_id) values ('Black Stussy Hoodie', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3' 11, 1);
insert into products (name, description, code, price, merk_id) values ('Black Stussy T-shirt', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 1);
insert into products (name, description, code, price, merk_id) values ('White Stussy Hoodie', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 1);
insert into products (name, description, code, price, merk_id) values ('Beige Blur Stussy T-shirt', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 1);
insert into products (name, description, code, price, merk_id) values ('Blue Blur Stussy T-shirt', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 1);

insert into products (name, description, code, price, merk_id) values ('White Nike T-shirt', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 10.5, 2);
insert into products (name, description, code, price, merk_id) values ('Black Nike Hoodie', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11, 2);
insert into products (name, description, code, price, merk_id) values ('Black Nike T-shirt', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5, 2);
insert into products (name, description, code, price, merk_id) values ('White Nike Hoodie', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5, 2);
insert into products (name, description, code, price, merk_id) values ('Black Nike Shorts', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14, 2);
insert into products (name, description, code, price, merk_id) values ('White Nike Pants', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14, 2);

insert into merk (name) values ('Stussy');
insert into merk (name) values ('Nike');
insert into merk (name) values ('Adidas');