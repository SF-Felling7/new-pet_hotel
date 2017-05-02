CREATE TABLE owners (
    owner_id SERIAL PRIMARY KEY NOT NULL,
    owner_name VARCHAR(12),
    address VARCHAR(25),
    phone VARCHAR(13)
);

CREATE TABLE pets (
    pet_id SERIAL PRIMARY KEY NOT NULL,
    pet_name VARCHAR(20),
    color VARCHAR(13),
    Breed VARCHAR(20)
);

CREATE TABLE visits (
    visit_id SERIAL PRIMARY KEY NOT NULL,
    check_in TIMESTAMP,
    CHECK_OUT TIMESTAMP,
    pet_id references (pets_id)
);

CREATE TABLE owner_pet
(
    owner_id int NOT NULL,
    pet_id int NOT NULL,

        owner_id,
        pet_id

    FOREIGN KEY (owner_id) REFERENCES owners (owner_id),
    FOREIGN KEY (pet_id) REFERENCES pets (pet_id)
)

INSERT INTO pets (pet_id, pet_name, color, breed) VALUES ( '2', 'spot', 'grey', 'boxer'  );
INSERT INTO pets (pet_id, pet_name, color, breed) VALUES ('3', 'fluffy', 'black', 'boxer' );
INSERT INTO pets (pet_id, pet_name, color, breed) VALUES ('4', 'tinker', 'grey', 'lab' );
