--CONSULTA A
SELECT r.reserva_id,
       TO_CHAR (r.fecha_creacion, 'DD/MM/RR') "Fecha Registro",
       c.tipo_documento || '. ' || c.numero_documento "Identificacion",
       c.nombres || ' ' || c.apellidos "Nombre",
       cor.nombre "Origen",
       cde.nombre "Destino",
       TO_CHAR (r.fecha_salida, 'DD/MM/RR') "Fecha Salida",
       TO_CHAR (r.fecha_regreso, 'DD/MM/RR') "Fecha Regreso",
       r.cantidad_personas "Cantidad Personas",
       DECODE(rh.estado,'CON','CONFIRMADA','CAN','CANCELADA','RES','RESERVADA','SIN RESERVA') "Estado Reseva Hotel",
       DECODE(rv.estado,'CON','CONFIRMADA','CAN','CANCELADA','RES','RESERVADA','SIN RESERVA') "Estado Reserva Vuelo"
  FROM reserva r
       JOIN cliente_reserva cr ON (r.reserva_id = cr.reserva_id)
       JOIN cliente c ON (cr.cliente_id = c.cliente_id)
       JOIN ciudad cor ON (r.ciudad_origen = cor.ciudad_id)
       JOIN ciudad cde ON (r.ciudad_destino = cde.ciudad_id)
       LEFT JOIN reserva_hotel rh ON (r.reserva_id = rh.reserva_id)
       LEFT JOIN reserva_vuelo rv ON (r.reserva_id = rv.reserva_id)
 WHERE r.fecha_creacion BETWEEN TO_DATE ('&p_fechainicio', 'DD/MM/YYYY')
                            AND TO_DATE ('&p_fechafin', 'DD/MM/YYYY');

--CONSULTA B
SELECT r.reserva_id,
  TO_CHAR (r.fecha_creacion, 'DD/MM/RR') "Fecha Registro",
    c.tipo_documento || '. ' || c.numero_documento "Identificacion",
    c.nombres || ' ' || c.apellidos "Nombre",
    cor.nombre "Origen",
    cde.nombre "Destino",
    TO_CHAR (r.fecha_salida, 'DD/MM/RR') "Fecha Salida",
    TO_CHAR (r.fecha_regreso, 'DD/MM/RR') "Fecha Regreso",
    r.cantidad_personas "Cantidad Personas",
    DECODE (rh.estado,
        'CON', 'CONFIRMADA',
        'CAN', 'CANCELADA',
        'RES', 'RESERVADA',
        'SIN RESERVA') "Estado Reseva Hotel",
  DECODE (rv.estado,
        'CON', 'CONFIRMADA',
        'CAN', 'CANCELADA',
        'RES', 'RESERVADA',
        'SIN RESERVA') "Estado Reserva Vuelo"
FROM reserva r
       JOIN cliente_reserva cr ON (r.reserva_id = cr.reserva_id)
       JOIN cliente c ON (cr.cliente_id = c.cliente_id)
       JOIN ciudad cor ON (r.ciudad_origen = cor.ciudad_id)
       JOIN ciudad cde ON (r.ciudad_destino = cde.ciudad_id)
       LEFT JOIN reserva_hotel rh ON (r.reserva_id = rh.reserva_id)
       LEFT JOIN reserva_vuelo rv ON (r.reserva_id = rv.reserva_id)
WHERE r.fecha_creacion BETWEEN
  TO_DATE ('&p_fechainicio', 'DD/MM/YYYY') AND TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
  AND (rh.estado = 'CON' OR rv.estado='CON')
;

--CONSULTA C
SELECT  t2.ranking,c.nombre,t2.cnt "Cantidad De Reservas"
  ,(
    SELECT COUNT(*)
    FROM reserva ri
      LEFT JOIN reserva_hotel rh ON (ri.reserva_id = rh.reserva_id)
      LEFT JOIN reserva_vuelo rv ON (ri.reserva_id = rv.reserva_id)
    WHERE ri.ciudad_destino = t2.ciudad_id
      AND ri.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND ri.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
      AND (rh.estado = 'CON' OR rv.estado='CON')
  ) "Reservas Confirmadas"
FROM (
  SELECT t1.ciudad_id ciudad_id, t1.cnt cnt, rank() over (order by t1.cnt desc) ranking
  FROM(
    SELECT r.ciudad_destino ciudad_id ,count(*) cnt
    FROM reserva r
      
    WHERE r.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
    GROUP BY r.ciudad_destino) t1 
  ) t2 JOIN ciudad c on (c.ciudad_id=t2.ciudad_id)
WHERE t2.ranking <= 5;

--CONSULTA D
SELECT  t2.ranking,c.nombre,t2.cnt "Cantidad De Pasajeros"
FROM (
  SELECT t1.ciudad_id ciudad_id, t1.cnt cnt, rank() over (order by t1.cnt desc) ranking
  FROM(
    SELECT r.ciudad_destino ciudad_id ,sum(r.cantidad_personas) cnt
    FROM reserva r  
    WHERE r.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
    GROUP BY r.ciudad_destino) t1 
  ) t2 JOIN ciudad c on (c.ciudad_id=t2.ciudad_id)
WHERE t2.ranking <= 5;

--CONSULTA E
SELECT  t2.ranking,c.nombre,t2.cnt "Monto De Ingresos"
FROM (
  SELECT t1.ciudad_id ciudad_id, t1.cnt cnt, rank() over (order by t1.cnt desc) ranking
  FROM(
    SELECT r.ciudad_destino ciudad_id ,nvl(sum(rh.VALOR),0)+nvl(sum(rv.VALOR),0) cnt
    FROM reserva r
      LEFT JOIN reserva_hotel rh ON (r.reserva_id = rh.reserva_id)
          LEFT JOIN reserva_vuelo rv ON (r.reserva_id = rv.reserva_id)  
    WHERE r.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')  
    GROUP BY r.ciudad_destino) t1 
  ) t2 JOIN ciudad c on (c.ciudad_id=t2.ciudad_id)
WHERE t2.ranking <= 5;
---CONSULTA F
SELECT  t2.ranking,a.nombre,t2.cnt "Cantidad De Reservas"
FROM (
  SELECT t1.aerolinea_id aerolinea_id, t1.cnt cnt, rank() over (order by t1.cnt desc) ranking
  FROM(
    SELECT v.aerolinea_id aerolinea_id ,count(*) cnt
    FROM reserva r
      LEFT JOIN reserva_vuelo rv ON (r.reserva_id = rv.reserva_id)  
      LEFT JOIN vuelo v ON (v.vuelo_id = rv.vuelo_id)
    WHERE r.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')  
    GROUP BY v.aerolinea_id) t1 
  ) t2 JOIN aerolinea a on (a.aerolinea_id=t2.aerolinea_id)
WHERE t2.ranking <= 5;
---CONSULTA G
SELECT  t2.ranking,h.nombre,t2.cnt "Cantidad De Reservas"
FROM (
  SELECT t1.hotel_id hotel_id, t1.cnt cnt, rank() over (order by t1.cnt desc) ranking
  FROM(
    SELECT rh.hotel_id hotel_id ,count(*) cnt
    FROM reserva r
          LEFT JOIN reserva_hotel rh ON (r.reserva_id = rh.reserva_id)  
    WHERE r.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')  
    GROUP BY rh.hotel_id) t1 
  ) t2 JOIN hotel h on (h.hotel_id=t2.hotel_id)
WHERE t2.ranking <= 5;
---consulta h
SELECT (
    SELECT COUNT(*)
    FROM reserva r1
    WHERE r1.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r1.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
  ) / (
    SELECT count(*)
    FROM reserva r2
      LEFT JOIN reserva_hotel rh ON (r2.reserva_id = rh.reserva_id)
      LEFT JOIN reserva_vuelo rv ON (r2.reserva_id = rv.reserva_id)
    WHERE r2.fecha_salida >= TO_DATE('&p_fechainicio', 'DD/MM/YYYY') 
      AND r2.fecha_regreso <= TO_DATE ('&p_fechafin', 'DD/MM/YYYY')
      AND (rh.estado = 'CON' OR rv.estado='CON')
  ) "Indicador Efectividad"
FROM DUAL;