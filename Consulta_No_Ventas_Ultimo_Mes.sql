SELECT 
    u.usuario_id,
    u.nombre
FROM 
    usuarios u
LEFT JOIN 
    ventas v ON u.usuario_id = v.user_id AND v.fecha_venta >= CURDATE() - INTERVAL 1 MONTH
WHERE 
    v.user_id IS NULL;
