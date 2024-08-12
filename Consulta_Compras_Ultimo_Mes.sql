
/* No se registran usuarios con mas de 5 compras el valor maximo de ventas es 2 del usuario 'Pepe'*/
SELECT 
    v.user_id,
    COUNT(v.venta_id) AS numero_compras
FROM 
    ventas v
WHERE 
    v.fecha_venta >= CURDATE() - INTERVAL 1 MONTH
GROUP BY 
    v.user_id
HAVING 
    COUNT(v.venta_id) > 5;
