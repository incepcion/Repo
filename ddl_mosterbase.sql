-- Crear tablas
CREATE TABLE proveedores (
    provee_id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE productos (
    produc_id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio NUMERIC CHECK (precio > 0),
    provee_id INTEGER,
    FOREIGN KEY (provee_id) REFERENCES proveedores(provee_id) ON DELETE CASCADE
);

CREATE TABLE compras (
    compra_id SERIAL PRIMARY KEY,
    fecha DATE NOT NULL DEFAULT CURRENT_DATE,
    provee_id INTEGER,
    total NUMERIC,
    FOREIGN KEY (provee_id) REFERENCES proveedores(provee_id) ON DELETE CASCADE
);

CREATE TABLE detalle_compra (
    detalle_id SERIAL PRIMARY KEY,
    compra_id INTEGER,
    produc_id INTEGER,
    cantidad NUMERIC,
    subtotal NUMERIC,
    FOREIGN KEY (compra_id) REFERENCES compras(compra_id) ON DELETE CASCADE,
    FOREIGN KEY (produc_id) REFERENCES productos(produc_id) ON DELETE CASCADE
);

CREATE TABLE inventario (
    inventario_id   SERIAL PRIMARY KEY,
    produc_id INTEGER,
    cantidad NUMERIC,
    FOREIGN KEY (produc_id) REFERENCES productos(produc_id) ON DELETE CASCADE
    );

CREATE TABLE pagos (
    pago_id SERIAL PRIMARY KEY,
    compra_id INTEGER,
    FOREIGN KEY (compra_id) REFERENCES compras(compra_id) ON DELETE CASCADE
);