SELECT 
    DATE_FORMAT(v.fecha_venta, '%Y-%m') AS mes,
    COALESCE(SUM(v.total_venta), 0) AS total_sales
FROM 
    ventas v
GROUP BY 
    DATE_FORMAT(v.fecha_venta, '%Y-%m')
ORDER BY 
    DATE_FORMAT(v.fecha_venta, '%Y-%m');
