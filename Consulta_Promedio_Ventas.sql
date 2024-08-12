SELECT 
    COALESCE(SUM(v.total_venta), 0) / NULLIF(DATEDIFF(MAX(v.fecha_venta), MIN(v.fecha_venta)) + 1, 0) AS promedio_diario
FROM 
    ventas v;
