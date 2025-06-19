-- Ticket promedio
SELECT AVG(precio * cantidad) AS ticket_promedio
FROM ventas;

-- Ventas por mes
SELECT DATE_TRUNC('month', fecha) AS mes, SUM(precio * cantidad) AS total_mensual
FROM ventas
GROUP BY mes
ORDER BY mes;