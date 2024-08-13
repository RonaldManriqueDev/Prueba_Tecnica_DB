
SELECT 
    u.usuario_id, 
    u.nombre, 
    u.email, 
    u.rol, 
    u.estado, 
    COALESCE(SUM(v.total_venta), 0) AS total_sales 
FROM 
    usuarios u
LEFT JOIN 
    ventas v ON u.usuario_id = v.user_id
GROUP BY 
    u.usuario_id, 
    u.nombre, 
    u.email, 
    u.rol, 
    u.estado
ORDER BY 
    u.usuario_id
LIMIT 0, 1000;
