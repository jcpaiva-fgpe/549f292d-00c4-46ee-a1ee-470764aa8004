CREATE TABLE medicamentos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(8,2) NOT NULL
);

CREATE TABLE stocks_farmacia (
    farmacia_id INTEGER,
    medicamento_id INTEGER,
    cantidad INTEGER NOT NULL,
    ultima_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (farmacia_id, medicamento_id)
);