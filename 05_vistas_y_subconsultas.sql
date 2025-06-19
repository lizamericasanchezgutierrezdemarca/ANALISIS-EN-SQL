-- Crear vista de resumen por producto
CREATE VIEW resumen_productos AS
SELECT producto, categoria, SUM(cantidad) AS total_vendido, SUM(precio * cantidad) AS total_ingresos
FROM ventas
GROUP BY producto, categoria;

-- Subconsulta: Productos por encima del ticket promedio
SELECT * FROM ventas
WHERE (precio * cantidad) > (
    SELECT AVG(precio * cantidad) FROM ventas
);