-- Total de ventas por región
SELECT region, SUM(precio * cantidad) AS total_ventas
FROM ventas
GROUP BY region;

-- Productos más vendidos
SELECT producto, SUM(cantidad) AS total_vendido
FROM ventas
GROUP BY producto
ORDER BY total_vendido DESC
LIMIT 5;

-- Ventas por vendedor
SELECT vendedor, SUM(precio * cantidad) AS total_vendido
FROM ventas
GROUP BY vendedor;