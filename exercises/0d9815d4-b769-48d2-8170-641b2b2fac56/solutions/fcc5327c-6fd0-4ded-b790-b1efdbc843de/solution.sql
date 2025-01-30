CREATE TABLE farmaceuticos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL
);

ALTER TABLE farmacias 
add farmaceutico_id INTEGER REFERENCES farmaceuticos (id) ON DELETE cascade;
