REM   Script:   tadeo_tours_sample_data.sql
REM   Purpose:  Install Tadeo Tours System 
REM   Created:  By Felix Orduz <felix.orduz@gmail.com>, on 28-FEB-2016 
REM   for the course Programacion de base datos

Prompt ******  Insert table aerolinea ....

INSERT INTO aerolinea ( aerolinea_id ,nombre)
	VALUES (1, 'AVIANCA');
INSERT INTO aerolinea ( aerolinea_id ,nombre)
	VALUES (2, 'LAN');
INSERT INTO aerolinea ( aerolinea_id ,nombre)
	VALUES (3, 'COPA');
INSERT INTO aerolinea ( aerolinea_id ,nombre)
	VALUES (4, 'INTERJET');

Prompt ******  Insert table pais ....

INSERT INTO pais (pais_id, nombre)
	VALUES (1,'COLOMBIA');
INSERT INTO pais (pais_id, nombre)
	VALUES (2,'MEXICO');
INSERT INTO pais (pais_id, nombre)
	VALUES (3,'BARBADOS');

Prompt ******  Insert table ciudad ....

INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(1,'BOGOTA',1) ;
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(2,'MEXICO DF', 2) ;
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(3,'CANCUN', 2) ;
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(4,'GUADALAJARA', 2) ;
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(5,'SANTA MARTA', 1) ;	
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(6,'CALI', 1) ;
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(7,'CUCUTA', 1) ;	
INSERT INTO ciudad ( ciudad_id, nombre, pais_id)
	VALUES(8,'BRIDGETOWN', 3) ;

Prompt ******  Insert table cliente ....

INSERT INTO cliente (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (1,'Hugo','McDuc','CC','1234',TO_DATE('1-01-1970','DD-MM-YYYY'),null,null,null,null,null,null);
INSERT INTO cliente (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (2,'Paco','McDuc','CC','1235',TO_DATE('1-01-1970','DD-MM-YYYY'),null,null,null,null,null,null);
INSERT INTO cliente (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (3,'Luis','McDuc','CC','1245',TO_DATE('1-01-1970','DD-MM-YYYY'),null,null,null,null,null,null);
INSERT INTO cliente (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (4,'Donald','McDuc','CC','1356',TO_DATE('1-01-1940','DD-MM-YYYY'),null,null,null,null,null,null);
INSERT INTO cliente (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (5,'Rich','McDuc','CC','2367',TO_DATE('1-01-1935','DD-MM-YYYY'),null,null,null,null,null,null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (6, 'Teresa', 'Mendoza', 'CC', '6356230', to_date('6/7/1978','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (7, 'Susan', 'Hill', 'CC', '4611834', to_date('27/4/1993','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (8, 'Louise', 'Duncan', 'CC', '6109763', to_date('6/9/1959','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (9, 'Sean', 'Robertson', 'CC', '4044628', to_date('30/6/1962','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (10, 'Kimberly', 'Chapman', 'CC', '6003882', to_date('27/3/1968','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (11, 'Terry', 'Vasquez', 'CC', '5001822', to_date('18/1/1963','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (12, 'Ralph', 'Hamilton', 'CC', '4326575', to_date('9/5/1962','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (13, 'Lori', 'Mccoy', 'CC', '6014377', to_date('4/1/1959','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (14, 'Sean', 'Gray', 'CC', '8655408', to_date('7/12/1991','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (15, 'Irene', 'Black', 'CC', '7886391', to_date('17/4/1952','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (16, 'Christopher', 'Garrett', 'CC', '4109170', to_date('16/7/1989','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (17, 'Tammy', 'Andrews', 'CC', '2194563', to_date('27/8/1974','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (18, 'Patrick', 'Jordan', 'CC', '7904558', to_date('17/10/1964','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (19, 'Norma', 'Elliott', 'CC', '6813633', to_date('10/3/1957','DD/MM/YYYY'), null, null, null, null, null, null);
INSERT INTO CLIENTE (cliente_id, nombres, apellidos, tipo_documento, numero_documento, fecha_nacimiento, direccion, ciudad_residencia, telefono_fijo, telefono_celular, fax, email) VALUES (20, 'Anthony', 'James', 'CC', '3035257', to_date('17/8/1982','DD/MM/YYYY'), null, null, null, null, null, null);


Prompt ******  Insert table hotel ....
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (1, 'Gigabox', 4, 4, 'spotify.com', '324-88-1869');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (2, 'Oba', 4, 8, 'independent.co.uk', '923-34-5415');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (3, 'Snaptags', 6, 2, 'people.com.cn', '717-59-3718');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (4, 'Brightbean', 6, 1, 'gmpg.org', '797-88-9951');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (5, 'Muxo', 1, 3, 'prweb.com', '129-83-5447');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (6, 'Buzzster', 4, 3, 'addthis.com', '507-43-4811');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (7, 'Skippad', 2, 4, 'wikipedia.org', '619-76-8668');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (8, 'Avaveo', 4, 1, 'spotify.com', '605-74-7676');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (9, 'Livepath', 2, 8, 'skyrock.com', '159-17-5827');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (10, 'Zoonoodle', 2, 7, 'java.com', '474-33-0976');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (11, 'Jazzy', 5, 5, '4shared.com', '110-03-6777');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (12, 'Miboo', 1, 5, 'indiegogo.com', '709-97-9528');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (13, 'Rhybox', 2, 6, 'people.com.cn', '632-17-9209');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (14, 'Wikido', 4, 5, 'hp.com', '693-91-9947');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (15, 'Thoughtstorm', 6, 1, 'buzzfeed.com', '146-17-2784');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (16, 'Teklist', 5, 5, 'pbs.org', '699-65-6154');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (17, 'Shufflebeat', 2, 5, 'instagram.com', '995-02-7344');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (18, 'Realbuzz', 6, 5, 'epa.gov', '359-93-4227');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (19, 'Avamm', 1, 3, 'people.com.cn', '257-29-5077');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (20, 'Rhycero', 4, 4, 'accuweather.com', '997-36-6297');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (21, 'Skinder', 3, 1, 'delicious.com', '971-66-1847');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (22, 'Twitterwire', 6, 8, 'amazon.de', '416-12-6137');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (23, 'Eayo', 4, 8, 'jugem.jp', '777-10-9125');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (24, 'Abatz', 2, 5, 'statcounter.com', '944-62-6096');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (25, 'Skinte', 6, 4, 'hexun.com', '260-39-9216');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (26, 'Skipstorm', 2, 4, 'businessweek.com', '469-15-1389');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (27, 'Demizz', 6, 5, 'examiner.com', '478-00-6903');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (28, 'Talane', 4, 2, 'studiopress.com', '324-72-6096');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (29, 'Brightbean', 4, 4, 'aol.com', '334-74-0653');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (30, 'Babbleblab', 1, 1, 'ameblo.jp', '224-51-6770');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (31, 'Myworks', 5, 6, 'clickbank.net', '529-41-4919');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (32, 'Edgeclub', 3, 6, 'w3.org', '435-50-9907');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (33, 'Divavu', 6, 8, 'boston.com', '317-66-8551');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (34, 'Omba', 6, 6, 'google.nl', '373-41-0027');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (35, 'Meetz', 5, 4, 'jimdo.com', '131-03-6126');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (36, 'Oloo', 4, 6, 'army.mil', '722-75-8780');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (37, 'Edgeblab', 2, 5, 'amazon.co.jp', '137-82-1766');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (38, 'Thoughtsphere', 5, 5, 'angelfire.com', '409-69-0312');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (39, 'Youfeed', 3, 3, 'sina.com.cn', '835-60-8608');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (40, 'Flipopia', 4, 1, 'paginegialle.it', '613-98-7793');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (41, 'Dabtype', 6, 3, 'wunderground.com', '112-41-9239');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (42, 'Leexo', 6, 1, 'ucoz.com', '333-60-2558');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (43, 'Skilith', 2, 5, 'oaic.gov.au', '704-51-2253');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (44, 'Jabbersphere', 3, 3, 'netlog.com', '500-83-0625');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (45, 'Meevee', 5, 6, 'purevolume.com', '297-42-1354');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (46, 'Photobean', 6, 3, 'ihg.com', '579-05-6176');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (47, 'Oyonder', 2, 5, 'hexun.com', '468-60-9096');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (48, 'Kwimbee', 2, 7, 'cbc.ca', '794-99-2311');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (49, 'Omba', 4, 6, 'nytimes.com', '345-27-9990');
INSERT INTO hotel (hotel_id, nombre, categoria, ciudad_id, website, telefono)
	VALUES (50, 'Brightdog', 1, 2, 'hud.gov', '211-98-6809');


Prompt ******  Insert table USUARIO ....
INSERT INTO USUARIO (usuario_id, login, password, rol)
	VALUES (1, 'ADMIN', '123', 'ADM');
INSERT INTO USUARIO (usuario_id, login, password, rol)
	VALUES (2, 'USER1', '123', 'USR');	

Prompt ******  Insert table vuelos
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(1,1,1,2);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(2,2,1,2);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(3,3,1,2);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(4,4,1,2);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(5,1,1,3);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(6,2,1,3);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(7,3,1,3);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(8,4,1,3);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(9,1,1,4);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(10,2,1,4);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(11,3,1,4);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(12,4,1,4);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(13,1,1,5);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(14,2,1,5);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(15,3,1,5);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(16,4,1,5);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(17,1,1,6);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(18,2,1,6);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(19,3,1,6);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(20,4,1,6);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(21,1,1,7);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(22,2,1,7);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(23,3,1,7);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(24,4,1,7);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(25,1,1,8);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(26,2,1,8);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(27,3,1,8);
INSERT INTO vuelo ( vuelo_id, aerolinea_id, ciudad_origen, ciudad_destino)
	VALUES(28,4,1,8);

Prompt ******* Insert Into Reserva
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (1,1,3, 'T','T',TO_DATE('01-01-2015','DD-MM-YYYY'),TO_DATE('08-01-2015','DD-MM-YYYY'),
1,TO_DATE('30-12-2014','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (2,1,3, 'T','T',TO_DATE('05-01-2015','DD-MM-YYYY'),TO_DATE('10-01-2015','DD-MM-YYYY'),
1,TO_DATE('30-12-2014','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (3,1,3, 'T','T',TO_DATE('08-01-2015','DD-MM-YYYY'),TO_DATE('15-01-2015','DD-MM-YYYY'),
1,TO_DATE('30-12-2014','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (4,1,3, 'T','T',TO_DATE('15-02-2015','DD-MM-YYYY'),TO_DATE('20-02-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (5,1,3, 'T','T',TO_DATE('1-03-2015','DD-MM-YYYY'),TO_DATE('8-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (6,1,3, 'T','T',TO_DATE('1-03-2015','DD-MM-YYYY'),TO_DATE('8-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (7,1,5, 'T','T',TO_DATE('1-03-2015','DD-MM-YYYY'),TO_DATE('8-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (8,1,5, 'T','T',TO_DATE('1-03-2015','DD-MM-YYYY'),TO_DATE('15-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (9,1,3, 'T','T',TO_DATE('3-03-2015','DD-MM-YYYY'),TO_DATE('12-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (10,1,5, 'T','T',TO_DATE('3-03-2015','DD-MM-YYYY'),TO_DATE('16-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);


INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (11,1,5, 'T','T',TO_DATE('21-03-2015','DD-MM-YYYY'),TO_DATE('31-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (12,1,5, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (13,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (14,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (15,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (16,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (17,1,2, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (18,1,2, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (19,1,2, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (20,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (21,1,4, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (22,1,6, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);
INSERT INTO reserva(
    reserva_id,        
    ciudad_origen,     
    ciudad_destino,    
    reserva_hotel,     
    reserva_vuelo,     
    fecha_salida,      
    fecha_regreso,     
    cantidad_personas, 
    fecha_creacion,    
    usuario_id
  )
VALUES (23,1,9, 'T','T',TO_DATE('23-03-2015','DD-MM-YYYY'),TO_DATE('30-03-2015','DD-MM-YYYY'),
1,TO_DATE('2-1-2015','DD-MM-YYYY'),1);

INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (1,1,'T');
INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (2,2,'T');
INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (3,3,'T');
INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (4,4,'T');
INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (5,5,'T');
INSERT INTO  cliente_reserva (cliente_id, reserva_id, pasajero_principal) 
	VALUES (6,6,'T');	

INSERT INTO reserva_hotel(
	reserva_hotel_id,     
    reserva_id,           
    hotel_id,             
    checkin,              
    checkout,             
    estado,               
    valor,                
    acomodacion,          
    limite_pago,          
    realizado,            
    confirmacion_reserva
)
VALUES (
	1
	,1
	,6
	,TO_DATE('01/01/2015 15:00','DD/MM/YYYY HH24:MI')
	,TO_DATE('08/01/2015 13:00','DD/MM/YYYY HH24:MI')
	,'CO'
	,5000000
	,1
	,TO_DATE('01/01/2015', 'DD/MM/YYYY')
	,TO_DATE('31/12/2014', 'DD/MM/YYYY')
	,'ADS123'
);

INSERT INTO reserva_vuelo
	(reserva_vuelo_id
	, reserva_id
	,vuelo_id
	,clase
	,estado
	,limite_pago
	,valor
	,realizado
	,confirmacion_reserva)
VALUES (
	1
	,1
	,5
	,'tur'
	,'CON'
	,TO_DATE('1/1/2015','DD/MM/YYYY')
	,'48000000'
	,TO_DATE('31/12/2014','DD/MM/YYYY')
	,'HKJ898');

commit;
