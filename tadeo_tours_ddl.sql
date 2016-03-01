-- Generado por Oracle SQL Developer Data Modeler 4.1.3.901
--   en:        2016-02-28 13:50:36 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g
REM   Script:   tadeo_tours_ddl.sql
REM   Purpose:  Install Tadeo Tours System 
REM   Created:  By Felix Orduz <felix.orduz@gmail.com>, on 28-FEB-2016 
REM   for the course Programacion de base datos

SET FEEDBACK 1
SET NUMWIDTH 10
SET LINESIZE 80
SET TRIMSPOOL ON
SET TAB OFF
SET PAGESIZE 100
SET ECHO OFF 

Prompt ******  Creating tables ....


CREATE TABLE aerolinea
  (
    aerolinea_id NUMBER NOT NULL ,
    nombre       VARCHAR2 (50) NOT NULL
  ) ;
COMMENT ON TABLE aerolinea
IS
  'Tabla que almancena las aerolineas' ;
ALTER TABLE aerolinea ADD CONSTRAINT aerolinea_PK PRIMARY KEY ( aerolinea_id ) ;


CREATE TABLE ciudad
  (
    ciudad_id NUMBER (5) NOT NULL ,
    nombre    VARCHAR2 (30) ,
    pais_ID   NUMBER NOT NULL
  ) ;
COMMENT ON TABLE ciudad
IS
  'manejo de ciudades' ;
ALTER TABLE ciudad ADD CONSTRAINT ciudad_PK PRIMARY KEY ( ciudad_id ) ;


CREATE TABLE cliente
  (
    cliente_id        NUMBER (5) NOT NULL ,
    nombres           VARCHAR2 (100) NOT NULL ,
    apellidos         VARCHAR2 (100) NOT NULL ,
    tipo_documento    VARCHAR2 (2) NOT NULL ,
    numero_documento  VARCHAR2 (15) NOT NULL ,
    fecha_nacimiento  DATE NOT NULL ,
    direccion         VARCHAR2 (300) ,
    ciudad_residencia NUMBER (5) ,
    telefono_fijo     VARCHAR2 (15) ,
    telefono_celular  VARCHAR2 (15) ,
    fax               VARCHAR2 (15) ,
    email             VARCHAR2 (100)
  ) ;
COMMENT ON TABLE cliente
IS
  'Tabla para almacenar los clientes' ;
ALTER TABLE cliente ADD CONSTRAINT cliente_PK PRIMARY KEY ( cliente_id ) ;
ALTER TABLE cliente ADD CONSTRAINT cliente_tipodoc_doc_UN UNIQUE ( tipo_documento , numero_documento ) ;


CREATE TABLE cliente_reserva
  (
    cliente_id         NUMBER (5) NOT NULL ,
    reserva_id         NUMBER (5) NOT NULL ,
    pasajero_principal CHAR (1) NOT NULL
  ) ;
COMMENT ON TABLE cliente_reserva
IS
  'Tabla que almacena la informacion de cada cliente que participa en una reserva' ;
ALTER TABLE cliente_reserva ADD CONSTRAINT cliente_reserva_PK PRIMARY KEY ( cliente_id, reserva_id ) ;


CREATE TABLE hotel
  (
    hotel_id  NUMBER (5) NOT NULL ,
    nombre    VARCHAR2 (50) NOT NULL ,
    categoria NUMBER (1) NOT NULL ,
    ciudad_id NUMBER (5) NOT NULL ,
    website   VARCHAR2 (50) ,
    telefono  VARCHAR2 (15)
  ) ;
COMMENT ON TABLE hotel
IS
  'Tabla que almancena la informacion de los hoteles' ;
  COMMENT ON COLUMN hotel.categoria
IS
  'Numero De Estrellas' ;
  COMMENT ON COLUMN hotel.ciudad_id
IS
  'CIudad donde esta el hotel' ;
  COMMENT ON COLUMN hotel.website
IS
  'Website del hotel' ;
ALTER TABLE hotel ADD CONSTRAINT hotel_categoria_CK CHECK (categoria >= 0 AND categoria<=7) ;
ALTER TABLE hotel ADD CONSTRAINT hotel_PK PRIMARY KEY ( hotel_id ) ;


CREATE TABLE pago
  (
    pago_id    NUMBER (5) NOT NULL ,
    reserva_id NUMBER (5) NOT NULL ,
    fecha      DATE NOT NULL
  ) ;
COMMENT ON TABLE pago
IS
  'Tabla para almacenar los pagos de una reserva' ;
ALTER TABLE pago ADD CONSTRAINT pago_PK PRIMARY KEY ( pago_id ) ;


CREATE TABLE pais
  ( pais_id NUMBER NOT NULL , nombre VARCHAR2 (30)
  ) ;
COMMENT ON TABLE pais
IS
  'tabla para manejar los paises ' ;
ALTER TABLE pais ADD CONSTRAINT pais_PK PRIMARY KEY ( pais_id ) ;


CREATE TABLE reserva
  (
    reserva_id        NUMBER (8) NOT NULL ,
    ciudad_origen     NUMBER (5) NOT NULL ,
    ciudad_destino    NUMBER (5) NOT NULL ,
    reserva_hotel     CHAR (1) NOT NULL ,
    reserva_vuelo     CHAR (1) NOT NULL ,
    fecha_salida      DATE NOT NULL ,
    fecha_regreso     DATE NOT NULL ,
    cantidad_personas NUMBER (2) NOT NULL ,
    fecha_creacion    DATE NOT NULL ,
    usuario_id        NUMBER (5) NOT NULL ,
    cometarios_hotel  VARCHAR2 (500) ,
    comentarios_vuelo VARCHAR2 (500)
  ) ;
COMMENT ON TABLE reserva
IS
  'Tabla para manejar las reservas del sistema' ;
  COMMENT ON COLUMN reserva.usuario_id
IS
  'usuario que crea la reserva' ;
ALTER TABLE reserva ADD CONSTRAINT reserva_PK PRIMARY KEY ( reserva_id ) ;


CREATE TABLE reserva_hotel
  (
    reserva_hotel_id     NUMBER (5) NOT NULL ,
    reserva_id           NUMBER (5) NOT NULL ,
    hotel_id             NUMBER (5) NOT NULL ,
    checkin              DATE NOT NULL ,
    checkout             DATE NOT NULL ,
    estado               VARCHAR2 (3) NOT NULL ,
    valor                NUMBER (10,2) NOT NULL ,
    acomodacion          NUMBER (1) NOT NULL ,
    limite_pago          DATE ,
    realizado            DATE NOT NULL ,
    confirmacion_reserva VARCHAR2 (50)
  ) ;
COMMENT ON TABLE reserva_hotel
IS
  'Tabla para almacenar las reservas de hotel ' ;
  COMMENT ON COLUMN reserva_hotel.limite_pago
IS
  'Fecha y hora limite de pago' ;
  COMMENT ON COLUMN reserva_hotel.realizado
IS
  'Fecha y hora e que se realizo la reserva' ;
  COMMENT ON COLUMN reserva_hotel.confirmacion_reserva
IS
  'Numero de confirmacion de reserva del hotel ' ;
ALTER TABLE reserva_hotel ADD CONSTRAINT reserva_hotel_estado_CK CHECK (estado IN ('RES','CON','CAN')) ;
ALTER TABLE reserva_hotel ADD CONSTRAINT reserva_hotel_PK PRIMARY KEY ( reserva_hotel_id ) ;


CREATE TABLE reserva_vuelo
  (
    reserva_vuelo_id     NUMBER (5) NOT NULL ,
    reserva_id           NUMBER (5) NOT NULL ,
    vuelo_id             NUMBER (5) NOT NULL ,
    clase                VARCHAR2 (3) NOT NULL ,
    estado               VARCHAR2 (3) NOT NULL ,
    limite_pago          DATE NOT NULL ,
    valor                NUMBER (10,2) NOT NULL ,
    realizado            DATE NOT NULL ,
    confirmacion_reserva VARCHAR2 (50)
  ) ;
COMMENT ON TABLE reserva_vuelo
IS
  'Tabla que almacena los vuelos de una reserva' ;
  COMMENT ON COLUMN reserva_vuelo.valor
IS
  'Valor a pagar ' ;
  COMMENT ON COLUMN reserva_vuelo.realizado
IS
  'Fecha en que se realizo la reserva' ;
  COMMENT ON COLUMN reserva_vuelo.confirmacion_reserva
IS
  'Numero de confirmacion de la reserva de vuelo, lo debe proveer la aerolinea' ;
ALTER TABLE reserva_vuelo ADD CONSTRAINT reserva_vuelo_clase_CK CHECK (clase   IN ('eje','tur')) ;
ALTER TABLE reserva_vuelo ADD CONSTRAINT reserva_vuelo_estado_CK CHECK (estado IN ('RES','CON','CAN')) ;
ALTER TABLE reserva_vuelo ADD CONSTRAINT reserva_vuelo_PK PRIMARY KEY ( reserva_vuelo_id ) ;


CREATE TABLE usuario
  (
    usuario_id NUMBER (5) NOT NULL ,
    login      VARCHAR2 (25) NOT NULL ,
    password   VARCHAR2 (50) NOT NULL ,
    rol        VARCHAR2 (3) NOT NULL
  ) ;
COMMENT ON TABLE usuario
IS
  'Tabla para manejar los usuarios del sistemas (empleados de tadeo)' ;
ALTER TABLE usuario ADD CONSTRAINT usuario_rol_CK CHECK (rol IN ('ADM','USR')) ;
ALTER TABLE usuario ADD CONSTRAINT usuario_PK PRIMARY KEY ( usuario_id ) ;
ALTER TABLE usuario ADD CONSTRAINT usuario_login_UN UNIQUE ( login ) ;


CREATE TABLE vuelo
  (
    vuelo_id       NUMBER (5) NOT NULL ,
    aerolinea_id   NUMBER NOT NULL ,
    ciudad_origen  NUMBER (5) NOT NULL ,
    ciudad_destino NUMBER (5) NOT NULL
  ) ;
COMMENT ON TABLE vuelo
IS
  'Tabla de Vuelos' ;
  COMMENT ON COLUMN vuelo.vuelo_id
IS
  'Llave Primaria de Vuelo' ;
  COMMENT ON COLUMN vuelo.aerolinea_id
IS
  'Llave foraenea a aerolinea' ;
  COMMENT ON COLUMN vuelo.ciudad_origen
IS
  'Ciudad origen del vuelo' ;
  COMMENT ON COLUMN vuelo.ciudad_destino
IS
  'ciudad destino del vuelo' ;
ALTER TABLE vuelo ADD CONSTRAINT vuelo_PK PRIMARY KEY ( vuelo_id ) ;


ALTER TABLE ciudad ADD CONSTRAINT ciudad_pais_FK FOREIGN KEY ( pais_ID ) REFERENCES pais ( pais_id ) ;

ALTER TABLE cliente_reserva ADD CONSTRAINT cliente_reserva_cliente_FK FOREIGN KEY ( cliente_id ) REFERENCES cliente ( cliente_id ) ;

ALTER TABLE cliente_reserva ADD CONSTRAINT cliente_reserva_reserva_FK FOREIGN KEY ( reserva_id ) REFERENCES reserva ( reserva_id ) ;

ALTER TABLE hotel ADD CONSTRAINT hotel_ciudad_FK FOREIGN KEY ( ciudad_id ) REFERENCES ciudad ( ciudad_id ) ;

ALTER TABLE pago ADD CONSTRAINT pago_reserva_FK FOREIGN KEY ( reserva_id ) REFERENCES reserva ( reserva_id ) ;

ALTER TABLE reserva ADD CONSTRAINT reserva_ciudaddestino_FK FOREIGN KEY ( ciudad_destino ) REFERENCES ciudad ( ciudad_id ) ;

ALTER TABLE reserva ADD CONSTRAINT reserva_ciudadorigen_FK FOREIGN KEY ( ciudad_origen ) REFERENCES ciudad ( ciudad_id ) ;

ALTER TABLE reserva_hotel ADD CONSTRAINT reserva_hotel_hotel_FK FOREIGN KEY ( hotel_id ) REFERENCES hotel ( hotel_id ) ;

ALTER TABLE reserva_hotel ADD CONSTRAINT reserva_hotel_reserva_FK FOREIGN KEY ( reserva_id ) REFERENCES reserva ( reserva_id ) ;

ALTER TABLE reserva ADD CONSTRAINT reserva_usuario_FK FOREIGN KEY ( usuario_id ) REFERENCES usuario ( usuario_id ) ;

ALTER TABLE reserva_vuelo ADD CONSTRAINT reserva_vuelo_reserva_FK FOREIGN KEY ( reserva_id ) REFERENCES reserva ( reserva_id ) ;

ALTER TABLE reserva_vuelo ADD CONSTRAINT reserva_vuelo_vuelo_FK FOREIGN KEY ( vuelo_id ) REFERENCES vuelo ( vuelo_id ) ;

ALTER TABLE vuelo ADD CONSTRAINT vuelo_aerolinea_FK FOREIGN KEY ( aerolinea_id ) REFERENCES aerolinea ( aerolinea_id ) ;

ALTER TABLE vuelo ADD CONSTRAINT vuelo_ciudaddestino_FK FOREIGN KEY ( ciudad_destino ) REFERENCES ciudad ( ciudad_id ) ;

ALTER TABLE vuelo ADD CONSTRAINT vuelo_ciudadorigen_FK FOREIGN KEY ( ciudad_origen ) REFERENCES ciudad ( ciudad_id ) ;

CREATE OR REPLACE TRIGGER FKNTM_hotel BEFORE
  UPDATE OF ciudad_id ON hotel BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table hotel is violated');
END;
/

CREATE OR REPLACE TRIGGER FKNTM_pago BEFORE
  UPDATE OF reserva_id ON pago BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table pago is violated');
END;
/

CREATE OR REPLACE TRIGGER FKNTM_reserva BEFORE
  UPDATE OF ciudad_destino,
    ciudad_origen,
    usuario_id ON reserva BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table reserva is violated');
END;
/

CREATE OR REPLACE TRIGGER FKNTM_reserva_hotel BEFORE
  UPDATE OF hotel_id,
    reserva_id ON reserva_hotel BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table reserva_hotel is violated');
END;
/

CREATE OR REPLACE TRIGGER FKNTM_reserva_vuelo BEFORE
  UPDATE OF vuelo_id ON reserva_vuelo BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table reserva_vuelo is violated');
END;
/

CREATE OR REPLACE TRIGGER FKNTM_vuelo BEFORE
  UPDATE OF ciudad_origen,
    ciudad_destino,
    aerolinea_id ON vuelo BEGIN raise_application_error(-20225,'Non Transferable FK constraint  on table vuelo is violated');
END;
/
