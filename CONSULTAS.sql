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