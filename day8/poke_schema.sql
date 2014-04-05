DROP TABLE pokemons;
CREATE TABLE pokemons (
	id SERIAL PRIMARY KEY,
	name varchar(255) NOT NULL,
	pokedex_id integer NOT NULL,
	img_url varchar(255) NOT NULL,
	poke_type varchar(255) NOT NULL,
	hp integer NOT NULL,
	attack integer NOT NULL,
	defense integer NOT NULL,
	spattack integer NOT NULL,
	spdefense integer NOT NULL,
	speed integer NOT NULL,
	moves text,
	classification varchar(255),
	height varchar(255),
	weight varchar(255)
);