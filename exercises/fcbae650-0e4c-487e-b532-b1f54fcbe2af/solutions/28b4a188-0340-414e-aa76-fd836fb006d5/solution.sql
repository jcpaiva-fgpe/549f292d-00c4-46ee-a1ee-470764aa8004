CREATE TABLE farmacias (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(200) NOT NULL
);

ALTER TABLE stocks_farmacia
ADD CONSTRAINT fk_stocks_farmacia 
    FOREIGN KEY (farmacia_id) REFERENCES farmacias(id),
ADD CONSTRAINT fk_stocks_medicamento 
    FOREIGN KEY (medicamento_id) REFERENCES medicamentos(id);
