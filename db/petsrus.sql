DROP TABLE pets;
DROP TABLE pet_stores;


CREATE TABLE pet_stores(
id SERIAL4 primary key,
name VARCHAR(255) not null,
address VARCHAR(255) not null,
type VARCHAR(255)
);

CREATE TABLE pets(
id SERIAL4 primary key,
name VARCHAR(255) not null,
type VARCHAR(255) not null,
pet_store_id INT4 references stores(id)
);


