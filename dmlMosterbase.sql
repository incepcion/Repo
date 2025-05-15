SELECT * FROM proveedores
INSERT INTO proveedores (nombre)values('angel')
INSERT INTO proveedores (nombre)values('juan')
INSERT INTO proveedores (nombre)values('djmario')

SELECT * FROM productos
INSERT INTO productos (nombre,precio,provee_id)values('harina',1500,3)
INSERT INTO productos (nombre,precio,provee_id)values('marihuana',7000,2)
INSERT INTO productos (nombre,precio,provee_id)values('azucar',74000,2)

SELECT * FROM inventario
INSERT INTO inventario (cantidad,produc_id)values(666,2)
INSERT INTO inventario (cantidad,produc_id)values(54,1)
INSERT INTO inventario (cantidad,produc_id)values(4,3)

SELECT * FROM compras
INSERT INTO compras (fecha,provee_id,total)values('27/04/26',2,123000)
INSERT INTO compras (fecha,provee_id,total)values('22/02/26',1,50000)

SELECT * FROM pagos
INSERT INTO pagos(compra_id)values(1)
INSERT INTO pagos(compra_id)values(2)

SELECT * FROM detalle_compra
INSERT INTO detalle_compra(compra_id,produc_id,cantidad,subtotal)values(1,2,600,4200000)
INSERT INTO detalle_compra(compra_id,produc_id,cantidad,subtotal)values(2,3,2,148000)