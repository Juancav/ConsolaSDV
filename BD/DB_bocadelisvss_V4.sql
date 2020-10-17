
CREATE DATABASE dbsdv;
USE dbsdv;

CREATE TABLE pais(
	Id_Pais INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Pais VARCHAR(50)
)ENGINE=InnoDB;

INSERT INTO pais VALUES 
	(null,'EL SALVADOR'),
	(null,'GUATEMALA'),
	(null,'HONDURAS'),
	(null,'REPUBLICA DOMINICANA');

CREATE TABLE departamento(
	Id_Departamento INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	NombreDepartamento VARCHAR(100),
	Id_Pais INT(7) zerofill,
	FOREIGN KEY (Id_Pais) REFERENCES pais(Id_Pais)
)ENGINE=InnoDB;

INSERT INTO departamento VALUES
	(null,'CUSCATLAN',1),
	(null,'SAN SALVADOR',1),
	(null,'SANTA ANA',1),
	(null,'SAN MIGUEL',1),
	(null,'MORAZAN',1),
	(null,'AHUACHAPAN',1),
	(null,'CHALATENANGO',1),
	(null,'LA LIBERTAD',1),
	(null,'USULUTAN',1),
	(null,'LA UNION',1),
	(null,'LA PAZ',1),
	(null,'CABAÑAS',1),
	(null,'SAN VICENTE',1),
	(null,'SONSONATE',1);
    
INSERT INTO departamento VALUES	(null,'DESCONOCIDO',1);

CREATE TABLE municipio(
	Id_Municipio INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	NombreMunicipio VARCHAR(250),
	Id_Departamento INT(7) zerofill,
	FOREIGN KEY (Id_Departamento) REFERENCES departamento(Id_Departamento)
)ENGINE=InnoDB;

INSERT INTO municipio (Id_Municipio, NombreMunicipio, Id_Departamento) VALUES
(0000001, 'AHUACHAPAN', 0000006),
(0000002, 'APANECA', 0000006),
(0000003, 'ATIQUIZAYA', 0000006),
(0000004, 'CONCEPCION DE ATACO', 0000006),
(0000005, 'EL REFUGIO', 0000006),
(0000006, 'GUAYMANGO', 0000006),
(0000007, 'JUJUTLA', 0000006),
(0000008, 'SAN FRANCISCO MENENDEZ', 0000006),
(0000009, 'SAN LORENZO', 0000006),
(0000010, 'SAN PEDRO PUXTLA', 0000006),
(0000011, 'TACUBA', 0000006),
(0000012, 'TURIN', 0000006),
(0000013, 'CINQUERA', 0000012),
(0000014, 'DOLORES', 0000012),
(0000015, 'GUACOTECTI', 0000012),
(0000016, 'ILOBASCO', 0000012),
(0000017, 'JUTIAPA', 0000012),
(0000018, 'SAN ISIDRO', 0000012),
(0000019, 'SENSUNTEPEQUE', 0000012),
(0000020, 'TEJUTEPEQUE', 0000012),
(0000021, 'VICTORIA', 0000012),
(0000022, 'AGUA CALIENTE', 0000007),
(0000023, 'ARCATAO', 0000007),
(0000024, 'AZACUALPA', 0000007),
(0000025, 'CANCASQUE', 0000007),
(0000026, 'CHALATENANGO', 0000007),
(0000027, 'CITALA', 0000007),
(0000028, 'COMALAPA', 0000007),
(0000029, 'CONCEPCION QUEZALTEPEQUE', 0000007),
(0000030, 'DULCE NOMBRE DE MARIA', 0000007),
(0000031, 'EL CARRIZAL', 0000007),
(0000032, 'EL PARAISO', 0000007),
(0000033, 'LA LAGUNA', 0000007),
(0000034, 'LA PALMA', 0000007),
(0000035, 'LA REINA', 0000007),
(0000036, 'LAS FLORES', 0000007),
(0000037, 'LAS VUELTAS', 0000007),
(0000038, 'NOMBRE DE JESUS', 0000007),
(0000039, 'NUEVA CONCEPCION', 0000007),
(0000040, 'NUEVA TRINIDAD', 0000007),
(0000041, 'OJOS DE AGUA', 0000007),
(0000042, 'POTONICO', 0000007),
(0000043, 'SAN ANTONIO DE LA CRUZ', 0000007),
(0000044, 'SAN ANTONIO LOS RANCHOS', 0000007),
(0000045, 'SAN FERNANDO', 0000007),
(0000046, 'SAN FRANCISCO LEMPA', 0000007),
(0000047, 'SAN FRANCISCO MORAZAN', 0000007),
(0000048, 'SAN IGNACIO', 0000007),
(0000049, 'SAN ISIDRO LABRADOR', 0000007),
(0000050, 'SAN LUIS DEL CARMEN', 0000007),
(0000051, 'SAN MIGUEL DE MERCEDES', 0000007),
(0000052, 'SAN RAFAEL', 0000007),
(0000053, 'SANTA RITA', 0000007),
(0000054, 'TEJUTLA', 0000007),
(0000055, 'CANDELARIA', 0000001),
(0000056, 'COJUTEPEQUE', 0000001),
(0000057, 'EL CARMEN', 0000001),
(0000058, 'EL ROSARIO', 0000001),
(0000059, 'MONTE SAN JUAN', 0000001),
(0000060, 'ORATORIO DE CONCEPCION', 0000001),
(0000061, 'SAN BARTOLOME PERULAPIA', 0000001),
(0000062, 'SAN CRISTOBAL', 0000001),
(0000063, 'SAN JOSE GUAYABAL', 0000001),
(0000064, 'SAN PEDRO PERULAPAN', 0000001),
(0000065, 'SAN RAFAEL CEDROS', 0000001),
(0000066, 'SAN RAMON', 0000001),
(0000067, 'SANTA CRUZ ANALQUITO', 0000001),
(0000068, 'SANTA CRUZ MICHAPA', 0000001),
(0000069, 'SUCHITOTO', 0000001),
(0000070, 'TENANCINGO', 0000001),
(0000071, 'ANTIGUO CUSCATLAN', 0000008),
(0000072, 'CHILTIUPAN', 0000008),
(0000073, 'CIUDAD ARCE', 0000008),
(0000074, 'COLON', 0000008),
(0000075, 'COMASAGUA', 0000008),
(0000076, 'HUIZUCAR', 0000008),
(0000077, 'JAYAQUE', 0000008),
(0000078, 'JICALAPA', 0000008),
(0000079, 'LA LIBERTAD', 0000008),
(0000080, 'NUEVO CUSCATLAN', 0000008),
(0000081, 'QUEZALTEPEQUE', 0000008),
(0000082, 'SACACOYO', 0000008),
(0000083, 'SAN JOSE VILLANUEVA', 0000008),
(0000084, 'SAN JUAN OPICO', 0000008),
(0000085, 'SAN MATIAS', 0000008),
(0000086, 'SAN PABLO TACACHICO', 0000008),
(0000087, 'SANTA TECLA', 0000008),
(0000088, 'TALNIQUE', 0000008),
(0000089, 'TAMANIQUE', 0000008),
(0000090, 'TEOTEPEQUE', 0000008),
(0000091, 'TEPECOYO', 0000008),
(0000092, 'ZARAGOZA', 0000008),
(0000093, 'CUYULTITAN', 0000011),
(0000094, 'EL ROSARIO', 0000011),
(0000095, 'JERUSALEN', 0000011),
(0000096, 'MERCEDES LA CEIBA', 0000011),
(0000097, 'OLOCUILTA', 0000011),
(0000098, 'PARAISO DE OSORIO', 0000011),
(0000099, 'SAN ANTONIO MASAHUAT', 0000011),
(0000100, 'SAN EMIGDIO', 0000011),
(0000101, 'SAN FRANCISCO CHINAMECA', 0000011),
(0000102, 'SAN JUAN NONUALCO', 0000011),
(0000103, 'SAN JUAN TALPA', 0000011),
(0000104, 'SAN JUAN TEPEZONTES', 0000011),
(0000105, 'SAN LUIS LA HERRADURA', 0000011),
(0000106, 'SAN LUIS TALPA', 0000011),
(0000107, 'SAN MIGUEL TEPEZONTES', 0000011),
(0000108, 'SAN PEDRO MASAHUAT', 0000011),
(0000109, 'SAN PEDRO NONUALCO', 0000011),
(0000110, 'SAN RAFAEL OBRAJUELO', 0000011),
(0000111, 'SANTA MARIA OSTUMA', 0000011),
(0000112, 'SANTIAGO NONUALCO', 0000011),
(0000113, 'TAPALHUACA', 0000011),
(0000114, 'ZACATECOLUCA', 0000011),
(0000115, 'ANAMOROS', 0000010),
(0000116, 'BOLIVAR', 0000010),
(0000117, 'CONCEPCION DE ORIENTE', 0000010),
(0000118, 'CONCHAGUA', 0000010),
(0000119, 'EL CARMEN', 0000010),
(0000120, 'EL SAUCE', 0000010),
(0000121, 'INTIPUCA', 0000010),
(0000122, 'LA UNION', 0000010),
(0000123, 'LISLIQUE', 0000010),
(0000124, 'MEANGUERA DEL GOLFO', 0000010),
(0000125, 'NUEVA ESPARTA', 0000010),
(0000126, 'PASAQUINA', 0000010),
(0000127, 'POLOROS', 0000010),
(0000128, 'SAN ALEJO', 0000010),
(0000129, 'SAN JOSE', 0000010),
(0000130, 'SANTA ROSA DE LIMA', 0000010),
(0000131, 'YAYANTIQUE', 0000010),
(0000132, 'YUCUAIQUIN', 0000010),
(0000133, 'ARAMBALA', 0000005),
(0000134, 'CACAOPERA', 0000005),
(0000135, 'CHILANGA', 0000005),
(0000136, 'CORINTO', 0000005),
(0000137, 'DELICIAS DE CONCEPCION', 0000005),
(0000138, 'EL DIVISADERO', 0000005),
(0000139, 'EL ROSARIO', 0000005),
(0000140, 'GUALOCOCTI', 0000005),
(0000141, 'GUATAJIAGUA', 0000005),
(0000142, 'JOATECA', 0000005),
(0000143, 'JOCOAITIQUE', 0000005),
(0000144, 'JOCORO', 0000005),
(0000145, 'LOLOTIQUILLO', 0000005),
(0000146, 'MEANGUERA', 0000005),
(0000147, 'OSICALA', 0000005),
(0000148, 'PERQUIN', 0000005),
(0000149, 'SAN CARLOS', 0000005),
(0000150, 'SAN FERNANDO', 0000005),
(0000151, 'SAN FRANCISCO GOTERA', 0000005),
(0000152, 'SAN ISIDRO', 0000005),
(0000153, 'SAN SIMON', 0000005),
(0000154, 'SENSEMBRA', 0000005),
(0000155, 'SOCIEDAD', 0000005),
(0000156, 'TOROLA', 0000005),
(0000157, 'YAMABAL', 0000005),
(0000158, 'YOLOAIQUIN', 0000005),
(0000159, 'CAROLINA', 0000004),
(0000160, 'CHAPELTIQUE', 0000004),
(0000161, 'CHINAMECA', 0000004),
(0000162, 'CHIRILAGUA', 0000004),
(0000163, 'CIUDAD BARRIOS', 0000004),
(0000164, 'COMACARAN', 0000004),
(0000165, 'EL TRANSITO', 0000004),
(0000166, 'LOLOTIQUE', 0000004),
(0000167, 'MONCAGUA', 0000004),
(0000168, 'NUEVA GUADALUPE', 0000004),
(0000169, 'NUEVO EDEN DE SAN JUAN', 0000004),
(0000170, 'QUELEPA', 0000004),
(0000171, 'SAN ANTONIO', 0000004),
(0000172, 'SAN GERARDO', 0000004),
(0000173, 'SAN JORGE', 0000004),
(0000174, 'SAN LUIS DE LA REINA', 0000004),
(0000175, 'SAN MIGUEL', 0000004),
(0000176, 'SAN RAFAEL ORIENTE', 0000004),
(0000177, 'SESORI', 0000004),
(0000178, 'ULUAZAPA', 0000004),
(0000179, 'AGUILARES', 0000002),
(0000180, 'APOPA', 0000002),
(0000181, 'AYUTUXTEPEQUE', 0000002),
(0000182, 'CIUDAD DELGADO', 0000002),
(0000183, 'CUSCATANCINGO', 0000002),
(0000184, 'EL PAISNAL', 0000002),
(0000185, 'GUAZAPA', 0000002),
(0000186, 'ILOPANGO', 0000002),
(0000187, 'MEJICANOS', 0000002),
(0000188, 'NEJAPA', 0000002),
(0000189, 'PANCHIMALCO', 0000002),
(0000190, 'ROSARIO DE MORA', 0000002),
(0000191, 'SAN MARCOS', 0000002),
(0000192, 'SAN MARTIN', 0000002),
(0000193, 'SAN SALVADOR', 0000002),
(0000194, 'SANTIAGO TEXACUANGOS', 0000002),
(0000195, 'SANTO TOMAS', 0000002),
(0000196, 'SOYAPANGO', 0000002),
(0000197, 'TONACATEPEQUE', 0000002),
(0000198, 'APASTEPEQUE', 0000013),
(0000199, 'GUADALUPE', 0000013),
(0000200, 'SAN CAYETANO ISTEPEQUE', 0000013),
(0000201, 'SAN ESTEBAN CATARINA', 0000013),
(0000202, 'SAN ILDEFONSO', 0000013),
(0000203, 'SAN LORENZO', 0000013),
(0000204, 'SAN SEBASTIAN', 0000013),
(0000205, 'SAN VICENTE', 0000013),
(0000206, 'SANTA CLARA', 0000013),
(0000207, 'SANTO DOMINGO', 0000013),
(0000208, 'TECOLUCA', 0000013),
(0000209, 'TEPETITAN', 0000013),
(0000210, 'VERAPAZ', 0000013),
(0000211, 'CANDELARIA DE LA FRONTERA', 0000003),
(0000212, 'CHALCHUAPA', 0000003),
(0000213, 'COATEPEQUE', 0000003),
(0000214, 'EL CONGO', 0000003),
(0000215, 'EL PORVENIR', 0000003),
(0000216, 'MASAHUAT', 0000003),
(0000217, 'METAPAN', 0000003),
(0000218, 'SAN ANTONIO PAJONAL', 0000003),
(0000219, 'SAN SEBASTIAN SALITRILLO', 0000003),
(0000220, 'SANTA ANA', 0000003),
(0000221, 'SANTA ROSA GUACHIPILIN', 0000003),
(0000222, 'SANTIAGO DE LA FRONTERA', 0000003),
(0000223, 'TEXISTEPEQUE', 0000003),
(0000224, 'ACAJUTLA', 0000014),
(0000225, 'ARMENIA', 0000014),
(0000226, 'CALUCO', 0000014),
(0000227, 'CUISNAHUAT', 0000014),
(0000228, 'IZALCO', 0000014),
(0000229, 'JUAYUA', 0000014),
(0000230, 'NAHUIZALCO', 0000014),
(0000231, 'NAHUILINGO', 0000014),
(0000232, 'SALCOATITAN', 0000014),
(0000233, 'SAN ANTONIO DEL MONTE', 0000014),
(0000234, 'SAN JULIAN', 0000014),
(0000235, 'SANTA CATARINA MASAHUAT', 0000014),
(0000236, 'SANTA ISABEL ISHUATAN', 0000014),
(0000237, 'SANTO DOMINGO DE GUZMAN', 0000014),
(0000238, 'SONSONATE', 0000014),
(0000239, 'SONZACATE', 0000014),
(0000240, 'ALEGRIA', 0000009),
(0000241, 'BERLIN', 0000009),
(0000242, 'CALIFORNIA', 0000009),
(0000243, 'CONCEPCION BATRES', 0000009),
(0000244, 'EL TRIUNFO', 0000009),
(0000245, 'EREGUAYQUIN', 0000009),
(0000246, 'ESTANZUELAS', 0000009),
(0000247, 'JIQUILISCO', 0000009),
(0000248, 'JUCUAPA', 0000009),
(0000249, 'JUCUARAN', 0000009),
(0000250, 'MERCEDES UMANA', 0000009),
(0000251, 'NUEVA GRANADA', 0000009),
(0000252, 'OZATLAN', 0000009),
(0000253, 'PUERTO EL TRIUNFO', 0000009),
(0000254, 'SAN AGUSTIN', 0000009),
(0000255, 'SAN BUENAVENTURA', 0000009),
(0000256, 'SAN DIONISIO', 0000009),
(0000257, 'SAN FRANCISCO JAVIER', 0000009),
(0000258, 'SANTA ELENA', 0000009),
(0000259, 'SANTA MARIA', 0000009),
(0000260, 'SANTIAGO DE MARIA', 0000009),
(0000261, 'TECAPAN', 0000009),
(0000262, 'USULUTAN', 0000009);

insert into municipio values ('0000263','DESCONOCIDO', 0000015);

CREATE TABLE distribuidora(
	Id_Distribuidora INT(7) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Distribuidora VARCHAR(28) NOT NULL,
	Id_Pais INT(9) zerofill,
	FOREIGN KEY (Id_Pais) REFERENCES pais(Id_Pais)
)ENGINE=InnoDB;

INSERT INTO distribuidora VALUES 
	(null,'DISTRIBUIDORA SAN SALVADOR',1),
	(null,'DISTRIBUIDORA SAN MIGUEL',1),
	(null,'DISTRIBUIDORA SANTA ANA',1),
	(null,'DISTRIBUIDORA SONSONATE',1),
	(null,'DISTRIBUIDORA CHALATENANGO',1);


create table canal(
	Id_Canal INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre_Canal varchar(20),
	Id_Distribuidora INT(7) ZEROFILL,
    FOREIGN KEY (Id_distribuidora) REFERENCES distribuidora(Id_Distribuidora)
)ENGINE=InnoDB;



/*SAN SALVADOR*/
INSERT INTO canal VALUES (null,'DETALLE','1');
INSERT INTO canal VALUES (null,'MAYOREO','1');
INSERT INTO canal VALUES (null,'GUDAFF','1');
INSERT INTO canal VALUES (null,'PREFERENCIAL','1');

/*SAN MIGUEL*/
INSERT INTO canal VALUES (null,'DETALLE','2');
INSERT INTO canal VALUES (null,'MAYOREO','2');
INSERT INTO canal VALUES (null,'GUDAFF','2');
INSERT INTO canal VALUES (null,'PREFERENCIAL','2');

/*SANTA ANA*/
INSERT INTO canal VALUES (null,'DETALLE','3');
INSERT INTO canal VALUES (null,'MAYOREO','3');
INSERT INTO canal VALUES (null,'GUDAFF','3');

/*SONSONATE*/
INSERT INTO canal VALUES (null,'DETALLE','4');
INSERT INTO canal VALUES (null,'PREFERENCIAL','4');


CREATE TABLE grupo_rutas(
	Id_Gruporutas INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Grupo VARCHAR(9) NOT NULL
)ENGINE=InnoDB;

INSERT INTO grupo_rutas VALUES 
	(null,'GRUPO 1'),(null,'GRUPO 2'),
	(null,'GRUPO 3'),(null,'GRUPO 4'),
	(null,'GRUPO 5'),(null,'GRUPO 6'),
	(null,'GRUPO 7'),(null,'GRUPO 8'),
	(null,'GRUPO 9'),(null,'GRUPO 10'),
	(null,'GRUPO 11'),(null,'SIN GRUPO');

CREATE TABLE supervisores(
	Id_Supervisor INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Supervisor VARCHAR(60),
	Id_Gruporutas INT(9) zerofill,
	FOREIGN KEY (Id_Gruporutas) REFERENCES grupo_rutas(Id_Gruporutas)
)ENGINE=InnoDB;

CREATE TABLE rutas(
	Id_Ruta INT(7) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Ruta CHAR(20) NOT NULL,
	Id_Distribuidora INT(7) zerofill NOT NULL,
	Id_Supervisor INT(7) zerofill NOT NULL,
	Id_Canal INT(7) zerofill NOT NULL,
	telefono varchar(15) NOT NULL,
  	sim_card varchar(50) NOT NULL,
  	cod_cc int(10) NOT NULL,
  	descrip_cc varchar(60) NOT NULL,
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora),
	FOREIGN KEY (Id_Supervisor) REFERENCES supervisores(Id_Supervisor),
	FOREIGN KEY (Id_Canal) REFERENCES canal(Id_Canal)
)ENGINE=InnoDB;

CREATE TABLE tipo_usuario(
	Id_Tipo_Usuario INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Tipo_Usuario VARCHAR(50),
	Clave CHAR(9)
)ENGINE=InnoDB;


INSERT INTO tipo_usuario VALUES
	(null,'GERENTE','gere01'),
	(null,'JEFE DE VENTA','jefe01');


INSERT INTO tipo_usuario VALUES
	(null,'ADMINISTRADORES','admin01'),
	(null,'SUPERVISORES','#supe1.$0'),
	(null,'VENDEDORES','$vend0r01');

CREATE TABLE usuarios(
	Id_Usuarios INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Completo VARCHAR(100) NOT NULL,
	Usuario VARCHAR(12) NOT NULL,
	Contrasena CHAR(60) NOT NULL,
	Id_Tipo_Usuario INT(9) zerofill NOT NULL,
	Id_Ruta INT(9) zerofill NOT NULL,
	Estado_U CHAR(1),
	FOREIGN KEY (Id_Tipo_Usuario) REFERENCES tipo_usuario(Id_Tipo_Usuario),
	FOREIGN KEY (Id_Ruta) REFERENCES rutas(Id_Ruta)
)ENGINE=InnoDB;

CREATE TABLE ref(
	Id_Ref INT(9) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Tipo INT(2) NOT NULL,
	Nit_Fiscal CHAR(3) NOT NULL,
	RefCuatro INT(1) NOT NULL,
	RefCinco INT(1) NOT NULL,
	RefSeis INT(1) NOT NULL,
	RefSiete INT(3) NOT NULL,
	RefOcho INT(11) NOT NULL,
	RefNueve INT(11) NOT NULL,
	RefDies INT(11) NOT NULL,
	Ncr CHAR(2) NOT NULL
)ENGINE=InnoDB;

INSERT INTO ref VALUES(0,1,'C/F',0,0,0,50,0,0,0,'NA');

CREATE TABLE tipo_punto_venta(
	Id_Tpuntoventa INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_TpuntoV VARCHAR(25)
)ENGINE=InnoDB;

INSERT INTO tipo_punto_venta VALUES
	(null,'CENTRO EDUCATIVO'),
	(null,'GUDAFF'),
	(null,'NEGOCIO INFORMAL'),
	(null,'TIENDA'),
	(null,'OTROS'),
	(null,'VENTA DE COMIDA'),
	(null,'OCIO');

CREATE TABLE giro_negocio(
	Id_Gironegocio INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Gnegocio VARCHAR(25),
	Id_Tpuntoventa INT(9) zerofill,
	FOREIGN KEY (Id_Tpuntoventa) REFERENCES tipo_punto_venta(Id_Tpuntoventa)
)ENGINE=InnoDB;

INSERT INTO giro_negocio VALUES
	(null,'COLEGIO',1),
	(null,'ESCUELA',1),
	(null,'INSTITUTO',1),
	(null,'PARVULARIA/KINDER',1),
	(null,'ABARROTERIA',2),
	(null,'DESPENSA',2),
	(null,'FARMACIA',2),
	(null,'GASOLINERA',2),
	(null,'UNIVERSIDAD',2),
	(null,'BILLAR',3),
	(null,'CANASTERO/CHICLERO',3),
	(null,'CARWASH',3),
	(null,'CIBER CAFE',3),
	(null,'LLANTERA/PINCHAZO',3),
	(null,'SALA DE BELLEZA/BARBERIA',3),
	(null,'TIENDA A',4),
	(null,'TIENDA B',4),
	(null,'TIENDA C',4),
	(null,'HOTEL',5),
	(null,'LIBRERIA/FOTOCOPIAS',5),
	(null,'OTROS',5),
	(null,'VARIEDADES/BAZAR',5),
	(null,'AMBULANTE',6),
	(null,'ANTOJITOS',6),
	(null,'CAFETERIA',6),
	(null,'COMEDOR',6),
	(null,'PANADERIA',6),
	(null,'PUPUSERIA',6),
	(null,'CENTRO DEPORTIVO',7),
	(null,'CENTRO RECREATIVO',7),
	(null,'PARQUE ACUATICO',7);

CREATE TABLE tipo_facturacion(
	Id_Tfacturacion INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Tfacturacion VARCHAR(16)
)ENGINE=InnoDB;

INSERT INTO tipo_facturacion VALUES
	(null,'CONSUMIDOR FINAL'),
	(null,'CREDITO FISCAL');


CREATE TABLE condicion_cliente(
	Id_Condicionc INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Condicionc CHAR(7)
)ENGINE=InnoDB;

INSERT INTO condicion_cliente VALUES
	(null,'CREDITO'),
	(null,'CONTADO');

CREATE TABLE tipo_compra(
	Id_Tcompra INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Tcompra VARCHAR(15)
)ENGINE=InnoDB;

INSERT INTO tipo_compra VALUES
	(null,'VACIO'),
	(null,'12 UNIDADES'),
	(null,'24 UNIDADES');

CREATE TABLE tipo_contribuyente(
	Id_Tcontribuyente INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nom_Tcontribuyente  VARCHAR(10)
)ENGINE=InnoDB;

INSERT INTO tipo_contribuyente VALUES
	(null,'VACIO'),
	(null,'PEQUEÑO'),
	(null,'GRANDE');

CREATE TABLE clientes(
	Id_Cliente INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Codigo VARCHAR(10) NOT NULL,
	Nombre VARCHAR(100) NOT NULL,
	Direccion VARCHAR(200) NOT NULL,
	Id_Municipio INT(9) zerofill,
	Telefono VARCHAR(15) NOT NULL,
	Contacto VARCHAR(100) NOT NULL,
	Propietario VARCHAR(100) NOT NULL,
	Id_Tfacturacion INT(9) zerofill,
	Dui VARCHAR(15),
	Numero_Registro VARCHAR(15),
	Nit VARCHAR(20),
	Id_Condicionc INT(9) zerofill,
	Dia_Cobro VARCHAR(10),
	Monto_Credito FLOAT,
	Id_Tcompra INT(9) zerofill,
	Id_Tcontribuyente INT(9) zerofill,
	Cantidad_Exhibidor INT(1),
	Exhibiror_Uno VARCHAR(60),
	Exhibiror_Dos VARCHAR(60),
	Exhibiror_Tres VARCHAR(60),
	Orden_Visita INT(11) NOT NULL,
	Dias CHAR(28) NOT NULL,
	RefUno VARCHAR(4) NOT NULL,
	Latitud VARCHAR(30) NOT NULL,
	Longitud VARCHAR(30) NOT NULL,
	Id_Usuarios INT(9) zerofill NOT NULL,
	Id_Ref INT(9) zerofill NOT NULL,
	Id_Gironegocio INT(9) zerofill NOT NULL,
	Foto_Negocio VARCHAR(70),
	Foto_Exhibidor VARCHAR(70),
	CompraS_B FLOAT,
	CompraS_D FLOAT,
	CompraS_Y FLOAT,
	CompraS_F FLOAT,
	Fecha_Ingreso DATETIME NOT NULL,
	Estado CHAR(1),
	FOREIGN KEY (Id_Municipio) REFERENCES municipio(Id_Municipio),
	FOREIGN KEY (Id_Tfacturacion) REFERENCES tipo_facturacion(Id_Tfacturacion),
	FOREIGN KEY (Id_Condicionc) REFERENCES condicion_cliente(Id_Condicionc),
	FOREIGN KEY (Id_Tcompra) REFERENCES tipo_compra(Id_Tcompra),
	FOREIGN KEY (Id_Tcontribuyente) REFERENCES tipo_contribuyente(Id_Tcontribuyente),
	FOREIGN KEY (Id_Usuarios) REFERENCES usuarios(Id_Usuarios),
	FOREIGN KEY (Id_Ref) REFERENCES ref(Id_Ref),
	FOREIGN KEY (Id_Gironegocio) REFERENCES giro_negocio(Id_Gironegocio)
)ENGINE=InnoDB;
alter table clientes add column  `Fecha_Resolucion` datetime DEFAULT NULL;
alter table clientes add column  `estado_w` char(1) DEFAULT NULL;
alter table clientes add column  `Fecha_Procesado` datetime DEFAULT NULL;
alter table clientes add column  `Editado` char(1) DEFAULT NULL;
alter table clientes add column  `Comentario_E` varchar(200) DEFAULT NULL;
alter table clientes add column  `Estado_Analista` char(1) DEFAULT NULL;
alter table clientes add column  `Fecha_Resolucion_R` datetime DEFAULT NULL;
alter table clientes add column  `Fecha_AprobacionA` datetime DEFAULT NULL;
alter table clientes add column  `quienresolucion` varchar(25) DEFAULT NULL;
alter table clientes add column  `EstadoDescarga` char(1) DEFAULT NULL;
CREATE TABLE tipo_exhibidor(
	Id_Texhibidor INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	NombretExhibidor VARCHAR(150)
)ENGINE=InnoDB;

INSERT INTO tipo_exhibidor VALUES
	(null,'AEREO'),(null,'PEDESTAL'),(null,'BANDEJA'),(null,'ALMACEN'),(null,'NO APLICA');

CREATE TABLE exhibidores(
	Id_Exhibidores INT(9) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	SKU_Exhibidor VARCHAR(15),
	NombreExhibidor VARCHAR(70),
	CostoUnitario FLOAT,
	Id_Texhibidor INT(9) zerofill,
	FOREIGN KEY (Id_Texhibidor) REFERENCES tipo_exhibidor(Id_Texhibidor)
)ENGINE=InnoDB;

CREATE TABLE entrega_exhibidores(
	Id_EntregraEx INT(9) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Id_Exhibidores INT(9) zerofill,
	Id_Cliente INT(9) zerofill,
	Id_Usuarios INT(9) zerofill,
	Id_Municipio INT(9) zerofill,
	Fecha_Entrega DATETIME,
	FOREIGN KEY (Id_Exhibidores) REFERENCES exhibidores(Id_Exhibidores),
	FOREIGN KEY (Id_Cliente) REFERENCES clientes(Id_Cliente),
	FOREIGN KEY (Id_Usuarios) REFERENCES usuarios(Id_Usuarios),
	FOREIGN KEY (Id_Municipio) REFERENCES municipio(Id_Municipio)
)ENGINE=InnoDB;

/*FORMULARIO DE EXHIBIDORES*/

CREATE TABLE clientes_temporal(
	Id_ClienteT INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Cod_ClienteT VARCHAR(7) NOT NULL,
	NombreClienteT VARCHAR(100) NOT NULL,
	ContactoT VARCHAR(80) NOT NULL,
	DireccionT VARCHAR(250),
	Id_RutaT INT(9) zerofill NOT NULL,
	FOREIGN KEY (Id_RutaT) REFERENCES rutas(Id_Ruta)
)ENGINE=InnoDB;

CREATE TABLE exhibidor_temporal(
	Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Ruta VARCHAR(7),
	CodigoCliente VARCHAR(8),
	Fecha DATETIME,
	FacturaEnc_ID VARCHAR(10),
	Descripcion VARCHAR(80),
	Estado INT,
	Codigo VARCHAR(15),
	Cantidad INT,
	No_Docto VARCHAR(10),
	Serie_Docto VARCHAR(15),
	Motivo VARCHAR(100),
	Fecha_Modificacion DATETIME,
	Tipo_Modificacion VARCHAR(4)
)ENGINE=InnoDB;

CREATE TABLE usuarios_supervisores(
	Id_us_suervisores INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Id_Usuarios INT(7) zerofill,
	Id_Supervisor INT(7) zerofill,
	FOREIGN KEY (Id_Usuarios) REFERENCES usuarios(Id_Usuarios),
	FOREIGN KEY (Id_Supervisor) REFERENCES supervisores(Id_Supervisor)
)ENGINE=InnoDB;

create table usuarios_consolasdv(
	Id_u_sdv INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Nombre VARCHAR(25),
	Usuario VARCHAR(15) UNIQUE,
    password VARCHAR(60),
	Rol INT(7) zerofill,
	Id_Distribuidora INT(7) zerofill,
	Canal VARCHAR(12),
	FOREIGN KEY (Rol) REFERENCES tipo_usuario(Id_Tipo_Usuario),
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora)
)ENGINE=InnoDB;



INSERT INTO usuarios_consolasdv VALUES (null, 'Juan Villalta' , 'JuanC' , '$$JuanSV$$', 1 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Enrique Garcia' , 'EnriqueG' , '$$EnriqueV$$', 1 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Alvaro Campos' , 'AlvaroC' , '$$AlvaroSV$$', 1 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Jessica Mejia' , 'JessicaM' , '$$JessicaSV$$', 1 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Liliana Rivas' , 'LilianaR' , '$$LilianaSV$$', 1 , 3 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Julio Quinteros' , 'JulioQ' , '$$JulioSV$$', 1 , 2 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Salvador Figueroa' , 'SalvadorF' , '$$SalvadorSV$$', 4 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Rodrigo Rojas' , 'RodrigoR' , '$$RodrigoSV$$', 4 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Roberto Vasquez' , 'RobertoV' , '$$RobertoSV$$', 4 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Manuel Gonzalez' , 'ManuelG' , '$$ManuelSV$$', 5 , 1 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'David Cordoba' , 'DavidC' , '$$DavidSV$$', 5 , 3 , 'DETALLE');
INSERT INTO usuarios_consolasdv VALUES (null, 'Noe Hernandez' , 'NoeH' , '$$NoeSV$$', 5 , 2 , 'DETALLE');


    
  
/*NUEVA ACTUALIZACION*/
create table Empleados(
	Id_Empleados INT(7) zerofill  PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Carnet int(7) NOT NULL ,
    Dui varchar(10) NOT NULL ,
	Nombre VARCHAR(75) NOT NULL,
    Cargo Varchar(25)NOT NULL,    
	Fecha VARCHAR(15)NOT NULL,
    Estado int(1) NOT NULL,
    Id_Distribuidora int(7) ZEROFILL NOT NULL,
    Id_Canal int (7) ZEROFILL NOT NULL,
	Id_Ruta INT(7) ZEROFILL NOT NULL,
    Id_u_sdv INT(7) ZEROFILL NOT NULL,
	foto_empleado varchar(200) NOT NULL,
    FOREIGN KEY (Id_Canal) REFERENCES canal(Id_Canal),
    FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora),
    FOREIGN KEY (Id_Ruta) REFERENCES rutas(Id_Ruta),
	FOREIGN KEY (Id_u_sdv) REFERENCES usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;




create table Categoria_Accesorio(
	Id_Categoria INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre varchar(50) NOT NULL,
    Descripcion varchar(100) NOT NULL,
    Id_Distribuidora INT(7) zerofill,
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora)
    )ENGINE=InnoDB;
    


create table Accesorios(
	Id_Accesorios INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Descripcion varchar(300) NOT NULL ,
    Id_Categoria INT(7) zerofill,
    Id_Distribuidora INT(7) zerofill,
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora),
	FOREIGN KEY (Id_Categoria) REFERENCES Categoria_Accesorio(Id_Categoria)
)ENGINE=InnoDB;

create table Salida_Accesorios(
	id_S_Accesorios INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Cantidad int(3) NOT NULL,
	fecha_salida datetime not null,
	Id_Accesorios INT(7) zerofill  NOT NULL,
	Id_Distribuidora INT(7) zerofill,
	Id_Canal INT(7) zerofill,
	Id_Ruta INT(7) zerofill,
	Id_Empleados INT(7) zerofill,
	Id_PDF varchar(30) ,
	FOREIGN KEY (Id_Accesorios) REFERENCES Accesorios(Id_Accesorios),
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora),
	FOREIGN KEY (Id_Ruta) REFERENCES rutas(Id_Ruta),
	FOREIGN KEY (Id_Canal) REFERENCES canal(Id_Canal),
	FOREIGN KEY (Id_Empleados) REFERENCES Empleados(Id_Empleados)
)ENGINE=InnoDB;

create table Entrada_Accesorios(
	Id_E_Accesorios INT(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Cantidad int(3) NOT NULL,
	fecha_entrada datetime not null,
	Referencia int(4) not null,
	Id_Accesorios INT(7) zerofill  NOT NULL,
	Id_Distribuidora INT(7) zerofill,
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora),
	FOREIGN KEY (Id_Accesorios) REFERENCES Accesorios(Id_Accesorios)
)ENGINE=InnoDB;


/***************** MOSTRAR DATOS DE INVENTARIO **********************/
-- SELECT T1.Id_Accesorios,A.Descripcion,A.Id_Distribuidora, D.Nombre_Distribuidora, Entradas, Salidas, Entradas - Salidas  AS Stock
-- FROM
--     (SELECT Id_Accesorios, SUM(Cantidad) AS Entradas FROM Entrada_Accesorios AS E_A GROUP BY Id_Accesorios) 
--         T1 INNER JOIN
--     (SELECT Id_Accesorios, SUM(Cantidad) AS Salidas FROM Salida_Accesorios AS S_A GROUP BY Id_Accesorios) 
--         T2 ON T1.Id_Accesorios = T2.Id_Accesorios 
--         INNER JOIN Accesorios AS A on T1.Id_Accesorios = A.Id_Accesorios
--          INNER JOIN distribuidora AS D on A.Id_Distribuidora = D.Id_Distribuidora where A.Id_Distribuidora=1
-- GROUP BY T1.Id_Accesorios;
/***************************************************************************/
 use dbsdv;

/*DETALLE  EQUIPO ENTREGADO POR RUTA*/
 select r.Nombre_ruta, e.Nombre, sum(S_A.Cantidad) as Total_Accesorios_Entregados , a.nombre_accesorio ,S_A.Id_PDF from salida_accesorios as S_A
 inner join rutas  as r on S_A.Id_Ruta = r.Id_Ruta 
 inner join empleados as e on S_A.Id_Empleados= e.Id_empleados
 inner join Accesorios as a on S_A.Id_Accesorios = a.Id_Accesorios  
 group by a.nombre_accesorio ,r.Nombre_ruta ,e.Nombre 
 order by r.Nombre_ruta asc ; 
///*-================================================================--*/


-- select S_A.Id_Ruta, r.Nombre_Ruta, e.Nombre, e.carnet, S_A.cantidad,a.Descripcion, S_A.fecha_salida , S_A.Id_Empleados , S_A.Id_Accesorios ,S_A.Id_PDF   
-- from salida_accesorios  as S_A
-- inner join rutas as r on S_A.Id_Ruta= r.Id_Ruta
-- inner join Empleados as e on S_A.Id_Empleados = e.Id_Empleados 
-- inner join Accesorios as a on S_A.Id_Accesorios = a.Id_Accesorios 
-- where S_A.Id_pdf !='' 
-- order by Id_PDF asc;


ALTER TABLE salida_accesorios CHANGE fecha_salida fecha_salida date not null;

-- SELECT S_A.Id_S_Accesorios, count(S_A.Cantidad) as Total, S_A.Id_Ruta, C_A.Nombre as Categoria, r.Nombre_Ruta, e.Nombre,a.Descripcion, S_A.fecha_salida , S_A.Id_Empleados , S_A.Id_Accesorios ,S_A.Id_PDF   
--     from Salida_Accesorios  as S_A inner join rutas as r on S_A.Id_Ruta= r.Id_Ruta
--     inner join Empleados as e on S_A.Id_Empleados = e.Id_Empleados 
--     inner join Accesorios as a on S_A.Id_Accesorios = a.Id_Accesorios 
--     inner join categoria_accesorio as C_A on S_A.Id_Distribuidora=C_A.Id_Distribuidora
--     where S_A.Id_pdf !="" and S_A.Id_Distribuidora="1"  group by S_A.Id_Ruta,Categoria,a.Descripcion order by S_A.Id_S_Accesorios desc;
    



alter table salida_accesorios add column Id_Categoria int(7) not null; 


-- select *, (select Id_Categoria from accesorios where id_accesorios=10) as Id_Categoria, (select Nombre from categoria_accesorio where Id_Categoria=4) as Nombre_Categoria from salida_accesorios where Id_Accesorios=10;



/*--MODIFICACIONES ACCESORIOS--*/
  

alter table categoria_accesorio add column fecha_registro date not null;
alter table categoria_accesorio add column Id_u_sdv int(7)zerofill not null;
alter table categoria_accesorio add column estado int(2) not null;
-- update categoria_accesorio set estado=1;


ALTER TABLE accesorios change Descripcion nombre_accesorio varchar(25);
alter table accesorios add column marca_accesorio varchar(25) not null;
alter table accesorios add column tipo_accesorio varchar(25) not null;
alter table accesorios add column modelo_accesorio varchar(25) not null;
alter table accesorios add column color_accesorio varchar(25) not null;
alter table accesorios add column vida_util_accesorio varchar(25) not null;
alter table accesorios add column caracteristica_accesorio varchar(45) not null;
alter table accesorios add column fecha_registro date not null;
alter table accesorios add column Id_u_sdv int(7) zerofill not null;
alter table accesorios add column precio_u float(9,4) not null;
alter table accesorios add column estado int(2) not null;

alter table entrada_accesorios change Referencia N_o_compra varchar(20) not null;

alter table salida_accesorios add column motivo_entrega varchar(15)not null;

/*TABLAS DISPOSITIVOS(NUEVO AVANCE) */

create table marca_cell(
	Id_marca_cell int(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	Nombre_Marca varchar(50) not null,
	Id_Distribuidora int(7) zerofill,
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora)
)ENGINE=InnoDB;

create table modelo_cell(
	Id_modelo_cell int(7) zerofill AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nombre_Modelo varchar(50) not null,
	Id_marca_cell int(7) zerofill not null,
	Id_Distribuidora int(7) zerofill,
	FOREIGN KEY (Id_marca_cell) REFERENCES marca_cell(Id_marca_cell),
	FOREIGN KEY (Id_Distribuidora) REFERENCES distribuidora(Id_Distribuidora)
)ENGINE=InnoDB;


create table telefonos(
	Id_telefono int(7) zerofill auto_increment primary key not null,
	Id_marca_cell int(7) zerofill not null,
	Id_modelo_cell int(7) zerofill not null,
	año_telefono int(4) not null,
	color_telefono varchar(25) not null,
	imei_telefono varchar(20) not null,
	N_serie_telefono varchar(50) not null,
	activo_fijo int(16) not null,
	Id_Distribuidora int(7) zerofill not null,
	Id_Canal int(7) zerofill not null,
	fecha_registro datetime not null,
	estado_telefono int(2) not null,
	id_u_sdv int(7) zerofill not null,
	foreign key (Id_marca_cell) references marca_cell(Id_marca_cell),
	foreign key (id_modelo_cell) references modelo_cell(Id_modelo_cell),
	foreign key (Id_Distribuidora) references distribuidora(Id_Distribuidora),
	foreign key (Id_Canal) references canal(Id_Canal),
	foreign key (id_u_sdv) references usuarios_consolasdv(id_u_sdv)
)ENGINE=InnoDB;

-- select T.Id_telefono ,d.nombre_distribuidora, t.color_telefono,t.año_telefono,mc.Nombre_marca,mcc.Id_Modelo_cell, T.Id_Distribuidora, 	T.Id_Canal,mcc.nombre_modelo,T.imei_telefono,T.estado_telefono,T.activo_fijo, T.color_telefono from telefonos as T
-- inner join	marca_cell as mc on mc.Id_marca_cell=T.Id_marca_cell
-- inner join modelo_cell as mcc on mcc.Id_modelo_cell=T.Id_modelo_cell
-- inner join distribuidora as d on d.Id_Distribuidora=T.Id_Distribuidora;


alter table telefonos add column observacion_telefono varchar(20) not null;

  
 create table tipo_accion(
	id_tipo_accion int(7)zerofill auto_increment primary key  not null,
	nombre_accion varchar(50) not null 
  )ENGINE=InnoDB;
  
  insert into tipo_accion value(null,'editar_telefono');
  insert into tipo_accion value(null,'baja_telefono');
  insert into tipo_accion value(null,'alta_telefono');

 create table bitacora_procesos(
	Id_bitacora int(7)zerofill auto_increment primary key not null,
	Nombre_tabla varchar(25) not null,
	Id_item int(7)zerofill	 not null,
	Id_tipo_accion int(7) zerofill not null, /***** modificar, eliminar, inactivar, activaralguna otra cosa****/ 
	comentario varchar(100) null,
	Id_u_sdv int(7) zerofill not null,
	foreign key (Id_tipo_accion) references tipo_accion(Id_tipo_accion),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
 )ENGINE=InnoDB;

 


-- select T.Id_marca_cell,M.Nombre_Marca ,T.Id_modelo_cell, Mc.Nombre_modelo,T.año_telefono ,T.color_telefono, t.Id_distribuidora,d.Nombre_distribuidora ,T.Imei_telefono 
-- from telefonos as t
-- inner join marca_cell as M on T.Id_marca_cell=M.Id_marca_cell
-- inner join modelo_cell as MC on T.Id_modelo_cell=Mc.Id_modelo_cell
-- inner join distribuidora as d on T.Id_Distribuidora=d.Id_distribuidora where imei_telefono=0;

-- select e.id_empleados , e.Id_ruta, r.nombre_ruta, count(estado) as CantidadActivos from empleados as e 
-- inner join Rutas as R on e.Id_ruta=R.Id_ruta where  e.estado=1 group by id_ruta; 



-- select c_a.Id_Categoria,c_a.Nombre,C_A.descripcion  from categoria_accesorio as c_a
-- inner join distribuidora as d on c_a.Id_Distribuidora=d.Id_distribuidora where d.Nombre_distribuidora='SANTA ANA';


-- select t.Id_Telefono, m_c.Nombre_Marca, m_a.Nombre_Modelo,t.año_telefono,t.color_telefono,t.imei_telefono, d.Nombre_Distribuidora from telefonos as t
-- inner join distribuidora as d on t.Id_Distribuidora=d.Id_distribuidora 
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as m_a on t.Id_modelo_cell=m_a.Id_modelo_cell;

create table autorizaciones_mh(
	Id_autorizaciones int(7) zerofill not null auto_increment primary key,
	Id_telefono int(7) zerofill not null,
	software varchar(25) not null,
	n_maquina int(4) not null,
	n_resolucion varchar(50) not null,
	n_resolucion_rt varchar(50) not null,
	serie_autorizada varchar(100) not null,
	fecha_solicitud date not null,
	fecha_autorizacion date not null,
	fecha_habilitacion date not null,
	cantidad_tk int(7) not null,
	img_mh varchar(100) not null,
	fecha_registro datetime  not null,
	Id_u_sdv int(7) zerofill not null,
	estado int(2) not null,
	estado_cell varchar(20) not null ,
	foreign key (Id_telefono) references telefonos(Id_telefono),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;


alter table autorizaciones_mh change estado_cell  estado_cell varchar(20) not null;


-- select a_mh.id_autorizaciones, m_c.Nombre_marca, mo_c.nombre_Modelo, t.año_telefono, t.color_telefono, d.Nombre_Distribuidora , a_mh.software, a_mh.n_maquina ,a_mh.n_resolucion ,a_mh.n_resolucion_rt, a_mh.fecha_solicitud,a_mh.fecha_autorizacion,a_mh.cantidad_tk, t.imei_telefono, a_mh.estado  , a_mh.Id_telefono
-- from autorizaciones_mh as a_mh
-- inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join distribuidora as d on t.Id_Distribuidora=d.Id_distribuidora
-- where a_mh.estado=2;




create table baja_serie(
	Id_baja_serie int(7) zerofill not null auto_increment primary key,
	Id_autorizaciones int(7) zerofill not null,
	fecha_baja_alta date not null,
	estatus varchar(10) not null,
	Id_pdf_baja_serie datetime	not null,
	Id_u_sdv int(7) zerofill not null,
	fecha_registro datetime not null,
	foreign key (Id_autorizaciones) references autorizaciones_mh(Id_autorizaciones),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;


-- select  a_mh.n_maquina,t.imei_telefono ,m_c.Nombre_marca,mo_c.Nombre_Modelo, t.color_telefono,a_mh.serie_autorizada,a_mh.n_resolucion_rt,a_mh.fecha_autorizacion,d.Nombre_Distribuidora from autorizaciones_mh as a_mh
-- inner join telefonos as t on a_mh.Id_telefono=t.Id_Telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell 
-- inner join distribuidora as d on t.Id_distribuidora=d.Id_distribuidora where a_mh.id_autorizaciones=1;


create table bitacora_entrega_celular(
	Id_entrega_cell int(7) zerofill not null auto_increment primary key,
	Id_Distribuidora int(7) zerofill not null,
	Id_Canal int(7) zerofill not null,
	Id_Ruta int(7) zerofill not null,
	Id_Empleados int(7) zerofill not null,
	Id_telefono int(7) zerofill not null,
	Id_autorizaciones int(7) zerofill not null,
	fecha_registro date not null,
	estado int(2)  not null,
	motivo_entrega varchar(50) not null,
	id_u_sdv int(7) zerofill not null,
	Id_pdf_cell varchar(50) not null,
	foreign key (Id_Distribuidora) references distribuidora(Id_Distribuidora),
	foreign key (Id_Canal) references canal(Id_Canal),
	foreign key (Id_Ruta) references rutas(Id_Ruta),
	foreign key (Id_Empleados) references Empleados(Id_empleados),
	foreign key (Id_telefono) references telefonos(Id_telefono),
	foreign key (Id_autorizaciones) references autorizaciones_mh(Id_autorizaciones),
	foreign key (id_u_sdv) references usuarios_consolasdv(id_u_sdv)
)ENGINE=InnoDB;

create table tipo_notificacion(
	Id_tipo_notificacion int(7) zerofill not null auto_increment primary key,
	descripcion_notificacion varchar(25) not null
)ENGINE=InnoDB;

insert into tipo_notificacion values (null,'success');
insert into tipo_notificacion values (null,'secondary');
insert into tipo_notificacion values (null,'warning');
insert into tipo_notificacion values (null,'info');
insert into tipo_notificacion values (null,'danger');

create table notificaciones(
	Id_notificacion int(7) zerofill not null auto_increment primary key,
	titulo varchar(50) not null,
	descripcion_noti varchar(250) not null,
	Id_tipo_notificacion int(7) zerofill not null ,/*success==0,secondary===1,warning==2,info==3,danger==4*/
	estado int(2) not null,/*0 inactivo,1 activo */
	modulo varchar(200) not null,
	Id_u_sdv int(7) zerofill not null,
	foreign key (id_u_sdv) references usuarios_consolasdv(id_u_sdv),
	foreign key (Id_tipo_notificacion) references tipo_notificacion(Id_tipo_notificacion)
)ENGINE=InnoDB;




-- select n.Id_notificacion,n.titulo,n.descripcion_noti, t_n.descripcion_notificacion ,n.estado,n.modulo,u_c.Nombre
--  from notificaciones as n
-- inner join usuarios_consolasdv as u_c on n.Id_u_sdv=u_c.Id_u_sdv
-- inner join tipo_notificacion as t_n on n.Id_tipo_notificacion=t_n.Id_tipo_notificacion;


-- select t.Id_telefono,m_c.Nombre_marca,mo_c.Nombre_Modelo, t.color_telefono, d.Nombre_Distribuidora 
-- from telefonos as t 
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join distribuidora as d on t.Id_distribuidora=d.Id_distribuidora
-- where t.id_telefono=10;


create table bitacora_entrega_celular_noautorizado(
	Id_entrega_cell_no int(7) zerofill not null auto_increment primary key,
	Id_Distribuidora int(7) zerofill not null,
	Id_Canal int(7) zerofill not null,
	Id_ruta int(7) zerofill not null,
	Id_Empleados int(7) zerofill not null,
	Id_telefono int(7) zerofill not null,
	fecha_registro date not null,
	estado int(2)  not null,
	motivo_entrega varchar(50) not null,
	id_u_sdv int(7) zerofill not null,
	Id_pdf_cell varchar(50) not null,
	foreign key (Id_Distribuidora) references distribuidora(Id_distribuidora),
	foreign key (Id_Canal) references canal(Id_canal),
	foreign key (Id_Ruta) references rutas(Id_ruta),
	foreign key (Id_Empleados) references Empleados(Id_empleados),
	foreign key (Id_telefono) references telefonos(Id_telefono),
	foreign key (id_u_sdv) references usuarios_consolasdv(id_u_sdv)
)ENGINE=InnoDB;

/*CONSULTA PARA MOSTRAR TODOS LOS DATOS ASIGNADOS */
-- select d.nombre_distribuidora, c.nombre_canal,r.nombre_ruta, e.nombre,e.cargo, e.carnet,m_c.nombre_marca, mo_c.nombre_modelo,t.color_telefono ,t.imei_telefono,t.activo_fijo,t.año_telefono,
-- t.estado_telefono,t.observacion_telefono,a_mh.software,a_mh.n_maquina,a_mh.n_resolucion,a_mh.n_resolucion_rt,a_mh.fecha_autorizacion,a_mh.fecha_habilitacion,a_mh.serie_autorizada, a_mh.cantidad_tk
--  from bitacora_entrega_celular as bec
-- inner join rutas as r on bec.Id_ruta=r.Id_Ruta  
-- inner join telefonos as t on bec.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join distribuidora as d on bec.Id_distribuidora=d.Id_Distribuidora
-- inner join canal as c on bec.Id_canal=c.Id_Canal
-- inner join autorizaciones_mh as a_mh on bec.Id_autorizaciones=a_mh.id_autorizaciones
-- inner join baja_serie as b_s on a_mh.Id_autorizaciones=b_s.id_autorizaciones
-- inner join empleados as e on bec.id_empleados=e.id_empleados;
/*****************************************************************************************/


-- SELECT a_mh.Id_autorizaciones, a_mh.n_maquina, a_mh.estado,a_mh.estado_cell,r.Nombre_Ruta FROM autorizaciones_mh as a_mh
-- inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
-- inner join bitacora_entrega_celular as bec on t.Id_telefono=bec.Id_telefono
-- inner join rutas as r on bec.Id_ruta=r.Id_Ruta;
-- select * from autorizaciones_mh;


--  CONSULTAR ARCHIVOS PDF  DE TABLAS DE TELEFONOS AUTORIZADOS Y NO AUTORIZADOS
-- SELECT * FROM (
-- select bec.Id_entrega_cell as Id_Entrega_cell, bec.Id_ruta, 	r.Nombre_Ruta ,	bec.Id_empleados,e.Nombre,bec.Id_telefono,m_c.Nombre_Marca,mo_c.nombre_Modelo,t.Imei_telefono,	bec.Id_distribuidora,	bec.Id_canal,bec.fecha_registro	, bec.id_autorizaciones,bec.Id_pdf_cell, bec.id_u_sdv as usuario	 from bitacora_entrega_celular  as bec
-- inner join rutas as r on bec.Id_ruta=r.Id_ruta 
-- inner join empleados as e on e.Id_Empleados=bec.Id_empleados
-- inner join telefonos as t on bec.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- union all 
-- select bec_n.Id_entrega_cell_no, bec_n.Id_ruta, 	r.Nombre_Ruta ,	bec_n.Id_empleados,e.Nombre,bec_n.Id_telefono,m_c.Nombre_Marca,mo_c.nombre_Modelo,t.Imei_telefono,	bec_n.Id_distribuidora,	bec_n.Id_canal, bec_n.fecha_registro, "null" as autorizacion,bec_n.Id_pdf_cell,bec_n.id_u_sdv  from  bitacora_entrega_celular_noautorizado as bec_n
-- inner join rutas as r on bec_n.Id_ruta=r.Id_ruta 
-- inner join empleados as e on bec_n.Id_Empleados=e.Id_empleados
-- inner join telefonos as t on bec_n.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- LIMIT 10 ) PDF
--   where usuario=1
--   order by fecha_registro DESC 
-- ;



-- STAR ACTUALIZACION DE TELEFONO Y SIM CARD RUTAS DE EL SALVADOR-- 

-- update rutas set telefono='7746-0965', sim_card='8950301217089635936F' where id_ruta='1';
-- update rutas set telefono='7746-0787', sim_card='8950301217030046175F' where id_ruta='2';
-- update rutas set telefono='7851-9875', sim_card='8950301216034351250F' where id_ruta='3';
-- update rutas set telefono='7746-8941', sim_card='8950301216034318218F' where id_ruta='4';
-- update rutas set telefono='7851-9230', sim_card='8950301216034193249F' where id_ruta='5';
-- update rutas set telefono='7069-9977', sim_card='8950301216060052046F' where id_ruta='6';
-- update rutas set telefono='7851-2463', sim_card='895030121606051030F' where id_ruta='7';
-- update rutas set telefono='7844-7179', sim_card='8950301216038420317F' where id_ruta='8';
-- update rutas set telefono='7746-9700', sim_card='8950301217030222792F' where id_ruta='9';
-- update rutas set telefono='7851-8572', sim_card='8950301217089633303F' where id_ruta='10';
-- update rutas set telefono='7852-8834', sim_card='8950301216037896483F' where id_ruta='11';
-- update rutas set telefono='7861-6857', sim_card='895030121707025189F' where id_ruta='12';
-- update rutas set telefono='7986-1656', sim_card='895030121707025188F' where id_ruta='13';
-- update rutas set telefono='7844-5273', sim_card='8950301217030046209F' where id_ruta='14';
-- update rutas set telefono='7844-6571', sim_card='8950301217034798060F' where id_ruta='15';
-- update rutas set telefono='7844-4978', sim_card='895030121805145232F' where id_ruta='16';
-- update rutas set telefono='7069-9258', sim_card='895030121707025186F' where id_ruta='17';
-- update rutas set telefono='7851-0445', sim_card='8950301216060051121F' where id_ruta='18';
-- update rutas set telefono='7852-9324', sim_card='8950301217030222101F' where id_ruta='19';
-- update rutas set telefono='7861-1766', sim_card='8950301216037896343F' where id_ruta='20';
-- update rutas set telefono='7844-8916', sim_card='8950301216078500747F' where id_ruta='21';
-- update rutas set telefono='7861-8612', sim_card='8950301217030222826F' where id_ruta='22';
-- update rutas set telefono='7840-8709', sim_card='8950301217089635993F' where id_ruta='23';
-- update rutas set telefono='7844-0960', sim_card='8950301216038420382F' where id_ruta='24';
-- update rutas set telefono='7986-4536', sim_card='8950301216033155975F' where id_ruta='25';
-- update rutas set telefono='7844-9784', sim_card='8950301217030131753F' where id_ruta='26';
-- update rutas set telefono='7069-0830', sim_card='8950301216060051162F' where id_ruta='27';
-- update rutas set telefono='7069-1125', sim_card='8950301215091913705F' where id_ruta='28';
-- update rutas set telefono='7844-4641', sim_card='8950301216038420432F' where id_ruta='29';
-- update rutas set telefono='7844-7744', sim_card='8950301216032088359F' where id_ruta='30';
-- update rutas set telefono='7852-2259', sim_card='8950301216060074891F' where id_ruta='31';
-- update rutas set telefono='7748-7976', sim_card='8950301216060051170F' where id_ruta='32';
-- update rutas set telefono='7844-8913', sim_card='8950301216038420358F' where id_ruta='33';
-- update rutas set telefono='7069-9328', sim_card='8950301215091913721F' where id_ruta='34';
-- update rutas set telefono='7851-9632', sim_card='8950301216060052053F' where id_ruta='35';
-- update rutas set telefono='7986-2302', sim_card='8950301216060052178F' where id_ruta='36';
-- update rutas set telefono='7844-4234', sim_card='8950301217089635837F' where id_ruta='37';
-- update rutas set telefono='7844-1725', sim_card='8950301216038420192F' where id_ruta='38';
-- update rutas set telefono='7844-3988', sim_card='8950301216038420200F' where id_ruta='39';
-- update rutas set telefono='7069-1003', sim_card='895030121707025194' where id_ruta='40';
-- update rutas set telefono='7851-6599', sim_card='8950301217030222511F' where id_ruta='41';
-- update rutas set telefono='7844-4737', sim_card='8950301217030543122F' where id_ruta='42';
-- update rutas set telefono='7861-8608', sim_card='8950301216060052079F' where id_ruta='43';
-- update rutas set telefono='7851-3092', sim_card='8950301216034193140F' where id_ruta='44';
-- update rutas set telefono='7844-9938', sim_card='8950301216038420226F' where id_ruta='45';
-- update rutas set telefono='7840-8722', sim_card='895030121707025193F' where id_ruta='46';
-- update rutas set telefono='7844-5786', sim_card='8950301216038420291F' where id_ruta='47';
-- update rutas set telefono=' ', sim_card='8950301216038420390F' where id_ruta='48';
-- update rutas set telefono='7609-8022', sim_card='8950301217030231009F' where id_ruta='49';
-- update rutas set telefono='7861-4056', sim_card='8950301216037896517F' where id_ruta='50';
-- update rutas set telefono='7746-7454', sim_card='8950301216034318267F' where id_ruta='51';
-- update rutas set telefono='7862-3978', sim_card='8950301217030131787F' where id_ruta='52';
-- update rutas set telefono='7851-1840', sim_card='8950301217030222875F' where id_ruta='53';
-- update rutas set telefono='7861-2243', sim_card='8950301216037896426F' where id_ruta='54';
-- update rutas set telefono='7861-6404', sim_card='8950301216037896335F' where id_ruta='55';
-- update rutas set telefono='7861-1539', sim_card='8950301217034101323F' where id_ruta='56';
-- update rutas set telefono='7861-6261', sim_card='8950301217034570774F' where id_ruta='57';
-- update rutas set telefono='7844-7323', sim_card='8950301216038420218F' where id_ruta='58';
-- update rutas set telefono='7851-8247', sim_card='8950301216060052061F' where id_ruta='59';
-- update rutas set telefono='7855-2868', sim_card='8950301216070744871F' where id_ruta='60';
-- update rutas set telefono='7855-4139', sim_card='8950301217030222727F' where id_ruta='61';
-- update rutas set telefono='7855-0247', sim_card='8950301216070744947F' where id_ruta='62';
-- update rutas set telefono='7861-8506', sim_card='8950301216037896301F' where id_ruta='63';
-- update rutas set telefono='7748-4430', sim_card='' where id_ruta='64';
-- update rutas set telefono='7844-0268', sim_card='8950301216038420457F' where id_ruta='65';
-- update rutas set telefono='7986-1660', sim_card='' where id_ruta='66';
-- update rutas set telefono='7844-9379', sim_card='8950301216060052103F' where id_ruta='67';
-- update rutas set telefono='7851-4856', sim_card='895030121707025191F' where id_ruta='68';
-- update rutas set telefono='7850-6667', sim_card='895030121707041743F' where id_ruta='69';
-- update rutas set telefono='7861-0355', sim_card='895030121805053655F' where id_ruta='70';
-- update rutas set telefono='7986-5847', sim_card='8950301217089635894F' where id_ruta='71';
-- update rutas set telefono='7748-7190', sim_card='' where id_ruta='72';
-- update rutas set telefono='7748-2657', sim_card='' where id_ruta='73';
-- update rutas set telefono='7851-5857', sim_card='8950301216034193181F' where id_ruta='74';
-- update rutas set telefono='7069-4669', sim_card='8950301215091913671F' where id_ruta='75';
-- update rutas set telefono='7986-7523', sim_card='8950301216033155983F' where id_ruta='76';
-- update rutas set telefono='7854-2041', sim_card='8950301215084342862F' where id_ruta='77';
-- update rutas set telefono='7855-1452', sim_card='895030121805145298F' where id_ruta='78';
-- update rutas set telefono='7986-3547', sim_card='8950301216033156072F' where id_ruta='79';
-- update rutas set telefono='7851-1781', sim_card='8950301216034193322F' where id_ruta='80';
-- update rutas set telefono='7069-5626', sim_card='8950301215091913655F' where id_ruta='81';
-- update rutas set telefono='7986-4826', sim_card='8950301218050536764F' where id_ruta='82';
-- update rutas set telefono='7609-1750', sim_card='8950301217030230886F' where id_ruta='83';
-- update rutas set telefono='7609-5962', sim_card='8950301217030230860F' where id_ruta='84';
-- update rutas set telefono='7609-9375', sim_card='8950301217030230928F' where id_ruta='85';
-- update rutas set telefono='7852-3284', sim_card='8950301216060044597F' where id_ruta='86';
-- update rutas set telefono='7609-1533', sim_card='895030121707025192F' where id_ruta='87';
-- update rutas set telefono='7855-3188', sim_card='' where id_ruta='88';
-- update rutas set telefono='7855-0697', sim_card='8950301216070744897F' where id_ruta='89';
-- update rutas set telefono='7861-2150', sim_card='8950301214123113939F' where id_ruta='90';
-- update rutas set telefono='7852-5123', sim_card='8950301216060074982F' where id_ruta='91';
-- update rutas set telefono='7852-7100', sim_card='8950301216060074933F' where id_ruta='92';
-- update rutas set telefono='7852-0739', sim_card='8950301218051452383F' where id_ruta='93';
-- update rutas set telefono='7852-1663', sim_card='8650301216060044670F' where id_ruta='94';
-- update rutas set telefono='7852-6876', sim_card='8950301216060074909F' where id_ruta='95';
-- update rutas set telefono='7855-1226', sim_card='8950301216070744848F' where id_ruta='96';
-- update rutas set telefono='7852-0519', sim_card='8950301217089635902F' where id_ruta='97';
-- update rutas set telefono='7855-5349', sim_card='8950301218051452128F' where id_ruta='98';
-- update rutas set telefono='7855-4279', sim_card=' 8950301218051452052F' where id_ruta='99';
-- update rutas set telefono='7855-0436', sim_card='8950301218051452078F' where id_ruta='100';
-- update rutas set telefono='7855-2036', sim_card='8950301218051452797F' where id_ruta='101';
-- update rutas set telefono='7609-9538', sim_card='8950301217034798086F' where id_ruta='102';
-- update rutas set telefono='7855-3753', sim_card='8950301217070251750F' where id_ruta='103';
-- update rutas set telefono='7855-5128', sim_card='8950301216070744863F' where id_ruta='104';
-- update rutas set telefono='7855-1465', sim_card='8950301216070744939F' where id_ruta='105';
-- update rutas set telefono='7609-8808', sim_card='8950301218050536772F' where id_ruta='106';
-- update rutas set telefono='7609-0962', sim_card='8950301217030248706F' where id_ruta='107';
-- update rutas set telefono='7609-7214', sim_card='8950301217030230944F' where id_ruta='108';
-- update rutas set telefono='7855-8030', sim_card='8950301217030222800F' where id_ruta='109';
-- update rutas set telefono='7609-3376', sim_card='8950301217030230902F' where id_ruta='110';
-- update rutas set telefono='7852-2101', sim_card='8950301217070251743F' where id_ruta='111';
-- update rutas set telefono='7855-5049', sim_card='8950301216070744970F' where id_ruta='112';
-- update rutas set telefono='7855-7891', sim_card='8950301216070744988F' where id_ruta='113';
-- update rutas set telefono='7855-3122', sim_card='8950301216070744962F' where id_ruta='114';
-- update rutas set telefono='7855-7861', sim_card='8950301216070744798F' where id_ruta='115';
-- update rutas set telefono='7855-5650', sim_card='8950301218051452813F' where id_ruta='116';
-- update rutas set telefono='7748-8723', sim_card='8950301218051452805F' where id_ruta='117';
-- update rutas set telefono='7607-7699', sim_card='8950301216032088565F' where id_ruta='118';
-- update rutas set telefono='7860-8204', sim_card='8950301216032088615F' where id_ruta='119';
-- update rutas set telefono='7856-1341', sim_card='8950301218051452789F' where id_ruta='120';
-- update rutas set telefono='7862-4075', sim_card='8950301216032088276F' where id_ruta='121';
-- update rutas set telefono='7609-0976', sim_card='8950301217030230837F' where id_ruta='122';
-- update rutas set telefono='7609-5708', sim_card='8950301217030230894F' where id_ruta='123';
-- update rutas set telefono='7855-0662', sim_card='8950301216070744905F' where id_ruta='124';
-- update rutas set telefono='7855-9205', sim_card='8950301216070744954F' where id_ruta='125';
-- update rutas set telefono='7090-7824', sim_card='895030121807276000F' where id_ruta='126';
-- update rutas set telefono='7844-3228', sim_card='8950301216038420267F' where id_ruta='127';
-- update rutas set telefono='7844-2775', sim_card='8950301216038420283F' where id_ruta='128';
-- update rutas set telefono='7601-6977', sim_card='8950301218050536640F' where id_ruta='129';
-- update rutas set telefono='7844-3525', sim_card='8950301218051452094F' where id_ruta='130';
-- update rutas set telefono='7844-9441', sim_card='8950301218051452268F' where id_ruta='131';
-- update rutas set telefono='7852-4728', sim_card='8950301216060044639F' where id_ruta='132';
-- update rutas set telefono='7852-8728', sim_card='8950301216060044613F' where id_ruta='133';
-- update rutas set telefono='7852-7710', sim_card='8950301216060044605F' where id_ruta='134';
-- update rutas set telefono='7852-2843', sim_card='8950301218050536632F' where id_ruta='135';
-- update rutas set telefono='7852-2781', sim_card='8950301219017413956F' where id_ruta='136';
-- update rutas set telefono='7855-0410', sim_card='8950301216070744996F' where id_ruta='137';
-- update rutas set telefono='7852-3288', sim_card='8950301218050639873F' where id_ruta='138';
-- update rutas set telefono='7852-8420', sim_card='895030121805145293F' where id_ruta='139';
-- update rutas set telefono='7852-1187', sim_card='8950301217034570758F' where id_ruta='140';
-- update rutas set telefono='7852-9903', sim_card='8950301216060050974F' where id_ruta='141';
-- update rutas set telefono='7852-1926', sim_card='8950301216060074917F' where id_ruta='142';
-- update rutas set telefono='7609-3571', sim_card='8950301217034146260F' where id_ruta='143';
-- update rutas set telefono='7855-1299', sim_card='8950301216070744830F' where id_ruta='144';
-- update rutas set telefono='7852-9665', sim_card='8950301218051452672F' where id_ruta='145';
-- update rutas set telefono='7852-2491', sim_card='8950301216060074834F' where id_ruta='146';
-- update rutas set telefono='7855-2677', sim_card='8950301216070744889F' where id_ruta='147';
-- update rutas set telefono='7986-2548', sim_card='89503012170300243053F' where id_ruta='148';
-- update rutas set telefono='7852-2612', sim_card='8950301217089794154F' where id_ruta='149';
-- update rutas set telefono='7609-9223', sim_card='8950301219017414236F' where id_ruta='150';
-- update rutas set telefono='7852-1185', sim_card='8950301218051452235F' where id_ruta='151';
-- update rutas set telefono='7852-3357', sim_card='8950301216060074859F' where id_ruta='152';
-- update rutas set telefono='7852-1951', sim_card='8950301217089794162F' where id_ruta='153';
-- update rutas set telefono='7852-3522', sim_card='8950301216060044571F' where id_ruta='154';
-- update rutas set telefono='7986-1544', sim_card='8950301217070251859F' where id_ruta='155';
-- update rutas set telefono='7748-6151', sim_card='8950301219017449224F' where id_ruta='156';
-- update rutas set telefono='', sim_card='' where id_ruta='157';
-- update rutas set telefono='7862-6369', sim_card='8950301216032088524F' where id_ruta='158';
-- update rutas set telefono='7862-1655', sim_card='8950301216032088607F' where id_ruta='159';
-- update rutas set telefono='7862-8165', sim_card='8950301216032088631F' where id_ruta='160';
-- update rutas set telefono='7609-0623', sim_card='8950301217030230951F' where id_ruta='161';
-- update rutas set telefono='7609-6891', sim_card='8950301217030230829F' where id_ruta='162';
-- update rutas set telefono='7855-1292', sim_card='8950301216070744954F' where id_ruta='163';


-- END ACTUALIZACION DE TELEFONO Y SIM CARD RUTAS DE EL SALVADOR-- 


create table deducibles_telefonos(
	Id_deducible_telefonos int(7) zerofill not null auto_increment primary key,
	primera_ocacion double (4,2) not null,
	segunda_ocacion double(4,2) not null,
	tercera_ocacion double (4,2) not null,
	Id_modelo_cell int(7) zerofill not null,
	foreign key (Id_modelo_cell) references modelo_cell(Id_modelo_cell)  
)ENGINE=innoDB;

-- CONSULTA PARA IMPRIMIR DATOS PDF--  

-- SELECT * FROM (
-- select r.Nombre_Ruta, e.Carnet ,e.nombre,e.cargo,e.dui,d.Nombre_Distribuidora,bec.fecha_registro,bec.motivo_entrega,r.telefono,r.sim_card, r.cod_cc , r.descrip_cc ,t.imei_telefono,t.activo_fijo, mo_c.nombre_Modelo,m_c.Nombre_Marca,d_t.primera_ocacion,d_t.segunda_ocacion,d_t.tercera_ocacion, (select Nombre from empleados where Id_distribuidora=1 and cargo='JEFE DE VENTA' and estado=1) AS JEFE_DE_VENTA, bec.Id_pdf_cell from bitacora_entrega_celular as bec 
-- inner join empleados as e on bec.Id_empleados=e.Id_empleados
-- inner join distribuidora as d on bec.Id_distribuidora=d.Id_distribuidora
-- inner join rutas as r on bec.Id_ruta=r.Id_ruta
-- inner join telefonos as t on bec.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell	as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join deducibles_telefonos as d_t on mo_c.Id_modelo_cell=d_t.Id_modelo_cell
-- union all
-- select r.Nombre_Ruta,e.Carnet , e.nombre,e.cargo,e.dui,d.Nombre_Distribuidora,bec_n.fecha_registro,bec_n.motivo_entrega,r.telefono,r.sim_card, r.cod_cc , r.descrip_cc ,t.imei_telefono,t.activo_fijo, mo_c.nombre_Modelo,m_c.Nombre_Marca,d_t.primera_ocacion,d_t.segunda_ocacion,d_t.tercera_ocacion, (select Nombre from empleados where Id_distribuidora=1 and cargo='JEFE DE VENTA' and estado=1) AS JEFE_DE_VENTA, bec_n.Id_pdf_cell 
-- from bitacora_entrega_celular_noautorizado as bec_n 
-- inner join empleados as e on bec_n.Id_empleados=e.Id_empleados
-- inner join distribuidora as d on bec_n.Id_distribuidora=d.Id_distribuidora
-- inner join rutas as r on bec_n.Id_ruta=r.Id_ruta
-- inner join telefonos as t on bec_n.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell	as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join deducibles_telefonos as d_t on mo_c.Id_modelo_cell=d_t.Id_modelo_cell) InfoPDF
-- ;



-- CONSULTA PARA IMPRIMIR DATOS PDF-- 


-- ACTUALIZAR CODIGO DE CENTRO DE COSTO Y DESCRIPCION DE CENTRO DE COSTOS-- 
-- UPDATE rutas SET COD_CC='751301' , DESCRIP_CC='Ruta San Salvador 1.1.01 ' WHERE ID_RUTA='1';
-- UPDATE rutas SET COD_CC='751302' , DESCRIP_CC='Ruta San Salvador 1.1.02' WHERE ID_RUTA='2';
-- UPDATE rutas SET COD_CC='751303' , DESCRIP_CC='Ruta San Salvador 1.1.03' WHERE ID_RUTA='3';
-- UPDATE rutas SET COD_CC='751304' , DESCRIP_CC='Ruta San Salvador 1.1.04' WHERE ID_RUTA='4';
-- UPDATE rutas SET COD_CC='751305' , DESCRIP_CC='Ruta San Salvador 1.1.05' WHERE ID_RUTA='5';
-- UPDATE rutas SET COD_CC='751306' , DESCRIP_CC='Ruta San Salvador 1.1.06' WHERE ID_RUTA='6';
-- UPDATE rutas SET COD_CC='751307' , DESCRIP_CC='Ruta San Salvador 1.1.07' WHERE ID_RUTA='7';
-- UPDATE rutas SET COD_CC='751308' , DESCRIP_CC='Ruta San Salvador 1.1.08' WHERE ID_RUTA='8';
-- UPDATE rutas SET COD_CC='751309' , DESCRIP_CC='Ruta San Salvador 1.1.09' WHERE ID_RUTA='9';
-- UPDATE rutas SET COD_CC='751310' , DESCRIP_CC='Ruta San Salvador 1.1.10' WHERE ID_RUTA='10';
-- UPDATE rutas SET COD_CC='751311' , DESCRIP_CC='Ruta San Salvador 1.1.11' WHERE ID_RUTA='11';
-- UPDATE rutas SET COD_CC='751312' , DESCRIP_CC='Ruta San Salvador 1.1.12' WHERE ID_RUTA='12';
-- UPDATE rutas SET COD_CC='751313' , DESCRIP_CC='Ruta San Salvador 1.1.13' WHERE ID_RUTA='13';
-- UPDATE rutas SET COD_CC='751314' , DESCRIP_CC='Ruta San Salvador 1.1.14' WHERE ID_RUTA='14';
-- UPDATE rutas SET COD_CC='751315' , DESCRIP_CC='Ruta San Salvador 1.1.15' WHERE ID_RUTA='15';
-- UPDATE rutas SET COD_CC='751316' , DESCRIP_CC='Ruta San Salvador 1.1.16' WHERE ID_RUTA='16';
-- UPDATE rutas SET COD_CC='751317' , DESCRIP_CC='Ruta San Salvador 1.1.17' WHERE ID_RUTA='17';
-- UPDATE rutas SET COD_CC='751318' , DESCRIP_CC='Ruta San Salvador 1.1.18' WHERE ID_RUTA='18';
-- UPDATE rutas SET COD_CC='751319' , DESCRIP_CC='Ruta San Salvador 1.1.19' WHERE ID_RUTA='19';
-- UPDATE rutas SET COD_CC='751320' , DESCRIP_CC='Ruta San Salvador 1.1.20' WHERE ID_RUTA='20';
-- UPDATE rutas SET COD_CC='751321' , DESCRIP_CC='Ruta San Salvador 1.1.21' WHERE ID_RUTA='21';
-- UPDATE rutas SET COD_CC='751322' , DESCRIP_CC='Ruta San Salvador 1.1.22' WHERE ID_RUTA='22';
-- UPDATE rutas SET COD_CC='751323' , DESCRIP_CC='Ruta San Salvador 1.1.23' WHERE ID_RUTA='23';
-- UPDATE rutas SET COD_CC='751324' , DESCRIP_CC='Ruta San Salvador 1.1.24' WHERE ID_RUTA='24';
-- UPDATE rutas SET COD_CC='751325' , DESCRIP_CC='Ruta San Salvador 1.1.25' WHERE ID_RUTA='25';
-- UPDATE rutas SET COD_CC='751326' , DESCRIP_CC='Ruta San Salvador 1.1.26' WHERE ID_RUTA='26';
-- UPDATE rutas SET COD_CC='751327' , DESCRIP_CC='Ruta San Salvador 1.1.27' WHERE ID_RUTA='27';
-- UPDATE rutas SET COD_CC='751328' , DESCRIP_CC='Ruta San Salvador 1.1.28' WHERE ID_RUTA='28';
-- UPDATE rutas SET COD_CC='751329' , DESCRIP_CC='Ruta San Salvador 1.1.29' WHERE ID_RUTA='29';
-- UPDATE rutas SET COD_CC='751330' , DESCRIP_CC='Ruta San Salvador 1.1.30' WHERE ID_RUTA='30';
-- UPDATE rutas SET COD_CC='751331' , DESCRIP_CC='Ruta San Salvador 1.1.31' WHERE ID_RUTA='31';
-- UPDATE rutas SET COD_CC='751332' , DESCRIP_CC='Ruta San Salvador 1.1.32' WHERE ID_RUTA='32';
-- UPDATE rutas SET COD_CC='751333' , DESCRIP_CC='Ruta San Salvador 1.1.33' WHERE ID_RUTA='33';
-- UPDATE rutas SET COD_CC='751334' , DESCRIP_CC='Ruta San Salvador 1.1.34' WHERE ID_RUTA='34';
-- UPDATE rutas SET COD_CC='751335' , DESCRIP_CC='Ruta San Salvador 1.1.35' WHERE ID_RUTA='35';
-- UPDATE rutas SET COD_CC='751336' , DESCRIP_CC='Ruta San Salvador 1.1.36' WHERE ID_RUTA='36';
-- UPDATE rutas SET COD_CC='751337' , DESCRIP_CC='Ruta San Salvador 1.1.37' WHERE ID_RUTA='37';
-- UPDATE rutas SET COD_CC='751338' , DESCRIP_CC='Ruta San Salvador 1.1.38' WHERE ID_RUTA='38';
-- UPDATE rutas SET COD_CC='751339' , DESCRIP_CC='Ruta San Salvador 1.1.39' WHERE ID_RUTA='39';
-- UPDATE rutas SET COD_CC='751340' , DESCRIP_CC='Ruta San Salvador 1.1.40' WHERE ID_RUTA='40';
-- UPDATE rutas SET COD_CC='751341' , DESCRIP_CC='Ruta San Salvador 1.1.41' WHERE ID_RUTA='41';
-- UPDATE rutas SET COD_CC='751342' , DESCRIP_CC='Ruta San Salvador 1.1.42' WHERE ID_RUTA='42';
-- UPDATE rutas SET COD_CC='751343' , DESCRIP_CC='Ruta San Salvador 1.1.43' WHERE ID_RUTA='43';
-- UPDATE rutas SET COD_CC='751344' , DESCRIP_CC='Ruta San Salvador 1.1.44' WHERE ID_RUTA='44';
-- UPDATE rutas SET COD_CC='755001' , DESCRIP_CC='Ruta San Salvador 1.1.45' WHERE ID_RUTA='45';
-- UPDATE rutas SET COD_CC='755002' , DESCRIP_CC='Ruta San Salvador 1.1.46' WHERE ID_RUTA='46';
-- UPDATE rutas SET COD_CC='755032' , DESCRIP_CC='Ruta San Salvador 1.1.47' WHERE ID_RUTA='47';
-- UPDATE rutas SET COD_CC='755033' , DESCRIP_CC='Ruta San Salvador 1.1.48' WHERE ID_RUTA='48';
-- UPDATE rutas SET COD_CC='755034' , DESCRIP_CC='Ruta San Salvador 1.1.49' WHERE ID_RUTA='49';
-- UPDATE rutas SET COD_CC='751345' , DESCRIP_CC='Ruta San Salvador 1.2.01' WHERE ID_RUTA='50';
-- UPDATE rutas SET COD_CC='751347' , DESCRIP_CC='Ruta San Salvador 1.2.03' WHERE ID_RUTA='51';
-- UPDATE rutas SET COD_CC='751348' , DESCRIP_CC='Ruta San Salvador 1.2.04' WHERE ID_RUTA='52';
-- UPDATE rutas SET COD_CC='751349' , DESCRIP_CC='Ruta San Salvador 1.2.05' WHERE ID_RUTA='53';
-- UPDATE rutas SET COD_CC='751350' , DESCRIP_CC='Ruta San Salvador 1.2.06' WHERE ID_RUTA='54';
-- UPDATE rutas SET COD_CC='751351' , DESCRIP_CC='Ruta San Salvador 1.2.07' WHERE ID_RUTA='55';
-- UPDATE rutas SET COD_CC='751352' , DESCRIP_CC='Ruta San Salvador 1.2.08' WHERE ID_RUTA='56';
-- UPDATE rutas SET COD_CC='751353' , DESCRIP_CC='Ruta San Salvador 1.2.09' WHERE ID_RUTA='57';
-- UPDATE rutas SET COD_CC='751354' , DESCRIP_CC='Ruta San Salvador 1.2.10' WHERE ID_RUTA='58';
-- UPDATE rutas SET COD_CC='751355' , DESCRIP_CC='Ruta San Salvador 1.2.11' WHERE ID_RUTA='59';
-- UPDATE rutas SET COD_CC='751371' , DESCRIP_CC='Ruta San Salvador 1.2.15' WHERE ID_RUTA='60';
-- UPDATE rutas SET COD_CC='751372' , DESCRIP_CC='Ruta San Salvador 1.2.16' WHERE ID_RUTA='61';
-- UPDATE rutas SET COD_CC='751373' , DESCRIP_CC='Ruta San Salvador 1.2.17' WHERE ID_RUTA='62';
-- UPDATE rutas SET COD_CC='751359' , DESCRIP_CC='Ruta San Salvador 1.2.18' WHERE ID_RUTA='63';
-- UPDATE rutas SET COD_CC='751374' , DESCRIP_CC='Ruta San Salvador 1.2.19' WHERE ID_RUTA='64';
-- UPDATE rutas SET COD_CC='751375' , DESCRIP_CC='Ruta San Salvador 1.2.20' WHERE ID_RUTA='65';
-- UPDATE rutas SET COD_CC='755003' , DESCRIP_CC='Ruta San Salvador 1.2.21' WHERE ID_RUTA='66';
-- UPDATE rutas SET COD_CC='755004' , DESCRIP_CC='Ruta San Salvador 1.2.22' WHERE ID_RUTA='67';
-- UPDATE rutas SET COD_CC='755005' , DESCRIP_CC='Ruta San Salvador 1.2.23' WHERE ID_RUTA='68';
-- UPDATE rutas SET COD_CC='755041' , DESCRIP_CC='Ruta San Salvador 1.2.25' WHERE ID_RUTA='69';
-- UPDATE rutas SET COD_CC='755042' , DESCRIP_CC='Ruta San Salvador 1.2.26' WHERE ID_RUTA='70';
-- UPDATE rutas SET COD_CC='751327' , DESCRIP_CC='Ruta San Salvador 1.2.27' WHERE ID_RUTA='71';
-- UPDATE rutas SET COD_CC='751361' , DESCRIP_CC='Ruta San Salvador 1.3.02' WHERE ID_RUTA='74';
-- UPDATE rutas SET COD_CC='751363' , DESCRIP_CC='Ruta San Salvador 1.3.04' WHERE ID_RUTA='75';
-- UPDATE rutas SET COD_CC='755028' , DESCRIP_CC='Ruta San Salvador 1.3.07' WHERE ID_RUTA='76';
-- UPDATE rutas SET COD_CC='755029' , DESCRIP_CC='Ruta San Salvador 1.3.08' WHERE ID_RUTA='77';
-- UPDATE rutas SET COD_CC='755037' , DESCRIP_CC='Ruta San Salvador 1.3.09' WHERE ID_RUTA='78';
-- UPDATE rutas SET COD_CC='751364' , DESCRIP_CC='Ruta San Salvador 1.4.01' WHERE ID_RUTA='79';
-- UPDATE rutas SET COD_CC='755026' , DESCRIP_CC='Ruta San Salvador 1.4.04' WHERE ID_RUTA='80';
-- UPDATE rutas SET COD_CC='755027' , DESCRIP_CC='Ruta San Salvador 1.4.05' WHERE ID_RUTA='81';
-- UPDATE rutas SET COD_CC='755030' , DESCRIP_CC='Ruta San Salvador 1.4.06' WHERE ID_RUTA='82';
-- UPDATE rutas SET COD_CC='755039' , DESCRIP_CC='Ruta Gudaff San Salvador 1.9.01' WHERE ID_RUTA='88';
-- UPDATE rutas SET COD_CC='755040' , DESCRIP_CC='Ruta Gudaff San Salvador 1.9.02' WHERE ID_RUTA='89';
-- UPDATE rutas SET COD_CC='751401' , DESCRIP_CC='Ruta San Miguel 2.1.01' WHERE ID_RUTA='91';
-- UPDATE rutas SET COD_CC='751402' , DESCRIP_CC='Ruta San Miguel 2.1.02' WHERE ID_RUTA='92';
-- UPDATE rutas SET COD_CC='751403' , DESCRIP_CC='Ruta San Miguel 2.1.03' WHERE ID_RUTA='93';
-- UPDATE rutas SET COD_CC='751404' , DESCRIP_CC='Ruta San Miguel 2.1.04' WHERE ID_RUTA='94';
-- UPDATE rutas SET COD_CC='751405' , DESCRIP_CC='Ruta San Miguel 2.1.05' WHERE ID_RUTA='95';
-- UPDATE rutas SET COD_CC='751406' , DESCRIP_CC='Ruta San Miguel 2.1.06' WHERE ID_RUTA='96';
-- UPDATE rutas SET COD_CC='751425' , DESCRIP_CC='Ruta San Miguel 2.1.07' WHERE ID_RUTA='97';
-- UPDATE rutas SET COD_CC='751407' , DESCRIP_CC='Ruta San Miguel 2.1.08' WHERE ID_RUTA='98';
-- UPDATE rutas SET COD_CC='751428' , DESCRIP_CC='Ruta San Miguel 2.1.09' WHERE ID_RUTA='99';
-- UPDATE rutas SET COD_CC='751437' , DESCRIP_CC='Ruta San Miguel 2.1.10' WHERE ID_RUTA='100';
-- UPDATE rutas SET COD_CC='751409' , DESCRIP_CC='Ruta San Miguel 2.2.02' WHERE ID_RUTA='101';
-- UPDATE rutas SET COD_CC='751410' , DESCRIP_CC='Ruta San Miguel 2.2.03' WHERE ID_RUTA='102';
-- UPDATE rutas SET COD_CC='751411' , DESCRIP_CC='Ruta San Miguel 2.2.04' WHERE ID_RUTA='103';
-- UPDATE rutas SET COD_CC='751412' , DESCRIP_CC='Ruta San Miguel 2.2.05' WHERE ID_RUTA='104';
-- UPDATE rutas SET COD_CC='751413' , DESCRIP_CC='Ruta San Miguel 2.2.06' WHERE ID_RUTA='105';
-- UPDATE rutas SET COD_CC='751415' , DESCRIP_CC='Ruta San Miguel 2.2.08' WHERE ID_RUTA='106';
-- UPDATE rutas SET COD_CC='751416' , DESCRIP_CC='Ruta San Miguel 2.2.09' WHERE ID_RUTA='107';
-- UPDATE rutas SET COD_CC='751417' , DESCRIP_CC='Ruta San Miguel 2.2.10' WHERE ID_RUTA='108';
-- UPDATE rutas SET COD_CC='751426' , DESCRIP_CC='Ruta San Miguel 2.2.12' WHERE ID_RUTA='109';
-- UPDATE rutas SET COD_CC='751427' , DESCRIP_CC='Ruta San Miguel 2.2.13' WHERE ID_RUTA='110';
-- UPDATE rutas SET COD_CC='751419' , DESCRIP_CC='Ruta San Miguel 2.2.14' WHERE ID_RUTA='111';
-- UPDATE rutas SET COD_CC='751429' , DESCRIP_CC='Ruta San Miguel 2.2.15' WHERE ID_RUTA='112';
-- UPDATE rutas SET COD_CC='751430' , DESCRIP_CC='Ruta San Miguel 2.2.16' WHERE ID_RUTA='113';
-- UPDATE rutas SET COD_CC='751441' , DESCRIP_CC='Ruta San Miguel 2.2.17' WHERE ID_RUTA='114';
-- UPDATE rutas SET COD_CC='751442' , DESCRIP_CC='Ruta San Miguel 2.2.18' WHERE ID_RUTA='115';
-- UPDATE rutas SET COD_CC='751444' , DESCRIP_CC='Ruta San Miguel 2.2.19' WHERE ID_RUTA='116';
-- UPDATE rutas SET COD_CC='751440' , DESCRIP_CC='Ruta San Miguel 2.3.03' WHERE ID_RUTA='118';
-- UPDATE rutas SET COD_CC='751423' , DESCRIP_CC='Ruta San Miguel 2.4.03' WHERE ID_RUTA='119';
-- UPDATE rutas SET COD_CC='751435' , DESCRIP_CC='Ruta San Miguel 2.4.04' WHERE ID_RUTA='120';
-- UPDATE rutas SET COD_CC='751438' , DESCRIP_CC='Ruta San Miguel 2.4.06' WHERE ID_RUTA='121';
-- UPDATE rutas SET COD_CC='751443' , DESCRIP_CC='Ruta Gudaff San Miguel 2.9.01' WHERE ID_RUTA='125';
-- UPDATE rutas SET COD_CC='751444' , DESCRIP_CC='Ruta Gudaff San Miguel 2.9.02' WHERE ID_RUTA='126';
-- UPDATE rutas SET COD_CC='751501' , DESCRIP_CC='Ruta Santa Ana 3.1.01' WHERE ID_RUTA='127';
-- UPDATE rutas SET COD_CC='751502' , DESCRIP_CC='Ruta Santa Ana 3.1.02' WHERE ID_RUTA='128';
-- UPDATE rutas SET COD_CC='751503' , DESCRIP_CC='Ruta Santa Ana 3.1.03' WHERE ID_RUTA='129';
-- UPDATE rutas SET COD_CC='751504' , DESCRIP_CC='Ruta Santa Ana 3.1.04' WHERE ID_RUTA='130';
-- UPDATE rutas SET COD_CC='751505' , DESCRIP_CC='Ruta Santa Ana 3.1.05' WHERE ID_RUTA='131';
-- UPDATE rutas SET COD_CC='751506' , DESCRIP_CC='Ruta Santa Ana 3.1.06' WHERE ID_RUTA='132';
-- UPDATE rutas SET COD_CC='751507' , DESCRIP_CC='Ruta Santa Ana 3.1.07' WHERE ID_RUTA='133';
-- UPDATE rutas SET COD_CC='751531' , DESCRIP_CC='Ruta Santa Ana 3.1.08' WHERE ID_RUTA='134';
-- UPDATE rutas SET COD_CC='751508' , DESCRIP_CC='Ruta Santa Ana 3.2.01' WHERE ID_RUTA='135';
-- UPDATE rutas SET COD_CC='751509' , DESCRIP_CC='Ruta Santa Ana 3.2.02' WHERE ID_RUTA='136';
-- UPDATE rutas SET COD_CC='751510' , DESCRIP_CC='Ruta Santa Ana 3.2.03' WHERE ID_RUTA='137';
-- UPDATE rutas SET COD_CC='751511' , DESCRIP_CC='Ruta Santa Ana 3.2.04' WHERE ID_RUTA='138';
-- UPDATE rutas SET COD_CC='751512' , DESCRIP_CC='Ruta Santa Ana 3.2.05' WHERE ID_RUTA='139';
-- UPDATE rutas SET COD_CC='751515' , DESCRIP_CC='Ruta Santa Ana 3.2.08' WHERE ID_RUTA='140';
-- UPDATE rutas SET COD_CC='751516' , DESCRIP_CC='Ruta Santa Ana 3.2.09' WHERE ID_RUTA='141';
-- UPDATE rutas SET COD_CC='751517' , DESCRIP_CC='Ruta Santa Ana 3.2.10' WHERE ID_RUTA='142';
-- UPDATE rutas SET COD_CC='751518' , DESCRIP_CC='Ruta Santa Ana 3.2.11' WHERE ID_RUTA='143';
-- UPDATE rutas SET COD_CC='751519' , DESCRIP_CC='Ruta Santa Ana 3.2.12' WHERE ID_RUTA='144';
-- UPDATE rutas SET COD_CC='751520' , DESCRIP_CC='Ruta Santa Ana 3.2.13' WHERE ID_RUTA='145';
-- UPDATE rutas SET COD_CC='751527' , DESCRIP_CC='Ruta Santa Ana 3.2.14' WHERE ID_RUTA='146';
-- UPDATE rutas SET COD_CC='751528' , DESCRIP_CC='Ruta Santa Ana 3.2.15' WHERE ID_RUTA='147';
-- UPDATE rutas SET COD_CC='751521' , DESCRIP_CC='Ruta Santa Ana 3.2.16' WHERE ID_RUTA='148';
-- UPDATE rutas SET COD_CC='751529' , DESCRIP_CC='Ruta Santa Ana 3.2.17' WHERE ID_RUTA='149';
-- UPDATE rutas SET COD_CC='751532' , DESCRIP_CC='Ruta Santa Ana 3.2.18' WHERE ID_RUTA='150';
-- UPDATE rutas SET COD_CC='751533' , DESCRIP_CC='Ruta Santa Ana 3.2.19' WHERE ID_RUTA='151';
-- UPDATE rutas SET COD_CC='751542' , DESCRIP_CC='Ruta Santa Ana 3.2.20' WHERE ID_RUTA='152';
-- UPDATE rutas SET COD_CC='751544' , DESCRIP_CC='Ruta Santa Ana 3.2.21' WHERE ID_RUTA='153';
-- UPDATE rutas SET COD_CC='751545' , DESCRIP_CC='Ruta Santa Ana 3.2.22' WHERE ID_RUTA='154';
-- UPDATE rutas SET COD_CC='751547' , DESCRIP_CC='Ruta Santa Ana 3.2.23' WHERE ID_RUTA='155';
-- UPDATE rutas SET COD_CC='751539' , DESCRIP_CC='Ruta Santa Ana 3.3.05' WHERE ID_RUTA='158';
-- UPDATE rutas SET COD_CC='751541' , DESCRIP_CC='Ruta Santa Ana 3.3.07' WHERE ID_RUTA='159';
-- UPDATE rutas SET COD_CC='751543' , DESCRIP_CC='Ruta Santa Ana 3.3.08' WHERE ID_RUTA='160';
-- UPDATE rutas SET COD_CC='751546' , DESCRIP_CC='Ruta Gudaff Santa Ana 3.9.01' WHERE ID_RUTA='163';
-- END ACTUALIZAR CENTROS DE COSTOS--



-- CONSULTA PDF ALTA Y BAJA SERIE--
-- select  bs.Id_pdf_baja_serie,a_mh.n_maquina , r.nombre_ruta , d.Nombre_Distribuidora, a_mh.n_resolucion,  a_mh.fecha_autorizacion, t.imei_telefono, bs.estatus,a_mh.n_resolucion_rt, m_c.Nombre_Marca,mo_c.nombre_Modelo,a_mh.software,a_mh.fecha_habilitacion, a_mh.cantidad_tk,a_mh.serie_autorizada
-- from baja_serie  as bs
-- inner join autorizaciones_mh as a_mh on bs.Id_autorizaciones=a_mh.Id_autorizaciones
-- inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
-- inner join marca_cell as m_c on t.Id_marca_cell=m_c.Id_marca_cell
-- inner join modelo_cell as mo_c on t.Id_modelo_cell=mo_c.Id_modelo_cell
-- inner join bitacora_entrega_celular as bec on t.Id_telefono=bec.Id_telefono 
-- inner join distribuidora as d on t.Id_Distribuidora=d.Id_Distribuidora
-- inner join rutas	as r	on bec.Id_ruta=r.Id_ruta
--  where  bs.estatus='BAJA'
--  order by bs.estatus desc;
-- CONSULTA PDF ALTA Y BAJA SERIE--


--  MOSTRAR TABLA CONSULTAR PDF ULTIMOS 10--

-- select r.Nombre_Ruta, bs.estatus,a_mh.n_maquina, bs.fecha_baja_alta ,bs.Id_pdf_baja_serie from baja_serie as bs
-- inner join autorizaciones_mh as a_mh on bs.Id_autorizaciones=a_mh.Id_autorizaciones
-- inner join telefonos as t on a_mh.Id_telefono=t.Id_telefono
-- inner join distribuidora as d on t.Id_Distribuidora=d.Id_Distribuidora
-- inner join bitacora_entrega_celular as bec on bec.Id_telefono=t.Id_telefono
-- inner join rutas as r on bec.Id_Ruta=r.Id_ruta
-- order by bs.Id_baja_serie desc
-- ;



--  MOSTRAR TABLA CONSULTAR PDF ULTIMOS 10--

create table alta_serie(
	Id_baja_serie int(7) zerofill not null auto_increment primary key,
	Id_autorizaciones int(7) zerofill not null,
	fecha_baja_alta date not null,
	estatus varchar(10) not null,
	Id_pdf_baja_serie datetime	not null,
	Id_u_sdv int(7) zerofill not null,
	fecha_registro datetime not null,
	foreign key (Id_autorizaciones) references autorizaciones_mh(Id_autorizaciones),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;



alter table baja_serie change Id_pdf_baja_serie Id_pdf_baja_serie varchar(50) not null;

alter table empleados change Id_distribuidora Id_distribuidora int(7) zerofill not null;
alter table empleados change Id_Canal Id_Canal int(7) zerofill not null;
alter table empleados change Id_Ruta Id_Ruta int(7) zerofill not null;

create table Marca_Impresoras(
	Id_marca_impresoras int(7) zerofill not null  auto_increment primary key,
	nombre_marca varchar(50)not null ,
	descripcion_marca varchar(100) not null,
	fecha_registro date not null,
	Id_distribuidora int(7) zerofill not null ,
	Id_u_sdv int(7) zerofill not null ,
	foreign key (Id_distribuidora) references distribuidora(Id_distribuidora),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv) 
)ENGINE=InnoDB;


create table Modelo_Impresoras(
	Id_modelo_impresoras int(7) zerofill not null  auto_increment primary key,
	nombre_modelo varchar(50)not null ,
	Id_marca_impresoras int(7)zerofill not null ,
	fecha_registro date not null,
	Id_distribuidora int(7) zerofill not null ,
	Id_u_sdv int(7) zerofill not null ,
	foreign key (Id_distribuidora) references distribuidora(Id_distribuidora),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv) ,
	foreign key (Id_marca_impresoras) references Marca_Impresoras(Id_marca_impresoras)
)ENGINE=InnoDB;

create table deducibles_impresoras(
	Id_deducible_impr int(7) zerofill not null auto_increment primary key,
	primera_ocasion double (4,2) not null,
	segunda_ocasion double(4,2) not null,
	tercera_ocasion double (4,2) not null,
	Id_modelo_impresoras int(7) zerofill not null,
	foreign key (Id_modelo_impresoras) references Modelo_Impresoras(Id_modelo_impresoras)  
)ENGINE=innoDB;

create table Impresoras(
	Id_Impresoras int(7) zerofill not null  auto_increment primary key,
	Id_marca_impresoras int(7) zerofill not null ,
	Id_modelo_impresoras int(7) zerofill not null,
	activo_fijo int(7) not null,
	n_serie varchar(50) not null,
	codigo_impresora varchar(10) not null,
	fecha_registro date not null,
	estado int(3) not null,
	estado_entrega int(2) not null,
	observacion varchar(25) not null,
	Id_distribuidora int(7) zerofill not null,
	Id_u_sdv int(7) zerofill not null,
	foreign key (Id_distribuidora) references distribuidora(Id_distribuidora),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv) ,
	foreign key (Id_marca_impresoras) references Marca_Impresoras(Id_marca_impresoras),
	foreign key (Id_modelo_impresoras) references Modelo_Impresoras(Id_modelo_impresoras)
)ENGINE=InnoDB;


-- -- Consultar impresoras-- 
-- select I.Id_impresoras,d.Nombre_Distribuidora,m_i.nombre_marca,m_o.nombre_modelo,I.activo_fijo,I.n_serie,I.codigo_impresora,i.estado from Impresoras as I
-- inner join Marca_Impresoras as m_i on I.Id_marca_impresoras=m_i.Id_marca_impresoras
-- inner join Modelo_Impresoras as m_o on I.Id_modelo_impresoras=m_o.Id_modelo_impresoras
-- inner join distribuidora as d on I.Id_Distribuidora=d.Id_Distribuidora
--  where I.Id_distribuidora="0000001";
-- -- 

create table Bitacora_entrega_impresora(
	Id_bit_entrega int(7) zerofill not null auto_increment primary key,
	Id_Impresoras int(7)zerofill not null,
	Id_Distribuidora int(7) zerofill not null,
	Id_Canal int(7) zerofill not null,
	Id_Ruta int(7) zerofill not null,
	Id_Empleados int(7) zerofill	 not null,
	Id_u_sdv int(7) zerofill not null,
	fecha_registro date not null,
	motivo_entrega varchar(30) not null,
	estado int (2) not null,
	Id_pdf_imp varchar(50) not null,
	foreign key (Id_Impresoras) references Impresoras(Id_Impresoras),
	foreign key (Id_Distribuidora) references distribuidora(Id_Distribuidora),
	foreign key (Id_Canal) references canal(Id_Canal),
	foreign key (Id_Ruta) references rutas(Id_Ruta),
	foreign key (Id_Empleados) references empleados(Id_Empleados),
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;


-- SELECT  r.Nombre_ruta , e.Nombre,mip.nombre_marca,mop.nombre_modelo,I.codigo_impresora, d.Nombre_Distribuidora,bei.motivo_entrega,bei.fecha_registro,bei.Id_pdf_imp from bitacora_entrega_impresora as bei 
-- inner join Impresoras as I on bei.Id_Impresoras=I.Id_Impresoras
-- inner join marca_impresoras as mip on I.Id_marca_impresoras=mip.Id_marca_impresoras
-- inner join modelo_impresoras as mop on I.Id_modelo_impresoras=mop.Id_modelo_impresoras
-- inner join distribuidora as d on bei.Id_Distribuidora=d.Id_Distribuidora
-- inner join canal as c on bei.Id_Canal=c.Id_Canal
-- inner join rutas as r on bei.Id_Ruta=r.Id_Ruta
-- inner join empleados as e on bei.Id_Empleados=e.Id_Empleados;



create table Historial_Entregas(
	Id_historial int(7) zerofill not null  auto_increment primary key,
	Motivo_Traspaso varchar(20) not null,
	fecha_registro date not null,
	estado int(2) not null,
	PB int(3) not null, 
	CU int(3) not null,
	VT int(3) not null,
	EP int(3) not null,
	EI int(3) not null,
	CT int(3) not null,
	CI int(3) not null,
	Observacion varchar(250) not null,
	Id_Distribuidora int(7) zerofill not null,
	Id_Canal int(7) zerofill not null,
	Id_Ruta int(7) zerofill not null,
	Id_Empleados int(7) zerofill not null ,
	Id_telefono int(7) zerofill not null,
	Id_Impresoras int(7) zerofill not null,
	Id_u_sdv int(7) zerofill not null,
	Id_PDF varchar(50) not null,
	foreign key (Id_Distribuidora) references distribuidora(Id_Distribuidora),
	foreign key (Id_Canal) references canal(Id_Canal),
	foreign key (Id_Ruta) references rutas(Id_Ruta),
	foreign key (Id_Empleados) references Empleados(Id_Empleados),
	foreign key (Id_telefono) references telefonos(Id_telefono),
	foreign key (Id_Impresoras) references Impresoras(Id_Impresoras)
)ENGINE=InnoDB;


-- --------------------------------------------------------
-- select * from (
-- select bec.Id_telefono as Id_Telefono,bec.estado as Estado,bec.Id_ruta as Ruta from bitacora_entrega_celular as bec
-- union all
-- select becno.Id_telefono as Id_Telefono,becno.estado as Estado, becno.Id_ruta as Ruta from bitacora_entrega_celular_noautorizado as becno )  TT
-- where Ruta=1 and Estado=1;

-- SELECT r.Nombre_Ruta, e.Nombre,he.fecha_registro,he.Id_PDF,he.estado,he.Motivo_Traspaso from Historial_Entregas as he
--                     inner join rutas as r on he.Id_Ruta=r.Id_Ruta
--                     inner join canal as c on he.Id_Canal=c.Id_Canal
--                     inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
--                     inner join empleados as e on he.Id_Empleados=e.Id_Empleados 
--                     where he.Id_u_sdv=1 and he.estado=1;
        
-- select r.Nombre_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora=1 and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, he.Id_PDF  
-- from Historial_Entregas as he
-- inner join rutas as r on he.Id_Ruta=r.Id_Ruta
-- inner join canal as c on he.Id_Canal=c.Id_Canal
-- inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
-- inner join empleados as e on he.Id_Empleados=e.Id_Empleados
-- inner join telefonos as t on  he.Id_telefono=t.Id_telefono
-- inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
-- inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
-- inner join autorizaciones_mh as mh on t.Id_telefono=mh.Id_telefono
-- inner join impresoras as i on he.Id_Impresoras=i.Id_Impresoras
-- inner join marca_impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
-- inner join modelo_impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
-- inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
-- inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
-- where he.Id_Ruta=1 and he.Estado=1;


-- select * from deducibles_impresoras;





-- SELECT mi.nombre_marca,
-- moi.nombre_modelo,
-- I.codigo_impresora,
-- r.cod_cc,
-- r.descrip_cc,
-- I.activo_fijo,
-- I.n_serie,
-- di.primera_ocasion,
-- he.estado,r.Nombre_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,d.Nombre_Distribuidora, 	,.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora=1 and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, he.Id_PDF  
--                     from Historial_Entregas as he
--                     inner join rutas as r on he.Id_Ruta=r.Id_Ruta
--                     inner join canal as c on he.Id_Canal=c.Id_Canal
--                     inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
--                     inner join empleados as e on he.Id_Empleados=e.Id_Empleados
--                     inner join telefonos as t on  he.Id_telefono=t.Id_telefono
--                     inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
--                     inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
--                     inner join autorizaciones_mh as mh on t.Id_telefono=mh.Id_telefono
--                     inner join impresoras as i on he.Id_Impresoras=i.Id_Impresoras
--                     inner join marca_impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
--                     inner join modelo_impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
--                     inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
--                     inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras 
--                  ;
                 
--                  select * from autorizaciones_mh;
                 
                 
                 
                 
--                  SELECT he.Id_historial,r.Nombre_Ruta, e.Nombre,he.fecha_registro,he.Id_PDF,he.estado,he.Motivo_Traspaso from Historial_Entregas as he
--                     inner join rutas as r on he.Id_Ruta=r.Id_Ruta
--                     inner join canal as c on he.Id_Canal=c.Id_Canal
--                     inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
--                     inner join empleados as e on he.Id_Empleados=e.Id_Empleados 
                   
--                     where he.Id_u_sdv='1' and he.estado=1
--                      order by he.Id_historial DESC;
                     
					
-- select  e.Nombre,e.Carnet,e.Cargo from historial_entregas as he
-- inner join empleados as e on he.Id_Empleados=e.Id_Empleados
-- where he.Id_Ruta=1 and he.estado=0
-- order by he.Id_historial DESC
-- limit 1;

-- SELECT * FROM historial_entregas;

-- INSERT INTO historial_entregas values (0,'VACACIONES','2020-04-16',1,0,0,1,1,0,1,0,'completo',1,2,74,100,57,20,1,'2020-04-16_00:'); 



--  SELECT r.Nombre_Ruta,he.Id_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,he.PB , he.CU ,he.VT,he.EP,he.EI,he.CT,he.CI,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, (select Nombre from Empleados where Id_Distribuidora="1" and Cargo="JEFE DE VENTA" and Estado=1) AS JEFE_DE_VENTA, mi.nombre_marca, moi.nombre_modelo,  i.codigo_impresora,i.activo_fijo,i.n_serie,di.primera_ocasion, he.Observacion,he.Id_PDF  
--                     from Historial_Entregas as he
--                     inner join rutas as r on he.Id_Ruta=r.Id_Ruta
--                     inner join canal as c on he.Id_Canal=c.Id_Canal
--                     inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
--                     inner join empleados as e on he.Id_Empleados=e.Id_Empleados
--                     inner join telefonos as t on  he.Id_telefono=t.Id_telefono
--                     inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
--                     inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
--                     inner join impresoras as i on he.Id_Impresoras=i.Id_Impresoras
--                     inner join marca_impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
--                     inner join modelo_impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
--                     inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
--                     inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
--                   WHERE he.Id_PDF="2020-04-16_21:24:17_0000099";
                  
                  
create table Informes(
	Id_Informe int(7) zerofill auto_increment not null primary key,
	nombre_informe varchar(25)not null ,
	fecha_registro datetime not null,
	fecha_actualizacion datetime not null,
	url_informe varchar(100) not null,
	Id_u_sdv int(7) zerofill not null ,
	foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv)
)ENGINE=InnoDB;

create table VENTA_DIARIA(
	Id_Inf_venta int(7) zerofill not null auto_increment  key,
	Ruta varchar(8) not null,
	Codigo varchar(15) not null,
	Cliente varchar(100) not null,
	Fecha date not null,
	No_Docto varchar(15) not null,
	Serie_Docto	varchar(100) not null,
	Estado varchar(10) not null,
	Vendedor varchar(10) not null,
	Total varchar(10) not null,
	Condicion varchar(20) not null,
	Nombre_Vendedor varchar(200) not null,
	FechaServer datetime not null,
	FechaMovil datetime not null,
	Latitud	varchar(50) not null,
	Longitud varchar(50) not null,
	Cantidad varchar(20) not null,
	CodigoProducto varchar(15) not null,
	Descripcion	varchar(200) not null,
	Precio varchar(10) not null,
	Venta varchar(10) not null,
	Familia	varchar(100) not null,
	SubFamila varchar(100) not null,
	SubSubFamilia varchar(100) not null,
	Categoria varchar(50) not null,
	Canal varchar(50) not null,
	Grupo varchar(50) not null,
	Distribuidora varchar(50) not null,
	División varchar(50) not null,
	Pais varchar(50) not null
)ENGINE=InnoDB;



select * from venta_diaria;

select Familia,sum(Total) as Total from venta_diaria group by Fecha;
select Descripcion , sum(total) as Total 
from venta_diaria
group by Descripcion 
order by Total desc
limit 10 ;
use sdvbocadeli;
describe Accesorios;


use sdvbocadeli;
DESCRIBE historial_entregas;


SELECT r.Nombre_Ruta,he.Id_Ruta,e.Nombre,e.Cargo,e.Carnet,e.Dui,he.PB , he.CU ,he.VT,he.EP,he.EI,he.CT,he.CI,d.Nombre_Distribuidora,he.fecha_registro,he.Motivo_Traspaso,r.telefono,r.sim_card,  r.cod_cc , r.descrip_cc , t.imei_telefono,t.activo_fijo, mo.nombre_Modelo,mc.Nombre_Marca,dt.primera_ocacion,dt.segunda_ocacion,dt.tercera_ocacion,di.primera_ocasion,di.segunda_ocasion,di.tercera_ocasion, mi.nombre_marca, moi.nombre_modelo,  i.codigo_impresora,i.activo_fijo,i.n_serie,di.primera_ocasion,mh.img_mh, he.Observacion,he.Id_PDF  
                from Historial_Entregas as he
                inner join rutas as r on he.Id_Ruta=r.Id_Ruta
                inner join canal as c on he.Id_Canal=c.Id_Canal
                inner join distribuidora as d on he.Id_Distribuidora=d.Id_Distribuidora
                inner join Empleados as e on he.Id_Empleados=e.Id_Empleados
                inner join telefonos as t on  he.Id_telefono=t.Id_telefono
                inner join marca_cell as mc on t.Id_marca_cell=mc.Id_marca_cell
                inner join modelo_cell as mo on t.Id_modelo_cell=mo.Id_modelo_cell
                inner join autorizaciones_mh as mh on t.Id_telefono=mh.Id_telefono
                inner join Impresoras as i on he.Id_Impresoras=i.Id_Impresoras
                inner join Marca_Impresoras as mi on i.Id_marca_impresoras=mi.Id_marca_impresoras
                inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
                inner join deducibles_telefonos as dt on mo.Id_modelo_cell=dt.Id_modelo_cell
                inner join deducibles_impresoras as di on moi.Id_modelo_impresoras=di.Id_modelo_impresoras
            WHERE he.Id_PDF="2020-07-8_16:25:47_0000360";
            select * from historial_entregas;
            
		select canal ,
				SUM(case when Canal = 'CLIENTE PREFERENCIAL DEPARTAMENTAL' AND Distribuidora ='SAN SALVADOR' then total end) as SS,
				SUM(case when Canal = 'DETALLE DEPARTAMENTAL' AND Distribuidora ='SANTA ANA'    then total end) as SA,
				SUM(case when Canal = 'DETALLE LOCAL' AND Distribuidora ='SONSONATE'    then total end) as SO,
				SUM(case when Canal = 'MAYOREO DEPARTAMENTAL' AND Distribuidora ='SAN MIGUEL'   then total end) as SM,
				SUM(case when Canal = 'MAYOREO LOCAL' AND Distribuidora ='CHALATENANGO' then total end) as CH
				from VENTA_DIARIA 
		 GROUP BY canal
		;
 SELECT	* FROM VENTA_DIARIA;
 
 
SELECT Distribuidora ,
        IFNULL(SUM(case when Canal = "CLIENTE PREFERENCIAL DEPARTAMENTAL"  then total end),0)  as cfd,
		 IFNULL(SUM(case when Canal = "DETALLE DEPARTAMENTAL"     then total end),0) as dd,
         IFNULL(SUM(case when Canal = "DETALLE LOCAL"     then total end),0)as dl,
         IFNULL(SUM(case when Canal = "MAYOREO DEPARTAMENTAL"   then total end),0) as md,
         IFNULL(SUM(case when Canal = "MAYOREO LOCAL"  then total end),0) as ml 
        from VENTA_DIARIA group by Distribuidora ORDER BY Distribuidora;
                
               SELECT Distribuidora , sum(total) as total from VENTA_DIARIA group by Distribuidora;
               
use sdvbocadeli;
select distribuidora, Canal ,sum(total) as Total from venta_diaria group by distribuidora,canal;               
               
    SELECT Distribuidora , Canal,
        IFNULL(SUM(case when Canal = "CLIENTE PREFERENCIAL DEPARTAMENTAL"  then total end),"")  as cfd,
		 IFNULL(SUM(case when Canal = "DETALLE DEPARTAMENTAL"     then total end),"") as dd,
         IFNULL(SUM(case when Canal = "DETALLE LOCAL"     then total end),"" )as dl,
         IFNULL(SUM(case when Canal = "MAYOREO DEPARTAMENTAL"   then total end),"") as md,
         IFNULL(SUM(case when Canal = "MAYOREO LOCAL"  then total end),"") as ml 
        from VENTA_DIARIA group by Distribuidora ORDER BY Distribuidora, Canal;
        
        
        
	SELECT Distribuidora,
        IFNULL(round(sum(case when Grupo="GRUPO 01" THEN TOTAL END ),2),0) AS "G1" ,
        IFNULL(round(sum(case when Grupo="GRUPO 02" THEN TOTAL END ),2),0) AS "G2" ,
        IFNULL(round(sum(case when Grupo="GRUPO 03" THEN TOTAL END ),2),0) AS "G3" ,
        IFNULL(round(sum(case when Grupo="GRUPO 04" THEN TOTAL END ),2),0) AS "G4" ,
        IFNULL(round(sum(case when Grupo="GRUPO 05" THEN TOTAL END ),2),0) AS "G5",
        IFNULL(round(sum(case when Grupo="GRUPO 06" THEN TOTAL END ),2),0) AS "G6" ,
        IFNULL(round(sum(case when Grupo="GRUPO 07" THEN TOTAL END ),2),0) AS "G7" ,
        IFNULL(round(sum(case when Grupo="GRUPO 08" THEN TOTAL END ),2),0) AS "G8" ,
        IFNULL(round(sum(case when Grupo="GRUPO 09" THEN TOTAL END ),2),0) AS "G9" ,
        IFNULL(round(sum(case when Grupo="GRUPO 10" THEN TOTAL END ),2),0) AS "G10" 
        from Venta_diaria group by Distribuidora;
        
        SELECT TRIM(SubFamilia) As name , round(sum(total),2) as value 
        from VENTA_DIARIA
        group by name 
        order by Total desc;
               
           
use sdvbocadeli;
Create table Clientes_impulsadoras(
Id_cli_imp int (7) zerofill not null auto_increment primary key,
Cod_cli int(15) not null ,
Nombre_cli varchar(70) not null ,
Direc_cli varchar(250) not null ,
Tel_cli varchar(20) not null ,
Contac_cli varchar(60) not null,
Estado_cli int(2) not null,
Latitud_cli float(4,4) not null,
Longitud_cli float ( 4,4) not null,
Id_ruta int (7) zerofill not null,
foreign key (Id_ruta) references rutas(Id_ruta)

);         

INSERT INTO Clientes_impulsadoras VALUES(0,'10005','ABARCA SIBRIAN MANUEL DE JESUS','6+ C. PTE. PJE. TORRES #11 SAN MARTIN','258-1901','TIENDA  SAN ANTONIO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30608','ABILIO FLORES VASQUEZ','1RA AV. NORTE Y8TA CALLE ORIENTE AHUCAHAPAN','2413-2853','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21311','ABNER BEZALEEL GUZMAN VARELA','ENTRADA A POLOROS','7267-8575','ESTACION DE SERVICIO POLOROS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13838','ABRAHAM GALILEO CASTILLO ALVARADO','BARRIO EL CENTRO 4A. AV. SUR # 14-2 LA LIBERTAD','23-46-24-40','TDA Y LUBRICANTES EL PACIFICO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10006','ABREGO ARTIGA JOSE ARAMIS','BO. LA CRUZ CALLE A LA FLORESTA OPICO LA LIBERTAD','341-4769','PLASTICOS RIVERAS','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10008','ABREGO DE PALACIOS MARIA PAZ','AVENIDA NICOLAS AGUILAR # 13OLOCUILTA','330-6019','TIENDA SANTA EDUVIGES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'12227','ACAASS DE R.L.','C. ANDRES MOLINS 1RA AV. NTE. SAN SEBASTIAN','2333-9168','ACAASS DE R.L.','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'13547','ACSA REBECA CRUZ MUÃ‘OZ','C. LA PLAZA MERCADO EL TIANGUE #520 SECTOR HOSPITAL COJUTEPE','7152-1144','CEREALES ACSA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21336','ADAN DE JESUS ARGUETA ARIAS','BO. EL CENTRO LISLIQUE FTE. A TELECOM LA UNION','79355985','TIENDA RAFAEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20014','ADILIA DEL CARMEN MARTINEZ DE MENDEZ','CALLE CHAPARRASTIQUE Y 7A AV. SUR 501','26604326','PRODUCTOS LACTEOS LA CAMPINA #3','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30576','ADRIANA MARIELA CHICAS DE PINEDA','E. 5TA Y 7TA C. PTE. AV. CARLOS R. CARIAS BO. DOLORES IZALCO','2453-6705','TIENDA YESENIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14373','AF SANTA FE  S.A. DE C.V.','KILOMETRO 64 1/2 CARRETERA A CHALATENANGO','NA','AF SANTA FE  S.A. DE C.V.','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'31202','AGENCIA EL PECHE MAGANA S.A DE C.V','FINAL C.LIBERTAD OTE.4 AV.NORTE B.EL CALVARIO','74103079','AGENCIA EL PECHE MAGAÑA S.A DE C.V','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10025','AGUILAR DE ARTIGA MARIA JULIA','CALLE PRINCIPAL # 5OLOCUILTA','330-6008','TIENDA Y ABARROTERIA JULITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14014','AGUILAR DEL MEJIA IRIS ANGELICA','KM 49 1/2 LOCAL 16 CANTON QUITASOL CASERIO EL COYOLITO','NA','SUPERMERCARDO EL ANGEL II','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10026','AGUILAR MALDONADO JOSE MANUEL','4+ CALLE OTE. #2','NA','TIENDA LA TRONCAL','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'31194','AGUILAR PINEDA MAURICIO JOSE','4 CALLE OTE.3 AV.NORTE BO.LAS ANIMAS # 15','24216048','TIENDA LA NUEVA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30886','AGUILAR PINEDA MONICA','5a. AV NORTE Y 4a. CALLE ORIENTE #19 CONTIGUO A DON POLLO','7218-6868','TIENDA SILVIA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31154','AGUILAR VALLE WILFREDO','1 CALLE PTE.Y 8 AV.SUR MERCADO CENTRAL LOCAL # 5','74755399','TIENDA GILBERTO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30819','AIDA ESTELA GARCIA DE RAMOS','CALLEJON GUZMAN 14/17C. PTE MERCADO COLON SANTA ANA','NA','TIENDA LA BENDICION DE DIOS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31183','ALARCON DE BURGOS CLAUDYA LIZZETE','PUESTO #32 Y 33 LOCAL #5 MERCADO CENTRAL FRT.NV.MILAGRO','78027590','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13983','ALAS DE FUENTES MARITZA DEL CARMEN','9A. AV. SUR DISTRITO COMERCIAL CENTRAL LOCAL 319-BIS','2221-6358','NUEVA TIENDA SAN JOSE','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14517','ALAS DE NIETO ROSA ESTELA','9 AV.SUR LOCAL # 319 BIS FRT.A PUNTO DE RUTA 33 B','79238074','TIENDA SAN MARTIN','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14126','ALAS GARCIA DOUGLAS ALEJANDRO','KM. 74 1/2 CARRETERA A CHALATENANGO CANTON ORATORIO','7013-4928','GASOLINERA UNO LAS MESAS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13958','ALBA BERNAL','BLVD.ORDEN DE MALTA SUR BLOCK A URB.STA ELENA#1 PQUE.IND.BOQ','2526-7700','ALBA PETROLEOS DE EL SALVADOR S.E.M. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13813','ALBA COJUTEPEQUE','CARRETERA PANAMERICANA KM. COJUTEPEQUE','NA','NH DISTRIBUIDORA GENERAL S.A. DE C.V.','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30754','ALBA MORENA PADILLA DE CARRANZA','MERCADO MPAL. C. EL CENTRO PUESTO EXTERIOR #6 CONCEP. ATACO','NA','PUESTO EXTERIOR #6','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14165','ALBA NEJAPA','CARRETERA A QUEZALTEPEQUE KM.23 POL.1','2399-7931','PEREZ TONY ALBERTO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14136','ALBA NEJAPA 2','CARRET.A QUEZALTEPEQUE KM.45 LOTIF.LAS AMERICAS POL/ LOTE#1','2399-8347','PROCURACION Y GESTION DE NEGOCIOS S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14445','ALBA SANTO TOMAS','CARRT.A COMALAPA KM.18 BO.LAS MERCEDES SANTO TOMAS','2220-9061','ALBA SANTO TOMAS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13516','ALBA TRONCAL DEL NORTE','CARR TRONCAL DEL NTE KM 10 1/2 CTON CALLE REAL CRIO LAS PILI','NA','PETROSERCHS S.A. DE C.V.','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'30010','ALBERTO ELIGIO ARDON','CIUDAD ARCE AV. MASFERRER LOCAL #8 FRENTE AL GORGOJO','NA','ALBERTO ELIGIO ARDON','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14545','ALCALDIA MUNICIPAL DE SOYAPANGO','1 AV.SUR Y CALLE ROOSEVELT PONIENTE','22517500','JUAN PABLO ALVAREZ','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'10037','ALDANA MORALES JORGE','1+ CALLE ORIENTE Y 2+ AVENIDA NORTE','NA','TIENDA YANIRA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10038','ALEGOS.A. DE C.V.','AV. ANASTACIO AQUINO BO. EL CENTRO SANTIAGO NONUALCO','NA','TIENDA Y DEPOSITO JOHANNA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21464','ALEJANDRO PAZ RAMOS','BO. EL CALVARIO Y 4TA C. PTE. SALIDA A CAROLINA C. BARRIOS','77988256','LACTEOS GETSEMANY','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'13566','ALESSANTIS.A. DE C.V.','3RA CALLE PTE. CARRT. A LITORAL LOTE 7 8Y 9 SAN LUIS TALPA','7749-6294','SUPER TALPA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30424','ALEX VICENTE MONGE VASQUEZ','PASEO 15 SEPTIEMBRE ANTIGUA TERMINAL','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14578','ALFARO BERNAL CLAUDIA ELIZABETH','11 AS Y 6 CALLE PONIENTE LOCAL B CONDMN.DEL CENTRO S.S','61816672','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'20751','ALFARO DE BENAVIDES NELLY ARMIDA','CALLE CHAPARRASTIQUE  410 LOCAL  3','26600959','TIENDA MARGARITA O CONFITERIA AMERICANA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21289','ALMA CLARIBEL GARCIA DE VASQUEZ','BO. EL RECREO SALIDA A PASAQUINA SANTA ROSA DE LIMA','72732847','TIENDA ALMA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10053','ALVARADO CASTILLO FELICITO SIGFREDO','BO. LOS DESAMPARADOS SALIDA A SENSUNTE 6TA AV. NTE. #7 ILOB','384-3316','TIENDA SIGFREDO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'31170','ALVARADO DE MACAL EVELYN IVETTE','19 C.PTE.Y 8A AV. SUR MERCADO COLON ATRAS DEL BAC.AGRICOLA','79288408','TIENDA ANGELITO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10054','ALVARADO DEL ANGEL ANA DELMY','1RA AV. NTE. FTE. AL MERCADO MUNICIPAL','389-2485','TIENDA SANTA ANA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'10057','ALVARENGA ARRIAGA LESVIA MARISOL','4T+ CLLE. OTE.Y AV. LIBERTAD','335-2442','ALMACEN EL BARATAZO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10058','ALVARENGA AZUCAR ELSA','CALLE PRINCIPALBO. EL CALVARIO # 132SAN LUIS LA HERRADUR','365-0036','MINITIENDA ELSY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30019','ALVAREZ DE DUARTE CLAUDIA SUSANA','PJE. GUZMAN # 33 16 AV. SUR ENTRE 15 Y 17 CALLE PTE.','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21808','ALVAREZ FUENTES CLAUDIA LIDIA','BARRIO CONCEPCION AVENIDA GERARDO BARRIOS','2665-8148','TIENDA DON SALVA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21686','ALVAREZ REYES FREDY ANTONIO','1A. AV. SUR NO.303 BARRIO LA MERCED','NA','COMERCIAL CLARITA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14188','ALVAREZ SANCHEZ JOSE NEIBER','MERCADO MUNICIPAL DE APOPA PUESTO INTERIOR #53','7457-9442','DULCERIA Y MAS','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'20943','ALVAREZ VASQUEZ SAMUEL','CALLE CHAPARRASTIQUE Y 3RA AV NTE #301','6610206','COMERCIAL MELVIN #4','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30810','ALVARO DE JESUS RAMIREZ ACEVEDO','1a. CALLE PTE. 4a. AV. SUR FTE A ESTACIONAMIENTO BOU SANTA A','NA','TIENDA EL SURTIDOR','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10060','ALVENO JULIO EDUARDO','1+ CALLE PONIENTE # 2COSTADO NORTE DEL MERCADO','216-0007','TIENDA ISIS','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21887','AMAYA DE GOMEZ ENA EDITH','BARRIO EL CENTRO CONTIGUO A IGLESIA CATOLICA','75056757','TIENDA ENA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'14079','AMAYA MONTANO JESUS NICOLAS','MERCADO MUNICIPAL #1 PUESTO INTERIOR #186','NA','NA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'20035','AMERTO ROMERO RIOS','BARRIO EL CENTRO POLOROS','26824056','TIENDA NELSY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13329','AMINTA MARIBEL ALVARADO GONZALEZ','AV. ALEJANDRO MORA BO. EL CEMTRO 500 MTS. AL SUR DE LA ESCU','7179-4177','CHALET MARIBEL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'20041','ANA AMINTA VENTURA DE FUENTES','SEGUNDA CALLE OTE Y SEGUNDA AV NORTE','6636474','TIENDA ISMERI','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13767','ANA CELIA ISABEL BERRIOS HERNANDEZ','AV. MANUEL GALLARDO L-5 SANTA TECLALA LIBERTAD','70-54-11-82','TIENDA ISABELITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21495','ANA CRISTINA GALO','JUCUAPA  USULUTAN','NA','SUPER GALO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21505','ANA CRISTINA GALO','BO.LA PARROQUIA FNAL CALLE GRIMALDI 12 A. NTE.CASA 1 USULUT','6623221','SUPER GALO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21506','ANA CRISTINA GALO','BO.LA PARROQUIA FNAL CALLE GRIMALDI 12 A. NTE.CASA 1 USULUT','26623221','TIENDA GALO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'20045','ANA CRISTINA GALO DE MENDOZA','FINAL CALLE GRIMALDI AV. NORTE N?12 USULUTAN','6623221','TIENDA GALO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'10079','ANA DEL CARMEN CRUZ CARRILLO','BARRIO EL CALVARIO CLLE. ANTIGUA A ROSARIO DE MORA PANCHIMAL','2299-4202','TIENDA SAGRADA FAMILIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10083','ANA DELMY BAUTISTA VASQUEZ','PJE. BINDER CONTIGUO LOCAL SONIA LOCAL # 5','7020-8630','TIENDA DELMY','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'12175','ANA DILIA NAVARRO','AV. ANASTACIO AQUINO BARRIO EL CENTRO','7913-9221','TIENDA HERNANDEZ','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21469','ANA LIDIA UMANA REYES','BO. EL CENTRO LISLIQUE LA UNION','75292593','AGRO TIENDA LISLIQUEÃ‘O','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10130','ANA MARISOL GUERRERO DE MAURICIO','CALLE DR. MIGUEL TORRES #3 MERCADO ZACATECOLUCAS','2334-4846','TIENDA ELIZABETH','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'20065','ANA RUTH RIVAS','2 CALLE PONIENTE  4','6278156','TIENDA Y AGROFERRETERIA EL BUEN AMIGO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14342','ANAYA DE HERNANDEZ YESENIA GUADALUPE','3MERCADO MAYORISTA LA TIENDONA EDIFICIO#7 PUESTO#218-219','7531-0066','ANAYA DE HERNANDEZ YESENIA GUADALUPE','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30027','ANDRES ARDON GUARDADO','AVENIDA MASFERRER BARRIO EL CENTRO #13 CIUDAD ARCE','2340-7669','TIENDA ANDRES','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21250','ANGEL ABRAHAM RAMIREZ MENDEZ','B. EL CENTRO POLOROS CONTIGUO A NINA HILDA POLOROS','72167815','TIENDA LEYBY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10153','ANGEL ISRAEL REYES GRANADOS','CL.EL BOQUERON PJE. H COL. JNES DEL VOLCAN #A-7 CDAD.MERLIOT','NA','SUPER KENY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21362','ANGEL MATEO HERNANDEZ VELASQUEZ','BARRIO EL CENTRO SALIDA A ESPARTA ANAMOROS','NA','SUPERTIENDA MATEO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20070','ANGEL PINEDA JOAQUIN','PRIMERA AV. NORTE  11 BARRIO LA PARROQUIA','6634225','DESPENSA EL ANGEL','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30862','ANGELA MIRIAN SANCHEZ DE CABRERA','DOLORES DE BRITO 9a. CALLE CTGUOA CASA DE LA CULTURA IZALC','NA','EL GRANITO FELIZ','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31190','APOLINARIO AILON MENDEZ','7A CALLE PONIENTE LOCAL #22 BO.VERACRUZ','NA','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30923','AQUINO GALICIA OSCAR DANIEL','PASEO 15 SEP COL.AMERICA#1 ESQUINA OPUESTA TERMINAL ANTIG.','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'10170','ARACELY MIRNA MEJIA','BARRIO SAN LUIS CALLE PPAL. #76 LA HERRADURA','2365-0754','TIENDA MIRNA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13995','ARAGON PLATERO ESTER ELIZABETH','MERCADO SAN MIGUELITO #319 ZONA B EX-COCTELAZO','7947-4079','BENDICION DE DIOS','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'31199','ARANA DE CAMPOS JUANA JULISSA','LOTE #3 12 CALLE Y CALLE HACIA ASHAPUCO','24132013','TIENDA JULISSA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13007','ARELY ELIZABETH GUEVARA QUIJADA','BO. EL CENTRO C.PPAL. SAN RAFAELCHALATENANGO','NA','NA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10175','AREVALO ANA ELIA','MERCADO CENTRAL EDIFICIO #5 LOCAL #211 SAN SALVADOR','273-9738','TIENDA AREVALO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'10177','AREVALO COREAS JOSE DAVID','AV INDEPENDENCIA #3 QUEZALTEPEQUE','305-3502','TIENDA DAVID','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20087','ARGELIA DEL CARMEN AYALA','3RA AV SUR 9','6630444','COMERCIAL ROXANA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13904','ARGUETA ARAGON ERNESTO','MERCADO EL TIANGUIS PUESTO #48 AL #51','7828-2867','TIENDA ERNESTO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21857','ARGUETA EDGAR WILSANDER','COL.LAS FLORES LOTE #2 CALLE PRINCIPAL','75887769','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'10178','ARIAS DE GARCIA AZUCENA MARISOL','6? CALLE PTE. # 7 PJE TORRES SAN MARTIN','296-5520','DISTRIBUIDORA BLANQUITA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30034','ARMANDO ADONAY CABEZAS HERNANDEZ','10a. Calle Oriente # 32 Entre 1ra Av. Norte y Calle Achapuco','2443-0492','TIENDA ANY','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21299','ARQUIMIDES ANTONIO CABEZAS SORTO','2DA CALLE OTE. Y 8TA. AV. SUR BARRIO EL CALVARIO SANTA ROSA','2641-4702','NA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20095','ARRIAZA RAMOS ROXANA ELIZABETH','CALLE PPAL TIERRA BLANCA  JIQULISCO','78607827','TIENDA ROXANA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'31203','ASENCIO AREVALO MARCO ERNESTO','CALLE SAN ANTONIO # 6-1 SONSONATE','NA','TIENDA ERNESTO','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31000','ASOC DE TRAB DE SERV PROF DE OCCIDENTE S.A. DE C.V.','FINAL CALLE LIBERTAD PTE. PARQUE IND.SANTA LUCIA FAB.IMACASA','NA','ATSPRO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21305','ATILIO ALVAREZ GUTIERREZ','CALLE CHAPARRASTIQUE 415 SAN MIGUEL','77405049','COMERCIAL MARVIN #1','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21317','ATILIO ALVAREZ GUTIERREZ','FRENTE A METROCENTRO','NA','TIENDA MARVIN # 12','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10193','AVICOLA SALVADOREÃ‘A  S.A. DE C.V.','KM 7.5 BLVD DEL EJERCITO NACIONAL SOYAPANGO','2202-1000','AVICOLA SALVADOREÃ‘A  S.A. DE C.V.','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30949','AYALA ESCAMILLA FERNANDO JAVIER','AVENIDA 2 DE ABRIL #2-4B','6131-6885','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31148','AYALA RAMOS RONALD ENRIQUE','CALLE A PUENTE ARCE CONTIGUO A BAZAR HERNANDEZ CARASUCIA','71399347','SUPER 99 DARWIN','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31175','AYALA SAMAYOA CARLOS ALEXANDER','17 AVENIDA SUR Y 19 CALLE PONEIENTE SANTA ANA','75272451','TIENDA LA SANTANECA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30948','AYALA TORRES OSCAR ALEXANDER','CALLE PRINCIPAL FRENTA A TIENDA EL ARADO COATEPEQUE','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14144','BARRERA CORDOVA JOSE LUIS','CALLE PRINCIPAL BARRIO EL CENTRO CASA#40','6112-5134','CALLE PRINCIPAL BARRIO EL CENTRO CASA#40','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10197','BARRERA CUELLAR DOUGLAS ANIBAL','AVENIDA RAUL CONTRETRAS # 6  FTE. A TELECOM','372-0731','TIENDA NORMA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13927','BARRERA DE ARGUETA CRUZ','BARRIO EL CENTRO','7798-8718','NA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'20103','BAUTISTA LEMUS EDNA MIRTALINA','PJE 4 MERCADO MUNICIPAL','6653160','TIENDA SANTIAGO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'20109','BENITEZ BENITEZ ELEUTERIO','C. AL CEMENTERIO  ANTG RUTA MILITAR  Bo LAS DELICIAS ST ROSA','2664-2158','TIENDA ROSSY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20957','BENITEZ VDA. DE VASQUEZ SANTOS ESTELA','BARRIO LAS DELICIAS  CALLE AL CEMENTERIO','2641-4181','COMERCIAL LOS DOS HERMANOS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30042','BERNAL RIVAS ANGEL GUSTAVO','CALLEJON GUZMAN PTE. ENTRE 14 Y 16 AV SUR LOCAL 2-B','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14280','BLANCA ESTELA TICAS MEJIA','AV. JUAN MANUEL RODRIGUEZ BARRIO EL CENTRO','NA','TIENDA BLANQUITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21413','BLANCA LIDIA CHICAS DE CID','SANTIAGO DE MARIA CALLE PPAL. A 50 MTS. DE LA D. FAMILIAR','NA','TIENDA BLANQUI','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21309','BLANCA LIDIA MEDINA VDA. DE CANALES','BO. EL CALVARIO 5TA. C. PTE. 16 CIUDAD BARRIOS SAN MIGUEL','75584365','TIENDA MARLIN','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21892','BLANCO BERCIAN JHENI','MERCADO CENTRAL 2 NIVEL LOCAL C-14','72950403','DULCERIA JENI','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14321','BLANCO MORALES SALOMON EUGENIO','4A.CALLE OTE. #6 BARRIO SANTA BARBARA','2382-4180','TIENDA DOUGLAS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13984','BOLAÃ‘OS LOPEZ MANUEL DE JESUS','2A. CALLE PONIENTE FRENTE A COMEDOR PACITA','NA','NA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20124','BONILLA ALFARO SA DE CV','C. AL CEMENTERIO BO LAS DELICIAS ST ROSA  LA UNION','26412314','COMERCIAL BONILLA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21742','BONILLA CANAS ISAIAS','CALLE PRINCIPAL BARRIO SANTA ANA #15','NA','TIENDA JOSE','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21858','BONILLA DE HENRIQUEZ SANDRA PATRICIA','COL.EL MANGO CALLE PRINCIPAL RUTA MILITAR','NA','TIENDA EMANUEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13899','BONILLA SANCHEZ THELMA ALEXANDRA','COLONIA SAN ANTONIO AV LA REYNA PJE 8 #4','NA','NA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'12348','BORIS ALEXANDER CANALES ANGULO','CARRT. PANAM. KM 18 1/2 CASA 1 FTE. A EX IRA SAN MARTIN','NA','TIENDA  MARIA AUXILIADORA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10243','BRIGIDA TERESA VILLALTA FLORES','CALLE 1RA DE JULIO Y 49 AV. SUR #20 SAN VICENTE','393-0609','SUPER TIENDA ROSITA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21143','BRIZUELA CUEVA  S.A. DE C.V.','1RA AV. SUR 2-4 BO. EL CENTRO COSTADO OTE. M.P. LA UNION','NA','COMERCIAL IDALIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21732','BRIZUELA GUTIERREZ JOSE RAUL','1a. AV. SUR #1-2 FRENTE A FARMACIA BRAZIL','NA','COMERCIAL BRIZUELA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10250','CAÃ‘ENGUES AURELIA CRISTINA','AV. ALBERTO MASFERRERBO. EL CENTROSN RAFAEL OBRAJUELO','362-3034','TIENDA MARICELITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14038','CACERES CASTRO BLANCA LISSETH','KM 18 CARRETERA DE ORO LOCAL ANTIGUA GASOLINERA TEXACO','NA','TIENDA LISSETH','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13507','CAFETERIA KIMBERLY CLARK','KM 27 1/2 CARRETERA A SONSONATE PARQUE INDUSTRIAL SARAM','7883-9739','INVERSIONES ALIMENTICIAS S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31207','CALEL BATEN ENCARNACION','2 AV.SUR BO.EL CENTRO LOCAL # 1 FRT.A VARIEDADES G Y M','75129879','TIENDA SAN PEDRANO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'20132','CALIX ESMERALDA ORELLANA MENDEZ DE HERNANDEZ','4TA CALLE PTE Y 1A. AV NORTE  7','NA','TIENDA ESMERALDA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13956','CALLES DE CARTAGENA CANDIDA CRISTINA','BARRIO EL CALVARIO 164-BIS GUAZAPA SAN SALVADOR','2214-5729','TIENDA CRISTY','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21695','CANALES BENITEZ HECTOR ANTONIO','BARRIO EL CENTRO','NA','NA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'14322','CAnAS JOSE ANTONIO','1A. AVENIDA NORTE Y CALLE DR. MIGUEL MONGE','NA','TIENDA SAN ANTONIO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10320','CANJURA FERNANDEZ MANUEL DE JESUS','1R+ CALLE PTE. Y 2D+ AV. FTE A LA ALCALDIA TONACATEPEQUE','322-0214','TIENDADA SAN NICOLAS','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'31209','CANO DE GONZALES KARLA PATRICIA','10A CALLE PONIENTE Y PASAJE CARCAMO','24430362','TIENDA FABIOLA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10322','CARCAMO DE AGUILAR ANABEL','5TA. AV. SUR #8 BIS SAN VICENTE','393-6046','TIENDA XIOMARA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21774','CARCAMO TURCIOS JUANA ISABEL','CALLE GIRON Y 6a. AV. SUR BARRIO EL RECREO','7508-0514','TIENDA ISABEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14133','CARIAS ORTEGA SAMUEL ENOC','AV. ESPANA MERCADO SAN MIGUELITO #890','2226-1934','TIENDA DON MIGUELITO','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30907','CARIAS PERLA DINORA MIGDALIA','MERCADO CENTRAL PUESTO#7 PORTON#3','NA','TIENDA DINORA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'12351','CARLOS ADALBERTO DIAZ','STA. CRUZ MICHAPA CTGO. A FERRETE. STA. CRUZ COJUTEPEQUE','NA','DEPOSITO EL OASIS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13559','CARLOS ALBERTO JOVEL APARICIO','COSTADO OTE. MERCADO NUEVO CTG. A BAC. SAN MARTIN','NA','TIENDA #2 JEHOVA JIREHT','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20149','CARLOS CALIXTO HERNANDEZ GOMEZ','BO. EL CENTRO  CONTIGUO BCO CUSCATLAN','NA','TIENDA GOMEZ','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30066','CARLOS DAVID GARCIA ALVARENGA','3av. Sur y 6 Calle Poniente Barrio Veracruz','NA','Deposito de Pepsi','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30692','CARLOS MANUEL BARILLAS PALACIOS','3RA CALLE PONIENTE Y 10 AV. NORTE BO. SAN JOSE #11 APANECA','2433-0790','TIENDA DE CONVENIENCIALA $NA.99','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13890','CARLOS PLATERO MARTINEZ','MERCADO LA TIENDONA EDIFICIO #7 LOCAL 2-17','NA','DULCERIA MARIA JOSE','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'13191','CARLOS VALENTIN HERRERA GARCIA','7MA AV. SUR SAN JUAN DE DIOS #9 FTE. A IGLESIA ADVENTISTA','2323-3340','DISTRIBUIDORA PROBASIC','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'10337','CARMEN GARCIA','AV. SIMON BOLIVARNO.21','NA','TIENDA CARMEN','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10343','CAROLINA DE GALDAMEZ','AV. DUEÂ­AS #4 BARRIO EL CENTRO SAN JUAN OPICO','2331-3171','TIENDA YENNY','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'14149','CARRILLO GUZMAN JUAN ANTONIO','8A.CALLE ORIENTE BARRIO EL CENTRO #14','2334-0521','TIENDA EL SOCORRO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14579','CARTAGENA MARTINEZ ARACELI CAROLINA','AV. DUENAS #4 BARRIO EL CENTRO SAN JUAN OPICO','60662574','TIENDA YENNY','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10352','CASTELLANO DE CEPEDA MARIA CELESTINA','CALLE PPAL  POR CEIBITA ILOBASCO','332-2353','TIENDA CRISTI','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13946','CASTILLO DE CHAVEZ ROSA ODILIA','BARRIO SAN JUAN AV RAFAEL CABRERA CASA#23','NA','TIENDA SOFYMIN','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14400','CASTILLO DE HERNANDEZ AMY IVETTE','CALLE GERARDO BARRIOS Y EDIFICIO SUYAPA 9NA. AV. SUR','2100-1482','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'10354','CASTRO GRANADOS LUIS ENRIQUE','COSTADO NORTE MERCADO MUNICIPAL SANTA TECLA#106','288-4580','NA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21645','CASTRO SALINAS JOSE ADALBERTO','FRENTE A MERCADO MUNICIPAL','NA','LACTEOS EL JOCOREÃ‘O','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21489','CECILIA ARELY FUENTES PARADA','ESQUINA OPUESTA A LA LORENA CENTRO SAN MIGUEL','NA','MINI SUPER','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10357','CECILIA ELIZABETH MELGAR DE ALVARENGA','3AV. NTE #9 BO. EL CENTRO NUEVA CONCEPCION CHALATENANGO','2306-7441','COMERCIAL ALVARENGA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13347','CECILIA EVELIN VENTURA DE ANGEL','AV. CARLOS BONILLA FRENTE A ACOBI DE R.L. ILOBASCO','7571-4500','NA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13098','CELIA ZULIANA PUERTA TEJADA','KM 14 1/2 CARRET. #19  APULO COL. VISTA HERMOSA','NA','TIENDA EL BUEN PRECIO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10381','CESAR RUBEN ARGUETA HERNANDEZ','METRO COM. APOPA C. SAN RAFAEL #13','216-8280','MINI SUPER TERE','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10384','CHACON CHACON JESUS BERARDO','BO. EL CENTRO AGUA CAL. C. LA RONDA','7206-7854','TIENDA YAMILETH','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10386','CHAMORRO VICTORIA ALICIA','MERCADO MPAL. PUESTO EXT. #21','310-2931','TIENDA LINITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20179','CHAVEZ GRANADOS RAFAEL ALEXANDER','CALLE PPAL AV ROSENDO VASQUEZ 32','6650401','TIENDA ROSMERY','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21772','CHAVEZ PERLA MANUEL ISAAC','BARRIO EL CENTRO FRENTE AL PARQUE','NA','0','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'10391','CHEVEZ DE TOBAR CLARA LUZ','1+ CALLE ORIENTE # 13-BLA LIBERTAD','335-3373','TIENDA Y VARIEDADES KARLITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21822','CHICAS FUENTES TERESA DE JESUS','AVENIDA MORAZAN # 3 BARRIO EL CALVARIO FTE ALMACENES BOMBA','72736968','CHICAS FUENTES TERESA DE JESUS','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30080','CHINCHILLA FRANKLIN','AV. CENTRAL SUR CALLE TOMAS REGALADO #12 TURIN','NA','TIENDA LUPITA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14040','CHINCHILLA LOPEZ MARIA GERTRUDIS','AV. CUSCATLAN / 8A.CALLE PONIENTE EX-BANCO PROCREDIT','7724-1933','DULCERIA KIMBERLY','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30082','CLAROS MENDOZA BLANCA ESTELA','MERCADO MUNICIPAL PUESTO #13-14 CONTIGUO A PORTON CENTRAL','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13164','CLAUDIA ARELY PEÃ‘A CRUZ','PJE. EL MANGO MERCADO TIANGUE DE COJUTEPEQUE','NA','TIENDA Y CEREALES CLAUDIA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'12035','CLAUDIA CAROLINA ORTEGA MEJIA','MERCADO LA TIENDONA EDIF. 7 SAN SALVADOR','NA','TIENDA CLAUDIA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30669','CLAUDIA ELIZABETH VASQUEZ RIVERA','COL. LIZY JOSEFINA FRENTE A TERMINAL NUEVA SONSONATE','NA','VENTA DE GRANOS BASICOS Y AZUCAR JORDY','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'10403','CLAUDIA MARIA VILLEGAS','PUESTO INTERIOR DEL MDO. MPAL. DE SAN VICENTE #47','7010-4044','TIENDA CLAUDIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'10406','CLAUDIA MARISOL ESPERANZA TORRES','CALLE PRINCIPALFTE. MERCADO MUNICIPAL','NA','TIENDA CARMENCITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30085','CLAUDIA ROXANA FLORES DE ALVARADO','SONSONATE','2452-1143','TIENDA FABIOLA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14060','COEKIMSA DE R.L.','KM. 33 1/2 CARRETERA A SAN JUAN OPICO CANTON SITIO DEL NINO','2319-3891','AMILCAR NESTOR MAURICIO GARCIA RAMIREZ','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21836','COLATO DE CAMPOS MIRNA ROXANA','DENTRO DE PARQUEO MUNICIPAL ESQUINA OPUESTA TDA.LESLY','NA','.','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21815','COMERCIAL RIVERA','COL.CHAPARRASTIQUE CONTIGUO A BODEGAS DE BOCADELI','73188394','MONTES AYALA SIRO FRANKLIN','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13403','COMITE DE FESTEJOS ALCALDIA DE SOYAPANGO','CALLE ROOSEVELT EX COLEGIO ALBERT EISTEIN SOYAPANGO','2251-7563','COMITE DE FESTEJOS ALCALDIA DE SOYAPANGO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'31164','COMPANIA LICORERA DE SANTA ANA S.A DE C.V','9A AV. SUR BARRIO SANTA CRUZ # 25','NA','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'12315','CONSUELO NOHEMY HERNANDEZ RIVAS','KM 18 1/2 CARRT. PANAMERICANA FTE. A EX IRA SAN MARTIN','NA','DEPOSITOS Y VTA. DE CEREALES DON JUAN','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'31034','CONTRERAS ANDRADE YOSELIN LIZETH','COL. EL ZAPOTE LOTE #1 2a.CALLE PONIENTE 3a./5a. AV. SUR.','NA','TIENDA EL PROGRESO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20191','CONTRERAS MANUEL ANTONIO','BARRIO EL CENTRO #61 PRINCIPAL NUEVA GUADALUPE','613-0093','VILMA DE CONTRERAS','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30896','CORADO RIVAS ARELY CLARIBEL','RANCHADOR VALLE NUEVO SANTA ANA','NA','TIENDA ARELY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13674','CORINA MARGARITA SOSA MENDEZ','CARRT. A SANTA ANA KM 22 1/2 DESVIO A LOURDES COLON L. LIBER','23-18-94-73','NA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10423','CORNEJO CARLOS RENE','5TA. AV. #5 BIS MERCADO MUNICIPAL SAN VICENTE','393-2631','TIENDA ERICK','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14020','CORNEJO VALLADARES JOSE LUIS','PLAZA SOYAPANGO 2A. ETAPA CONTIGUO A PASARELA','7655-3694','TIENDA ALEXANDRA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'31195','CORTEZ GAMERO MAURICIOABERTO','URB.EL COCAL POLG.B CASA #8 FTE.A CEIBA','71907166','TIENDA SANTA LUCIA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14568','CORTEZ PINEDA ANGEL ANTONIO','AVENIDA INDEPENDENCIA # 17 QUEZALTEPEQUE','23104059','CEREALES DON LITO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21716','CRUZ AYALA ISRAEL ANTONIO','1A.CALLE PTE. 1A.AV. SUR LOCAL 202 BARRIO LA MERCED','NA','COMERCIAL CRUZ','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14091','CRUZ CARRILLO VICTOR RAFAEL','CALLE AL RASTRO BARRIO EL CALVARIO FRENTE AL RASTRO','6138-8390','TIENDA SAGRADA FAMILIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21823','CRUZ SANTOS JOSE TIBURCIO','CALLE PRINCIPAL FRONTERA EL AMATILLO','74334024','TIENDA LA GRAN BODEGA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30779','DALILA EMELI LINARES RUIZ','MERCADO #1 PUESTO INTERIOR #31 AHUACHAPAN','NA','DALILA EMELI LINARES RUIZ','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21659','DAVID ALBERTO RAMOS','CALLE PRINCIPAL 50 MTS. AL SUR DESVIO TIERRA BLANCA','NA','COMERCIAL RAMOS','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30583','DAVID AROLDO PORTILLO MARTINEZ','FINAL AV. FRANCISCO MENENDEZ AHUACHAPAN','2417-6103','TDA. ANDREA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30292','DAYSI CHICAS OLIVARES','BARRIO EL CALVARIO FRENTE A OFICINA DE CENTA','4174312','TIENDA GERALDINA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10446','DE AMAYA EVELYN LISETH','PUESTO EN LA C. 5TA AV. SUR PEGADO A FARMACIA STA. FE S. VIC','NA','TIENDA EVELIN','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'10447','DE AYALA AVALOS ALTAGRACIA','1RA AV. NTE. #2-3 LOURDES','338-4063','TIENDA CAROLINA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10455','DE FLORES LOPEZ MARTHA LIDIA','MERCADO MUNICIPAL PUESTO # 127N.N.S.S.','228-3828','TIENDA TITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10460','DE LA CRUZ DE BERDUGO SILVIA','AV. RAUL CONTRERAS COJUTEPEQUE','372-0058','TIENDA.LA MILAGROSA  #6','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10461','DE LARA VASQUEZ MARIA LUISA','MERCADO MUNICIPAL PUESTO # 84','288-4387','TIENDA LARA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10463','DE LEON CORNEJO DAVID','SEGUNDA CALLE PPAL. #B BO. CONCEPCION TEPECOYO LA LIBERTAD','338-9223','TIENDA ROSITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'14057','DE PAUL SIBRIAN LUIS ALBERTO','BARRIO EL CENTRO 1A. AV. SUR FRENTE AL PARQUE','7157-5942','TIENDA Y CIBER ARCANGEL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10467','DE QUIJADA MEJIA YANET MARITZA','6TA. CALLE PTE. #6 AGUILARES','331-4078','TIENDA GABY','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10469','DE RODRIGUEZ CARRILLO LEYLA ELIZABETH','1+ AV. NORTE #9 ZACATECOLUCA','334-0246','TIENDA EL SOCORRRITO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10471','DE RODRIGUEZ RODRIGUEZ ANA LILIAN','AV. 14 DE DICIEMBRE #18 TECOLUCA','362-4053','TIENDADIVINA PROVIDENCIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10473','DE SORTO CRISTINA','4TA. AV. NTE. #6 FTE AL MERCADO TONACATEPEQUE','747-6662','TIENDAMI PREFERIDA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10476','DE TRIGUEROS ORTIZ LIDUVINA','BO. EL CARMEN #2 C. PPAL DULCE NOMBRE DE MARIA','356-9266','EL BARATILLO #2','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'30741','DELIA MARISOL GUTIERREZ','FINAL CALLE 15 DE SEPTIEMBRE METAPAN','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30799','DELMY BEATRIZ MUNGUIA DE BENITEZ','C. EL CENTRO PANCHO LARA CTGO. FARMACIA UNIVERSAL','7833-5510','DELMY BEATRIZ MUNGUIA DE BENITEZ','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13836','DELMY DEL CARMEN GARCIA RAMIREZ','BARRIO CONCEPCION NO.7','2102-4618','TIENDA SAN DIEGO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20209','DELMY MARIBEL SANTOS','BARRIO EL CONVENTO OCTAVA AV. SUR 126','6412582','TIENDA DELMY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30613','DENIS ANDRES MAGAÃ‘A MAGAÃ‘A','16 AV. SUR ENTRE 15 Y 17 CALLE PONIENTE PJE GUZMAN','NA','TIENDA LESLIE','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10489','DERAS ALBERTO MARIA HILDA','3RA. CALLE OTE.18 AVBO EL CALVARIO CHALATENANGO','301-0428','TIENDA SILVIA #2','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14052','DERAS DE TEJADA ESMERALDA ELIZABETH','6A.CALLE PTE. BARRIO EL CENTRO #1310 FRENTE AL PARQUE','2335-7153','CORAZON DE JESUS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10491','DERAS PALACIOS BLADIMIR ALBERTO','1+ AV. NTE Y 6+ C. OTE. BO. EL CENTRO #13 ZACATECOLUCA','844-1160','TIENDA KATHERINE','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21473','DEYSI ARACELI FUENTES CRUZ','BO. EL CENTRO FRENTE A LA IGLESIA POLOROS LA UNION','26824090','TIENDA SAN CARLOS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14556','DIALCA  S.A. DE C.V.','LOT.NVO.COYOLITO PLG.B LOTE 1 CARRT.TROCL DEL NORTE KM 49','2356-0230','MIRNA ZULEYMA LANDAVERDE DE ALAS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14557','DIALCA  S.A. DE C.V.','CARRET.TRONCAL.DEL NORTE KM 51 PLAZA AMAYO','23094412','NELSON ALEXANDER DIAZ CHAVARRIA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'12304','DIALCAS.A. DE C.V.','AV. CENTRAL S/N BARRIO EL CENTRO FTE A PLACA COM. EL PARAISO','2356-0230','EL BARATILLO SAN ANTONIO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'12306','DIALCAS.A. DE C.V.','CARRET. TRONCAL DEL NORTE KM 46.1/2 EL COYOLITO','NA','BARATILLO SAN ANTONIO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13539','DIALCAS.A. DE C.V.','BARRIO EL CENTRO AV. EL COMERCIO #6 GUAZAPA','NA','BARATILLO SAN ANTONIO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10496','DIANA KARLOTA ZELAYA','C.AUTOPISTA FTE.ATDA. ISABEL PUESTO #12 MERCADO LA HERRA','2365-0757','TIENDA DIANA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'12273','DIARFU S.A. DE C.V.','BO. EL CENTRO COMERCIAL FTE. AL PARQUE SAN RAFAEL CHALATENAN','NA','DESPENSA DE SAN RAFAEL','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10498','DIAZ DE ARIAS MERCEDES EMPERATRIZ','CALLE PPAL. SAN LUIS LA HERRADURA','365-0014','TIENDAMERCEDES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10499','DIAZ DE AYALA AGUSTINA','PJE. ARISTIDES ROBLE COSTADO SUR MDO. MPAL BO. EL CENTRO S.','330-4879','TIENDA LOS HERMANOS','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31147','DIAZ ESCOBAR MIRNA ELIZABETH','CALLE PUENTE ARCE CONTIGUO A SUB ESTACION METALIO','70684046','EL SUNZA 99','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'10500','DIAZ HERNANDEZ DOLORES','PJE. TORRES #9 SAN MARTIN','258-0276','EL SINAI','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10497','DIAZ HERNANDEZ MERCEDES','BOULEVARD SAN BARTOLO #18 RESIDENCIAL VALLE DE SAN BARTOLO','295-0519','TIENDA HERNANDEZ','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'14078','DIAZ JIRON MIRNA CELINA','4A. AV. SUR Y 6A. CALLE ORIENTE BARRIO SAN JUAN','7389-0869','TIENDA CELINITA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14395','DIAZ PANAMENO DOMINGA MARISOL','1a. CALLE PONIENTE PLAZA EL SOL','22604014','TIENDA PANAMEÑO','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'21478','DIGNA CONCEPCION REYES','CALLE CHAPARRASTIQUE 309 SAN MIGUEL','NA','LACTEOS REYES','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13849','DIHARE  S.A. DE C.V.','1A. C. ORIENTE BO. LOS REMEDIOS LOCAL 9 SENSUNTEPEQUE  CABAÃ‘','NA','DIHARE  S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13136','DIHARE S.A. DE C.V.','1RA C. OTE. Y 3RA NTE. LOCAL 2-0 FTE. A. VIDUC STA. TECLA','2228-7906','DIHARE S.A. DE C.V.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10503','DIHARES.A. DE C.V.','CALLE MORAZAN BO. EL CENTRO FTE. AL POLLO CAMPERO CHALATENAN','2335-2775','SUPER EL BARATILLO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10504','DIHARES.A. DE C.V.','1RA AV. NORTE #2 BO. EL CENTRO NUEVA CONCEPCION','2306-8517','SUPER EL BARATILLO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10505','DIHARES.A. DE C.V.','CALLE MORAZAN BOEL CENTRO #1 CHALATENANGO','2335-2775','SUPER EL BARATILLO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14088','DIHARES.A. DE C.V.','COLONIA VERACRUZ ENTRADA A CHALATENANGO','2335-2770','GASOLINERA UNO CHALATENANGO II','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'20217','DILIA IRMA TORRES DE RIVERA','SEGUNDA CALLE OTE. 2-2 LA UNION','604-4905','COMERCIAL TORRES','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13291','DINA JANNETTE DIAZ SARAVIA','CALLE ROOSEVELT Y 6TA AV. SUR #35 SOYAPANGO','NA','DULCERIA EBEN EZER','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13249','DINORA DEL CARMEN HERNANDEZ DE ESCOBAR','MDO. MUNICIPAL SEGUNDO PABELLON #148 SOYAPANGO','NA','SNAP SHOCK','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'12121','DINORA ROJAS DE REYES','4TA C. PTE. Y 5TA AV. SUR #31 BO. SAN JUAN DE DIOS SAN VICEN','7729-9137','DISTRIBUIDORA Y TIENDA DINORA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21494','DISTRIBUIDORA COMERCIAL MELENDEZ','10 AV SUR COL. SANTA ROSA NO.3 USULUTAN  USULUTAN','26240142','DISTRIBUIDORA COMERCIAL MELENDEZ SALVADOREÃ‘A','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14584','DISTRIBUIDORA CUSCATLAN S.A DE C.V','4 AV.NORTE #1-7 FRTE.A CLINICA E IGLESIA INMACULADA CONCEPCN','NA','DISTRIBUIDORA CUSCATLAN S.A DE C.V','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20222','DISTRIBUIDORA ROSITA  S.A. DE C.V.','1RA AVENIDA SUR BARRIO EL CENTRO ANAMOROS LA UNION','26470048','DISTRIBUIDORA ROSITA  S.A. DE C.V.','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11729','DISTRIBUIDORA RUIZ ROMEROS.A. DE C.V.','C. SAN RAFAEL #6 METRO COMERCIAL FRENTE A PNC APOPA','216-5572','DISTRIBUIDORA RUIZ ROMEROS.A. DE C.V.','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'14036','DISTRIBUIDORA SALVADORENAS.A. DE C.V.','FINAL AV. SAN MARTIN #4-7 ENTRE 6A. Y 8A. CALLE ORIENTE','2241-0468','DISAL','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'14569','DIVE S.A DE C.V','7 AV.NORTE Y 3 CALLE ORIENTE FRENTE AL CAFETALON','25596000','MARTA ALICIA ROMERO GUZMAN','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13770','DLC ALTOS DE LA ESCALON','PROLONG. AV ALBERTO MASFERRER Y CALLE A SN ANTONIO ABAD S.S','7210-1471','DISTRIBUIDORA DE LUBRICANTES Y COMBUSTIBLES S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13724','DLC LA JOYA','KM 29 1/2 DESVIO A SAN JUAN OPICO LOTIFICACION SANTA MARTA','2319-3567','DISTRIBUIDORA DE LUBRICANTES Y COMBUSTIBLES S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13667','DLC MONTELIMAR','KM 23 1/2 CARRET. A COMALAPA MONTELIMAR OLOCUILTA','2268-5500','DISTRIBUIDORA DE LUBRICANTES Y COMBUSTIBLES S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13362','DORA ALICIA GUZMAN MEDRANO','MERCADO MCPAL. STA. LUCIA #3C. PPAL. X SUPER SELECTOS ILOPAN','2279-6814','TIENDA ALICIA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'12212','DORA ALICIA HERNANDEZ GUEVARA','CRRT. PANAMER. FRENTE A EX IRA POR LA PASARELA SAN MARTIN','NA','VENTA DE CEREALES KARIN','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10528','DORA ELSY CHAVEZ','MERCADO LA TIENDONA PORTON 2 PUESTO #300 SAN SALVADOR','2286-7324','TIENDA ELSY','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'13851','DORA YANERI ROMERO DE ALVARADO','C. PPAL. BO. EL CENTRO FTE A MERCADO. SAN RAFAEL OBRAJUELO','NA','TIENDA ROXY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30601','DORIS ANTONIA FUNES DE PORTILLO','17 C. PAL. ENTRE 14 Y 16 AV SUR #125 MERCADO COLON SANTA ANA','7265-7698','TDA. DORIS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30702','DOUGLAS EDGARDOPAZ ORANTES','3TA CALLE PONIENTE BO. TALUTE CASA #11 -85 ATIQUIZAYA','NA','TIENDA LOS ALMENDROS','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10541','DURAN DIAZ AGUILINA LILIAN','3RA AV. NORTE #4 BO.SAN SEBASTIAN POR LA CEIBITA ILOBASCO','332-9091','TIENDA LILIAN','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30678','EDITH AMINTA RAMIREZ DE HERRERA','1ER CALLE PTE. COSTADO NORTE DEL MERCADO METAPAN #1','NA','TIENDA KAREN','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30202','EDITH ELIZABETH CASTRO DE ALVAREZ','CALLE LIBERTAD PJE 19 ENTRE 4 Y 6 AV. NTE SANTA ANA','2447-0283','TIENDA LOS ANGELES','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30513','EDWIN ALEXI CRUZ ZELAYA','8A AV. SUR ENTRE 17 Y 19 CALLE PTE. Â·73 MERCADO COLON','7476-9852','AGENCIA ALEXIS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10559','EDWIN ANTONIO CORDOVA BARAHONA','CONDOMINIOS SAN MARTIN #108','NA','TIENDA EDWIN','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21449','EDWIN ANTONIO COTO BENAVIDES','BARRIO EL CALVARIO SAN RAFEL ORIENTE SAN MIGUEL','NA','TIENDA BENAVIDES','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30767','EDWIN ESAU MONROY','PRIMER NIVEL PUESTO #8 MERCADO #1','NA','TDA. EDWIN','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30719','EL NUEVO MILAGRO S.A. DE C.V.','10 AV. SUR ENTRE 17 Y 19 CALLE ORIENTE #65 SANTA ANA','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31139','EL NUEVO MILAGRO SUCURSAL CARASUCIA','CARASUCIA CALLE PRINCIPAL FRENTE A D.F.','NA','ZALDAÑA GOMEZ JUAN CARLOS','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13066','EL NUEVO MILAGROS.A. DE C.V.','AV. SAN MARTIN #2-3','2228-3129','EL NUEVO MILAGROS.A. DE C.V.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13100','EL NUEVO MILAGROS.A. DE C.V.','RESD. BOSQUEZ DE STA. TERESA EL AMATE BLOCK 14 LOURDES','NA','EL NUEVO MILAGROS.A. DE C.V.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13973','EL NUEVO MILAGROS.A. DE C.V.','2A. CALLE ORIENTE #2-7','2288-6209','NA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30617','EL NUEVO MILAGROS.A. DE C.V.','1RA AV. SUR Y 4-C PTE. BAR. VERACRUZ N 2-7 SONSONATE','2451-3407','EL NUEVO MILAGROS.A. DE C.V.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13638','ELENILSONINTERIANO CASTILLO','2DA CALLE BO. EL CENTRO #2 B1 SAN JUAN OPICO','2341-3342','SUPERMERCADOLA MIGUELEÃ‘A','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10602','ELIAZAR WINER AREVALO RUIZ','4TA AV. NORTE LOCAL 13-1 PUERTO DE LA LIBERTAD','NA','TIENDA ELIAZAR','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'12398','ELMER ALEXANDER PALACIOS RIVAS','1RA AV. SUR BO. SAN JUAN DE DIOS #8 SAN VICENTE','NA','SUPERMERCADO','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21261','ELMER ANTONIO BONILLA CAÃ‘AS','1RA C. PTE. BO. SANTA ANA #24 CHAPELTIQUE SAN MIGUEL','2618-2615','TIENDA EMMANUEL','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21458','ELMER FRANCISCO HERNANDEZ CARCAMO','8VA. AVENIDA SUR BO. EL RECREO SALIDA A PASAQUINA STA. ROSA','NA','TIENDA HERNANDEZ','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13305','ELMER RODOLFO ALVAREZ RIVAS','CENTRO COMERCIAL SAN MARTIN PJE 1 LOCAL 10 SAN MARTIN','NA','TIENDA  LOS 3 HERMANOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13746','ELMER SIGFREDO ORELLANA LOPEZ','CENTRO COMERCIAL LA UNION LOCAL 18-G SAN SALVADOR','74-06-59-11','ELMER SIGFREDO ORELLANA LOPEZ','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21139','ELSA GUDELIA LEIVA DE SANTOS','BARRIO EL CENTRO','26824067','TIENDA PATRICIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20257','ELSY  VIDAL DE RODRIGUEZ','OCTAVA AVENIDA SUR  4','6621115','TIENDA ELSY','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21265','ELVIA DINORA GOMEZ DE ARGUETA','2DA AV. NTE Y 3RA C. BARRIO EL CALVARIO SAN FRANCISCO GOTERA','26543193','TDA. EDENILSON','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30628','ELVIS GERSON MARTINEZ GUARDADO','PJE. GUZMAN 16 AV. SUR ENTRE 15 Y 19 C. PTE. SANTA ANA','7244-8454','TIENDA MERXY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13052','EMILIA DEL TRANSITO MERINO DE ALVARENGA','CARRT. LITORAL KM 42 CTON. SAN JOSE OBRAJUELO STGO. NONUALCO','NA','TIENDASANTA LUCIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13077','EMILIA JORGE BARRERA','12 CALLE PTE. #495 SAN SALVADOR','7635-9294','CEREALES EL MILAGRO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14428','ENERGIA ORGANICA  S.A. DE C.V.','KM. 40 CARRETERA A SAN JUAN OPICO','NA','MINI SUPER SAN JUAN OPICO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30671','ENEYDA ARACELY QUINTANILLA DE GALDAMEZ','17 CALLE PTE. ENTRE 14 Y 16 AV. SUR BO. SAN SEBASTIAN #125','NA','TIENDA LISBETH','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'12258','ENMA VASQUEZ DE LOPEZ','8TA. CALLE OTE. #26 BO. SAN JUAN FRENTE AL PENAL COJUTEPEQUE','NA','TIENDA  TERESITA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30863','ERIBERTO MACAL','CALLE 2 DE FEBRERO Y 2a. AV NTE Bo. SN JOSE CAND DE LA FRONT','NA','BUEN PRECIO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30638','ERIC ALBERTO RIVERA GARCIA','BO. EL CENTRO AV. CUSCATLAN TACUBA','7990-3000','ERIC ALBERTO RIVERA GARCIA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'12973','ERIKA XIOMARA AGUILAR CARCAMO','5TA AV. SUR BO. SAN JUAN DE DIOS CASA 7 SAN VICENTE','NA','TIENDA AGUILAR','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'10631','ESCALANTE DE RODAS JUANA ISABEL','AV. EL PROGRESO BO. EL CENTRO STGO. NONUALCO','330-4047','DEPOSITO LOURDES #2','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14004','ESCALANTE MORAN CARLOS HUMBERTO','AVENIDA EL PROGRESO BARRIO EL CENTRO','7683-3111','DEPOSITO LOURDES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30127','ESCAMILLA DE SALES DINA CORALIA','FINAL 2 DE ABRIL FRENTE AL MERCADO MUNICIPAL #1','443-1798','TIENDA DINAS','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30980','ESCOBAR AYALA JOSE CARLOS','CALLE PTE.ARCE CALLE A SN.JOSE EL NARANJO CRIO.EL CEIBILLO','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14189','ESCOBAR DE CASTILLO FLOR MARELY','DESVIO A COMALAPA FRENTE A GASOLINERA PUMA','7870-2230','DESVIO A COMALAPA FRENTE A GASOLINERA PUMA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14186','ESCOBAR DE TORRES MARIA SARA','1A. AV. SUR #2 CONTIGUO A ACADEMIA RUTH POR LA PLUMA','NA','TIENDA LA BENDICION','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10634','ESCOBAR ESCOBAR RAMON','1RA AV. NTE. #8 ILOBASCO','384-2474','ESCOBAR ESCOBAR RAMON','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'31109','ESCOBAR GARCIA DAYANNA VERENICE','AV 2 DE ABRIL NORTE # 7 BARRIO EL CALVARIO','63071792','PUESTO CHAPIN','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13996','ESCOBAR GUEVARA JOSE SALVADOR','1A. CALLE ORIENTE','NA','N','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'10636','ESCOBAR PEÂ­A MONICO','INTERIOR MERCADO MUNICIPAL ILOBASCO','NA','REGALITO DE DIOS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30129','ESCOBAR VELASQUEZ EUGENIO','COATEPEQUE FRENTE A PASARELA CALLE PRINCIPAL A SANTA ANA','NA','TIENDA Y AGROSERVICIO EL BUFALO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31018','ESCOBAR VELASQUEZ NERI EDUARDO','4a. CALLE PONIENTE No.1-2 BARRIO VERACRUZ','2451-6814','TIENDA MARIA LUISA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13137','ESMERALDA CAROLINA RIVAS HERNANDEZ','3RA C. PTE. Y 1RA AV. SUR DESPUES DE LA TDA. MARTINEZ ILOBAS','NA','NA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14519','ESPINOZA GOMEZ SANTIAGO EMILIO','ENTRADA PRINCIPAL MERCADO MUNICIPAL SAN LUIS LA HERRADURA','71538645','TIENDA SANTIAGO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'20285','EUCEDA VILLATORO HILDA MARLENY','BO EL CENTRO POLOROS','6824070','TIENDA MARLENY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20287','EUGENIA GUADALUPE MENDOZA DE AYALA','SANTIAGO DE MARIA','6106598','TIENDA JOSUE','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'12165','EVA MARIA ESTRADA SORTO','2DA AV. SUR LOCAL #6 SAN MARTIN','2258-7607','TIENDA EVITA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14012','FARELA DE ANDRADE CECILIA','MERC. MPAL. DE SOYAPANGO PORTON #1 PABELLON #10 PUESTO #126','NA','TIENDA CECI','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'14118','FARMACIA BEETHOVEN PASEO','PASEO GENERAL ESCALON COL.ESCALON #4715 EDIFICIO BELEN','2523-0206','FARMACIA BEETHOVEN S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14480','FARMACIA SAN NICOLAS 75 AV. NORTE','CENTRO COM.ESCALON 2 LOCAL 1-1 1-2 PRIMER NIVEL','NA','FARMACIA SAN NICOLAS 75 AV. NORTE','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14486','FARMACIA SAN NICOLAS ANTIGUO','CENTRO COM. MAQUILISHUAT LOCAL 4 C. CUSCATLAN OTE.Y PSJ 4.','NA','FARMACIA SAN NICOLÁS ANTIGUO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14482','FARMACIA SAN NICOLAS CHILTIUPAN','URB. JARDINES DEL VOLCAN CALLE CHILTIUPAN. POLIGONO E-1 #28','NA','FARMACIA SAN NICOLAS CHILTIUPAN','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14472','FARMACIA SAN NICOLAS CONSTITUCION','BOULEVARD CONSTITUCION Y CALLE EL ALGODON # 5','NA','FARMACIA SAN NICOLAS CONSTITUCION','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14460','FARMACIA SAN NICOLAS ESCALON','99 AV NTE. PASEO GENRL ESCALON PLAZA VLLA VISCENCIO LOCAL1-9','NA','FARMACIA SAN NICOLAS ESCALON','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14506','FARMACIA SAN NICOLAS HOSP.MUJER','81 AV. SUR Y CALLE JUAN JOSE CANAS #123-A S.S.','NA','FARMACIA SAN NICOLAS HOSP.MUJER','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14505','FARMACIA SAN NICOLAS LA JOYA','C. COM. LA JOYA MARQUET PLACE LOCAL #49 KM 12 CARRET PUERTO','NA','FARMACIA SAN NICOLAS LA JOYA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14494','FARMACIA SAN NICOLAS LAS CASCADAS','AV. JERUSALEM LOCAL 110 CENTRO. COMERCIAL. LAS CASCADAS','NA','FARMACIA SAN NICOLÁS LAS CASCADAS','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14490','FARMACIA SAN NICOLAS LAS PALMAS','CENTRO COM.LAS PALMAS CARRT.AL PUERTO KM 12 1/2 LOCAL-14','NA','FARMACIA SAN NICOLÁS LAS PALMAS','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14493','FARMACIA SAN NICOLAS LOMA LINDA','C. ANTIGUO A HUIZUCAR PSJ. SAN FERNAND.FRENT.GASOLNR.TEXACO','NA','FARMACIA SAN NICOLAS LOMA LINDA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14475','FARMACIA SAN NICOLAS LOMAS DE SAN FRANCISCO','RESIDENCIAL LOMA LINDA CALLE CIRCUNVALACION-52 B-1 ZONA 14','NA','FARMACIA SAN NICOLAS LOMAS DE SAN FRANCISCO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14485','FARMACIA SAN NICOLAS LOURDES','LOCAL COMERCIAL ENTRE 2A. AV SUR Y 4A. CALLE ORIENTE LOURDES','NA','FARMACIA SAN NICOLAS LOURDES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14491','FARMACIA SAN NICOLAS LUCEIRO','AV. MASFERRER NORTE REDONDEL LUCEIRO #162-B','NA','FARMACIA SAN NICOLAS LUCEIRO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14466','FARMACIA SAN NICOLAS MERLIOT','BOULV MERLIOT Y C. LA CANADA ZONA COMER3 JDNES DE LA HACIEND','NA','FARMACIA SAN NICOLAS MERLIOT','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14477','FARMACIA SAN NICOLAS PASEO','77 AV.SUR#3939 PASEO GENERAL ESCALON FRENTE A FUENTES BETHOV','NA','FARMACIA SAN NICOLAS PASEO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14484','FARMACIA SAN NICOLAS SANTA ELENA','FINAl BOULEVARD ORDEN DE MALTA CARRT. AL PUERT DE LA LIBERTA','NA','FARMACIA SAN NICOLAS SANTA ELENA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14465','FARMACIA SAN NICOLAS SANTA TECLA','2A. CALLE PONIENTE L 1-13 FRENTE A PARQUE DANIEL HDEZ','NA','FARMACIA SAN NICOLAS SANTA TECLA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14492','FARMACIA SAN NICOLAS UNICENTRO LOURDES','CARRT.SANTA ANA KM 24 1/2 C.C. UNICENTRO LOURDES LOCAL G-7','NA','FARMACIA SAN NICOLAS UNICENTRO LOURDES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14452','FARMACIAS ECONOMICAS GALERIAS','LOCAL #311 TERCER NIVEL CENTRO COMERCIAL GALERIAS','2223-1918','ROXANA EUGENIA MEICHE PERAZA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14571','FARMACIAS ECONOMICAS LA GRAN VIA','CENTRO COMERCIAL LA GRAN VIA LOCAL 111 CARRT.SANTA TECLA','22644961','GABRIELA MARIA CAMPOS HERNANDEZ','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14451','FARMACIAS ECONOMICAS SANTO TOMAS','CONTRO COMERCIAL SANTO TOMAS KM.18 CARRT.A COMALAPA','2411-1685','NA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14453','FARMACIAS ECONOMICAS SUCURSAL EL PASEO','PASEO GENERAL ESCALON #4355-A SAN SALVADOR','2264-4961','ROSA ARMIDA CANALES DE BATREZ','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13620','FARMACIAS UNO ANTIGUO CUSCATLAN','C. C. NUEVA PLAZA ORLEANS LOCAL 2 ANTIGUO CUSCATLAN','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13625','FARMACIAS UNO CENTRO COMERCIAL EL PASEO','C.C. PASEO 77 AV. SUR Y CALLE JUAN JOSE CANAS LOCAL #20 S.S.','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13616','FARMACIAS UNO CONSTITUCION','BO. CONSITUCION Y CALLE LONDRES #12 COL. MIRADOR SAN SAL','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13617','FARMACIAS UNO GRAN VIA','CENTRO COMERCIAL GRAN VIA MERLIOT SANTA TECLA','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13611','FARMACIAS UNO LA GLORIA','BLVD. CONSTITUCION Y CALLE Y RESD. LA GLORIA LOCAL 1 Y 2 MEJ','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13607','FARMACIAS UNO LAS CASCADAS','C. COMERCIAL LAS CASCADAS C. A SANTA TECLA Y AV. JERUSALEN','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13614','FARMACIAS UNO LOMA LINDA','CALLE ANTG. A HUIZUCAR LOCAL. "C" Y "B" #C-37 SAN SALVADOR','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13610','FARMACIAS UNO LUCEIRO','C. EL MIRADOR Y AV. MASFERRER NORTE #14-116 COL. ESCALON','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13615','FARMACIAS UNO MACHU PICHU','EDIF. MERLIOT GARDEN PLAZA # 1 CUIDAD MERLIOT','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14442','FARMACIAS UNO MALL SAN GABRIEL','KM.19 CARRET.QUEZALTEPEQUE MALL SAN GABRIEL LOCAL F10-F11','2281-6103','MARIO ALBERTO RAMIREZ','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13621','FARMACIAS UNO MIRALVALLE','B. CONSTITUCION #2-B COL. MIRALVALLE CONTG.SUPERSELECTOS','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13604','FARMACIAS UNO PASEO','PASEO GENERAL ESCALON #4349 SAN SALVADOR','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13892','FARMACIAS UNO PLAZA BORBON','LOTES 1 Y 2 ZONA COMERCIAL 2.C-NUEVE URB.JARDINES DEL VOLCAN','2525-2429','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13608','FARMACIAS UNO SAN ANTONIO ABAD','BLVD. CONSTITUCION # 12 COL. MIRALVALLE SAN SALVADOR','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13624','FARMACIAS UNO SANTA TECLA (PORTAL)','AV. SAN MARTIN 2DA C. OTE #1-2 SANTA TECLA','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13618','FARMACIAS UNO SANTA TERESA','17 AV. NORTE #17 RESD. SANTA TERESA CIUDAD MERLIOT','NA','FARMACIAS UNO S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21288','FATIMA GEORGINA SORTO DE CRESPO','2DA  CALLE PONIENTE BO. CONCEPCION LOCAL 3 STGO. DE MARIA','26631912','TIENDA LA PROVIDENCIA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13023','FEDRO RIVERA GUARDADO','C. EL. CEMENTERIO #178 CTGO.  AL MCDO. CENTRAL BO. EL CALVAR','7143-9538','FEDRO RIVERA GUARDADO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'12361','FELICITA AYALA DE SALAZAR','PJE. BINDER SAN MARTIN MERCADO MAPL. SAN MARTIN','NA','DULCERIA AYALA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20305','FIDELINA ALEMAN DE PEREZ','1RA AV NTE 6 BARRIO CONCEPCION','6630216','COMERCIAL JOSE JOSE','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10682','FIGUEROA DINORA ANGELICA','AVENIDA CASTROMORAN Y 1+ CALLE ORIENTE # 2MEJICANOS','282-4781','TIENDA ABIGAIL','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'14303','FIGUEROA MARTINEZ NORMA YANETH','2A.CALLE PONIENTE CONTIGUO A BANCO AGRICOLA','7747-9403','LA CACHADA DONA LUCIA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30899','FIGUEROA QUIJADA ROSA','4a. AV SUR Y CALLE 15 SEPTIEMBRE #2','NA','TIENDA PIOQUINTO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10683','FIGUEROA RODRIGUEZ MIGUEL ALONSO','BO.EL CENTRO 1RA AV. SUR #180 N. CONCEPCION','335-7165','COMERCIAL FIGUEROA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13439','FLOR DE MARIA ARRAZOLA DE MARINERO','8VA. AV. NORTE BO. EL CALVARIO #6 SAN VICENTE','2393-1816','FLORIMAR','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21658','FLOR DE MARIA FLORES','BARRIO EL CENTRO FRENTE A MERCADO','NA','TIENDA LA BENDICION','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21593','FLOR DE MARIA SARAVIA','CALLE CHAPARRASTIQUE Y 3A. AV NORTE SAN MIGUEL','NA','FLOR DE MARIA SARAVIA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10690','FLOR MARLENE GUARDADO GUARDADO','CALLE TRONCAL DEL NORTE KM 49 1/2 CTON. EL COYOLITO TEJUTLA','2309-5967','SUPERTIENDA LA BENDICION','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'30971','FLORES ARRIAZA ABILIO ENRIQUE','CARRETERA INTERNACIONAL BARRIO SAN SEBASTIAN','2413-3049','.','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21661','FLORES GARCIA TERESA DE JESUS','AVENIDA GUSTAVO GUERRERO','NA','NA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30131','FLORES JERONIMO JORGE MARGARITO','2 C. OTE ENTRE 3 Y 5 AV NTE BARRIO LAS ANIMAS #28','2444-0071','MINI SUPER KELVIN','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30133','FLORES MENDEZ ALEX ALONZO','3ER. AV. SUR #4ARMENIA','452-1107','TIENDA ALEX','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21884','FLORES RAMON ANTONIO','6A CALLE PONIENTE # 2 FTE. A LINEA FERREA','71905768','.','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21855','FLORES VASQUEZ MATIAS MARTIR','BARRIO LA MERCED 3A CALLE PONIENTE','75486777','.','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14538','FLORES VIANA VERONICA ESMERALDA','AV.JOSE M.CASTRO FTE.A ALCALDIA QUETZALTEPEQUE','23997102','SUPER 99','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20320','FRANCISCA CONCEPCION DIAZ DE BONILLA','PRIMERA AV. NORTE Y TERCERA CALLE PTE. BARRIO EL CENTRO','6470082','TIENDA MARTITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21355','FRANCISCO JAVIER ALVAREZ REYES','BARRIO EL CENTRO  1 CUADRA AL ORIENTE DE LA GASOLINERA','NA','TDA. SIN NOMBRE','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13735','FRANCISCO JAVIER PORTILLO TRIGUEROS','KM 22 1/2 AUTOPISTA DE ORO 200 MTS. AL PTE.RED. SOYAPANGO','NA','DIPCO SOYAPANGO  CARRETERA DE ORO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21838','FRANCO DE MORAN NUBIA DEL CARMEN','AV.GERARDO BARRIOS  IGLESIA BAUTISTA SESORI SAN MIGUEL','79643452','TIENDA NUBIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31005','FREDI ANTONIO MENENDEZ SALAZAR','4A CALLE ORIENTE AVENIDA 2 DE ABRIL Y 1A AVENIDA NORTE A UNA CUADRA DE LA TERMINAL CHALCHUAPA. SANTA ANA.','NA','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'12990','FREDIS ADALBERTO ESCOBAR RODRIGUEZ','6A. CALLE PONIENTE Y 3A AV. SUR BARRIO EL CENTRO','2306-8126','TIENDA MULTIVENTAS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14409','FRUTAS Y VERDURAS MELANY  S.A. DE C.V.','CALLE QUEZALTEPEQUE COL.BUENOS AIRES #406 FTE.VILLA TZUCHI','2455-5825','JUAN ANTONIO ZELAYA MARTINEZ','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13893','FUNES DE VILLALOBOS JOSELINE MARINA','MERCADO DETALLISTA LA TIENDONA LOCAL 367','2276-7235','GRANOS BASICOS','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30137','GALICIA ESCALANTE GEORGINA LISANDRA','MCDO.MPAL.# 2 PUESTO INTERIOR # 286','NA','TDA.GEORGINA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10722','GAMEZ ALVARADO MARIA INES','AVENIDA JOSE SIMEON CAÂ­AS # 24','334-0026','TIENDA PARA TODOS','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31078','GARCIA ASCENCIO CARLOS ABELINO YOVANI','AV.FCO.MENENDEZ NTE. FINAL LOCALES FTE.EX-TERMINAL DE BUSES','7793-1559','TIENDA GARCIA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31176','GARCIA AVALOS CARLOS ANTONIO','15 CALLE PONIENTE Y 6 AVENIDA SUR.','79476544','TIENDA LÁCTEOS DON LUIS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30942','GARCIA FLORES CESAR HENRY ERNESTO','4a. AV. SUR CALLEJON EL TAMARINDO #2','NA','4a. AV. SUR CALLEJON EL TAMARINDO #2','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14551','GARCIA JOSE ALFREDO','11 AV.SUR Y CALLE GERARDO BARRIOS #416 S.S.','79859164','DISTRIBUIDORA G Y  T','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31156','GARCIA ORTIZ DE AILON LIDIA MARICELA','MERCADO CENTRAL PUESTO INTERNO # 173','72634319','TIENDA LA CHAPINA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21890','GARCIA VENTURA MARIA GREGORIA','CALLE EL COMERCIO B.EL RECREO FRT. A MERCADO MUNICIPAL','72259029','TIENDA GOYITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10728','GARCIA VICTORIA DEL CARMEN','4TA. C. PONIENTE #36 BO. SAN JUAN DE DIOS SAN VICENTE','NA','TIENDA GARCIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14204','GASOLINERA ALBA SUCHITOTO','ENTRADA A SUCHITOTO','2238-5455','PEREZ TONY ALBERTO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13678','GASOLINERA DLC PROVIDENCIA','KM. 30 CARRETERA A COMALAPA. OLOCUILTA LA PAZ','2268-5500','GASOLINERA DLC PROVIDENCIA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'12169','GASOLINERA TEXACO LAS ALDEITAS (DESVIO DE AMAYO)','CARRET.TRONCAL DEL NORTE KM 51 1/2 REDONDEL DESVIO DE AMAYO','2309-3834','JOSE ELIAS ESCOBAR ROMERO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14037','GASOLINERA UNO COJUTEPEQUE','CARRETERA PANAMERICANA KM.33 1/2 BARRIO EL CALVARIO','NA','NA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14336','GASOLINERA UNO TUSCANIA','KM. 17 1/2 CARRETERA AL PUERTO DE LA LIBERTAD','NA','GASOLINERA UNO TUSCANIA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13446','GERARDO LOPEZ AGUILAR','CARRT. PANAMERICANA Y 4TA AV. SUR #1 COL. PROVIDENCIA SAN MA','NA','CARNICERIA SILVITA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10731','GIL DE PADILLA MARIA JULIA','CALLE FCO. MORAZAN  BARRIO EL CENTRO  SUCHITOTO','335-1081','TIENDA LA CENTRAL# 3','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'31128','GIL GUILLEN DENISSE MICHELLE','6 CALLE PONIENTE 1/3 AV. SUR  SONSONATE','NA','TIENDA LA ECONOMICA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30582','GILBERTO ANTONIO ARIAS PEREZ','TIENDA GILBERTO','7924-9784','TIENDA GILBERTO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14401','GIRON GONZALES JUAN JORGE','MERCADO CENTRAL EDIFICIO 5 PTO 260  SAN SALVADOR','7590-0833','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21314','GLADIS CASTILLO DE AVILES','4TA. C. OTE. BO. SAN JUAN CHINAMECA SAN MIGUEL','26651267','SUPER TIENDA RONALD','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30791','GLADIS MARINA URIAS LOPEZ','LOCAL 187 MERCADO MUNICIPAL 2 ACAJUTLA SONSONATE','NA','TIENDA DORIS','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30757','GLADIS VALLECILLOS RIVAS','LOCAL D-98 PASILLO No.5 MEGAPLAZA','NA','TIENDA GLADISITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20341','GLADIS VITELIA VELASQUEZ DE ESCOBAR','ANTIGUA RUTA MILITAR BARRIO LAS DELICIAS','6412438','COMERCIAL YESENIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30861','GLADIS YAMILETH DIAZ GUERRERO','MERCADO EL ANGEL PUESTO 32 SONSONATE','79-27-05-25','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30147','GLEDMI NINETH MARROQUIN LINARES','TERMINAL DE BUSES EL COCO LOCAL # 5','7224-0813','MINITIENDA LA FE','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'20348','GLORIA ESPERANZA CASTELLON DE PEREZ','BARRIO EL CENTRO CALLE PRINCIPAL','6823780','TIENDA GERSON','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30598','GLORIA FRANCISCA PEREZ DE ABREGO','3a. AV SUR MERCADO MUNICIPAL LOCAL 4 BARRIO LA CRUZ','7332-4415','TIENDA FATIMA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'12974','GLORIA IMELDA CUESTAS HERNANDEZ','KM23 1/2 CARRT. LOURDES COLON CTGO. A FERRETE. LA PROVEEDO','NA','VARIEDADES JIRETH','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21803','GOMEZ DE CANALES ANA JOSEFA','OLOMEGA FRENTE AL MALECON LA LAGUNA','26808717','TIENDA RUTH','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21828','GOMEZ HERNANDEZ JACOBO ARMANDO','2a. AVENIDA NORTE BARRIO EL CALVARIO #4','26541828','TIENDA ISAAC','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'10773','GONZALEZ MARIA CORINA','COLONIA LA NUEVA GENERACION EN 63 1/2 JICALAPA C. AL LITORAL','304-6932','TIENDA CORINA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14516','GONZALEZ RUIZ CARLOS ENMANUEL','4A AV. SUR COL.PROVIDENCIA 1 CONTIGUO A PASARELA','23055205','TIENDA DE MAYOREO DON BOSCO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30991','GONZALEZ VILLEDA NEFTALI HUMBERTO','ENTRE 14 Y 16 AV. SUR CALLEJON GUZMAN FRENTE COMERCIAL LAZO','NA','TIENDA VALERIA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20357','GRISELDA PATRICIA CACERES CELIZ','BARRIO EL CENTRO','2682-3107','TIENDA DIVINA PROVIDENCIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'31208','GRUPO BARILAS PALACIOS S.A DE C.V','9A. Y 4A. CALLE.OTE.2A. AV.SUR.BO.EL CENTRO','24505049','GBP S.A DE C.V','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30792','GRUPO SANTEX S.A. DE C.V.','FINAL 1RA C. PTE. BO. SAN ESTEBAN TEXISTEPEQUE','NA','AGENCIA TEXIS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14397','GUARDADO GUARDADO JOEL ENRIQUE','2AV.NORTE Y AV.PROFESOR  SILVESTRE DE JESUS DIAZ','2306-6805','NA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'10786','GUARDADO VICTOR','MERCADO MUNICIPAL # 196FRENTE A FARMACIA APOPA','216-7890','DULCERIA MEME','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'31196','GUERRA MARTINEZ BERNARDO ANTONIO','3A AV.SUR #4 TEXISTEPEQUE','24700459','TIENDA SAN ANTONIO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14402','GUERRERO CUBIAS DAISY DEL CARMEN','CENTRO COMERCIAL LA UNION LOCAL  # 186 SAN SALVADOR','7205-0588','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21768','GUEVARA AMAYA CESAR ANTHONY','CALLE PRINCIPAL','7228-6808','LA CHIBOLONA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31159','GUEVARA DE GARCIA ELVA ESPERANZA','4A CALLE PONIENTE 1-182 BO.TALULE','75235991','TIENDA ELVITA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14429','GUEVARA MARQUEZ S.A. DE C.V.','87 AV NTE.Y 9a CA.PTE. LOBY TORRE QUATTRO LOCAL 06-05','25031508','SUPERMERCATO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30171','GUILLEN DE FLORES MIRNA ELIZABETH','AVENIDA NAPOLEON DUARTE BARRIO EL CALVARIO','452-0561','TIENDA DORITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21487','GUILLERMO ANTONIO OSEGUEDA CHEVEZ','COLONIA SORIANO 18 AV. NORTE CASA  12','26240316','GUILLERMO ANTONIO OSEGUEDA CHEVEZ','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30836','GUSTAVO ARNOLDO ABREGO PEREZ','3a. AV. SUR C. ARAUJO ARMENIASONSONATE CTGO. A COM LA FUTU','79-67-75-54','TIENDA ANITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31177','GUTIERREZ DE MAGANA GLENDA YANILETH','CALLE MERCEDITAS AV.NORTE LOCAL.5 Y 6 CTRO.COM.FUTURISTA','NA','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30928','GUTIERREZ LOPEZ GUILLERMO','MERCADO MUNICIPAL LOCAL EXTERIOR #4','7668-8179','TIENDA EVELYN','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31107','GUTIERREZ SINTIGO CARLOS ALBERTO','1a.AVENIDA NORTE BARRIO EL CALVARIO','70024276','TIENDA ALEXITO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21882','GUZMAN ANAYA JUAN JOSE','1RA. AV.SUR LOCAL 6 Y 7 BO.EL CENTRO #2-2','NA','TIENDA GLORIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20363','GUZMAN ANAYA MERCEDES ARIZEMA','2a. CALLE ORIENTE #1-3 COSTADO SUR MERCADO CENTRAL','2631-8665','TIENDA GLORIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14045','GUZMAN FLORES ELSA CAROLINA','URB. NUEVOS HORIZONTES PJE.20 POL.35 #9','7059-5939','TIENDA ELSY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30777','GUZMAN MARQUEZ DANILO EDGARDO','4a. CALLE PTE. BARRIO EL CALVARIO FRENTE A HOSTAL COLONIAL','NA','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'20364','HECTOR AMILCAR MORENO BONILLA','2 AV NTE  BO EL CENTRO  3  PUERTO EL TRIUNFO','6636145','TIENDA LISSETTH','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30448','HECTOR EDUARDO GRANADOS','17 CALLE PTE. #12 Y 14 AV. SUR #71A MERCADO COLON','2440-5031','DANIELITO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21640','HECTOR ENRIQUE','CALLE MASFERRER','NA','HECTOR ENRIQUE','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'31167','HENRIQUEZ DE RAMOS ROSALBA IDALIA','8A.AVENIDA NORTE #6-3 COLONIA AIDA BARRIO EL ANGEL','78554211','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21786','HENRIQUEZ HERNANDEZ WILLIAM ALEXANDER','5a. CALLE ORIENTE','7674-1837','TIENDA NETO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13627','HENRY YEOBANY INTERIANO CASTILLO','CALLE PANIAGUA BO. EL CENTRO #1 FTE. A BCO. DAVIVIENDA','2341-3375','SUPERMERCADO LA MIGUELEÃ‘A','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30667','HERBERT BALMORE CONTRERAS SANDOVAL','CALLE PPAL. CTON. ASHAPUCO ENTRE 10 CALLE AHUCHAPAN','7564-7913','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'12386','HERBERT EDGARDO BARRERA GOMEZ','AV. CENTRAL 1/2 CUADRA AL NORTE DEL MERCADOS AGUILARES','NA','TIENDA.DENNIS','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'30177','HERNANDEZ ANA DOLORES','C. PANAMERICANA ENTRADA A TERMINAL DE BUSES METAPAN','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31198','HERNANDEZ BORJA DORA PATRICIA','3A.AV. NORTE # 1-97 ATIQUIZAYA','75240246','DULCERIA ENMANUEL','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10807','HERNANDEZ CASTILLO MARY ISABEL','BO. EL CENTROC. AUTOPISTAATRAS DEL MDO MUNICIPAL LA H.','365-0628','TIENDA ISABEL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10809','HERNANDEZ DE CASTRO MARIA FRANCISCA','CLLE. MORAZAN #20 BO. EL CENTRO','335-2133','TIENDA ANA PATRICIA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'21675','HERNANDEZ DE HERNANDEZ FLORIDALMA','1a CALLE PONIENTE BARRIO LA MERCED SAN MIGUEL','NA','HERNANDEZ DE HERNANDEZ FLORIDALMA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14292','HERNANDEZ DE HERNANDEZ MARIA JUANA','AV. ALBERTO MASFERRER BARRIO EL CENTRO CONTIGUO AL PARQUE','7598-3235','TIENDA MARY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14391','HERNANDEZ GARCIA BLANCA ESTELA','MERCADO CENTRAL EDIFICIO 9','74936391','TIENDA MICHELLE','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21623','HERNANDEZ GUTIERREZ ERLA MIRIAM','10a. AV SUR COL. SANTA ROSA #6','NA','NA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30182','HERNANDEZ JOEL','FINAL AV.FRANCISCO MENENDEZ CASA #6 FRENTE TERMINAL DE BUSES','2410-3084','TIENDA MORELIA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'10810','HERNANDEZ JOSEFA ARGENTINA','AVENIDA CASTRO MORAN # 5MEJICANOS','282-5113','TIENDA ARGENTINA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30183','HERNANDEZ JUAN VICENTE','CALLE PRINCIPAL BARRIO EL CENTRO #8 EL CONGO','405-4320','TIENDA KAREN','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30184','HERNANDEZ KAREN','MERCADO DE ARMENIA','NA','TIENDA KAREN','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'10811','HERNANDEZ MARIA JULIA','CALLE PPAL. CONTG. ESCUELA SAN LUIS LA HERRADURA','365-0170','TIENDA ERIKA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13932','HERNANDEZ ORELLANA ANGEL GABRIEL','CALLE GERARDO BARRIOS CENTRO COMERCIAL UNION LOCAL#13-G','7120-6413','DULCERIA ANGEL','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21777','HERNANDEZ PONCE MIRAN DE LA PAZ','2a. CALLE PTE. #2-11 BARRIO EL CENTRO','7617-9226','TIENDA MIRIAN','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14447','HERNANDEZ ROSA MANUEL ALEJANDRO','6a. AV. SUR #7 BARRIO EL CALVARIO FRENTE A DELEGACION','6198-8104','.','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'31124','HERNANDEZ UMANA JOEL MOISES','BO.CALVARIO 1RA AV.NTE EXT 30 AV.BNJAMIN ESTRADA','79300315','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20372','HERRERA  WILFREDO ANTONIO','4TA. CALLE ORIENTE CASA  48 USULUTAN','26621537','TIENDA Y DULCERIA MARIO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14200','HERRERA MARTINEZ BESSY CAROLINA','PLAZA EL SOL LOCAL 40-B','7228-1422','TIENDA MATIAS','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'10817','HIDALGO VDA. DE APARICIO MARIA BERTHA','12+ CALLE PONIENTE # 443 SAN SALVADOR','221-7163','DULCERIA EL COMETA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30369','HILDA ESTER ROMERO DE ARDON','CIUDAD ARCE PTE.AL MERCADO MUNICIPAL','NA','SUPERTIENDA EL GORGOJO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14260','HOTEL COURTYARD BY MARRIOTT','ESQUINA CALLE 2 Y 3 CENTRO DE ESTILO DE VIDA LA GRAN VIA','2249-3000','CARIBE HOSPITALITY EL SALVADOR S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'12278','HUGO SALVADOR CRUZ DURAN','COL. SAN CARLOS FINAL C. BERARDO PERDOMO ILOBASCO CABAÃ‘AS','7596-1016','TIENDA PORTAL DE POLLO INDIO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13745','IDALIA ARBEL GONZALEZ','MERCADO CENTRAL EDIF. EL SOTANO # 89 SAN SALVADOR','71-03-09-33','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13994','IGLESIAS BOLANOS FLOR DE MARIA','COL.ALTOS DE SANTA MARIA CALLE PPAL. PJE.MIRAFLORES LOTE#113','2204-9733','NA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30650','IMELDA EDALGIZA PLEITEZ DE MIRANDA','15 CALLE PTE. ENTRE 8 Y 16 AV. SUR LOCAL 14-16 SANTA ANA','7257-2551','LACTEOS JOSUE','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'10831','INCOSOL S.A. DE C.V.','KILOMETRO 57Â¾ CARRETERA A COSTA DEL SOL','338-2589','SUPERMERCADO COSTA DEL SOL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'10832','INDUSTRIAS CARICIAS.A. DE C.V.','KM 4.1/2 PJE SAN MAURICIO COL. MARAL Y BLVD DEL EJERCITO NAC','2251-7044','INDUSTRIAS CARICIAS.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'12190','INES IRAHETA PORTILLO','4TA. C. OTE. #18 SANTA BARBARA SENSUNTEPEQUE','2382-0498','TIENDA  MLA HOGAREÃ‘A','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13944','INGLOBES.A. DE C.V.','FINAL 79 AV SUR PASAJE CCOL. ESCALON #2','7248-6381','INGLOBES.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21318','INVERSIONES NOLASCO  S.A. DE C.V.','BARRIO EL CENTRO 3 AV. JUAN ALWOOD PAREDES','26588520','MULTISUPERFAMILIAR','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21843','INVERSIONES Y NEGOCIOS SANTA ROSA S.A DE C.V','4AT CALLE OTE  BO.SAN JUAN CHINAMECA SAN MIGUEL','26654000','SUPER SANTA ROSA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21888','INVERSIONES Y NEGOCIOS SANTA ROSA S.A DE C.V','1 C. OTE BARRIO EL CENTRO COSTADO ORIENTE IGLESIA CATOLICA','26654000','SUPER SANTA ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21889','INVERSIONES Y NEGOCIOS SANTA ROSA S.A DE C.V','SALIDA A CHAPELTIQUE BARRIO SAN PEDRO','26654000','SUPER SANTA ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'10839','IRAHETA MIRIAM ESTELA','FINAL CALLE CIUDAD DELGADO Y 7+ AV.NORTE  COJUTEPEQUE','372-1442','TIENDA FATIMA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21528','IRIS DE JESUS MELENDEZ','FRENTE A MERCADO MUNICIPAL JIQUILISCO CTGUO BANCO AZTECA','NA','TIENDA IRIS','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'12203','IRIS ELIZABETH ROMERO MARROQUIN','SAN VICENTE 5TA AV. SUR ZONA MERCADO MUNICIPAL','7291-1746','TIENDA ELY','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21607','IRIS ROSIBEL ANDRADE FUENTES','CALLE RUTA MILITAR COL. EL MAG FRENTE FERRETERIA SANTA CLARA','78976622','TIENDA FLOR DE MARIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21202','IRMA GLADIS PARADA MENDOZA','4TA C. OTE. CONTGO. AL MERCADO A LA PAR DE DIST. KARINA','NA','IRMA GLADIS PARADA MENDOZA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10010','ISAIAS DE JESUS ACEVEDO FLORES','2A AV. NORTE # 6 BO. LOS ANGELES APASTEPEQUE SAN VICENTE','NA','TIENDA DIVINA PROVIDENCIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30820','ISRAEL ANTONIO CARRANZA RUIZ','4a. CALLE PTE. MCDO MUNICIPAL # 3 Bo. EL CENTRO ATIQUIZAYA','NA','TIENDA EL BARATILLO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21856','ISRESAL GRUPO CONSULTOR S.A DE C.V','CALLE PRINCIPAL CHAPELTIQUE','72508968','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21213','JACOBO ARMANDO GOMEZ HERNANDEZ','4TA. C. PTE. Y 1RA AV. SUR BARRIO LA SOLEDAD S. FCO. GOTERA','NA','TDA. ISAAC','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'13794','JACQUELINE LISSETTE EGUIZABAL RAMOS','CENTRO COMERCIAL SAN MARTIN LOCAL # 1-SAN SALVADOR','NA','TIENDA WENDY # 2','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10860','JAIME ALEXANDER MEJIA GARCIA','MDO. MUNICIPAL SAN MARTIN FTE. A TDA. MARIA AUXILIADORA','NA','TIENDA  JAIME','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20398','JAIME ULISES RIVAS ESTRADA','SEGUNDA CALLE OTE. 1-3 COSTADO SUR AL MERCADO CENTRAL','6040464','COMERCIAL FATIMA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30200','JAIMES REINA MARISOL','CALLE ARTURO ARAUJO BO. LA CRUZ #18 ARMENIA SONSONATE','452-1504','TIENDA KEVIN','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21378','JAIRO ANTONIO NATIVI ZELAYA','BO. EL CENTRO FRENTE AL MERCADO MPAL. DE SAN JORGE S. MIGUEL','26102173','TIENDA NUEVA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'12977','JAVIER ANTONIO MENENDEZ SANCHEZ','C. MINERVA BO. EL TRANSITO #11 FTE. AL MERCADO SAN SEBASTIAN','NA','TIENDA EL PORTAL','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'13369','JESUS AMINTA GALDAMEZ DE AGUIRRE','CALLE ROOSEVELT #7 SOYAPANGO','NA','TIENDA MARISOL','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20402','JESUS GARCIA ORELLANA','CALLE EL CENTRO BARRIO EL CENTRO','658-8328','TIENDA ARY','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20403','JIMENEZ TORRES S.A. DE C.V.','2DA CALLE ORIENTE B. EL CENTRO  21  USULUTAN','6621743','DULCERIA GUSTAVE','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30496','JONATHAN ALBERTO VASQUEZ REINOSA','5TA. AV. SUR 1-2A BARRIO SAN JOSE JUAYUA SONSONATE','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13005','JONATHAN VASQUEZ CARCAMO','AVENIDA CASTRO MORAN #10-B','7976-3008','TIENDA LA BODEGUITA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'21604','JORGE ALBERTO ALVAREZ VENTURA','BARRIO EL CENTRO FRENTE AL PARQUE','NA','TIENDA CECIBEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21358','JORGE ARTURO ANDRADE VENTURA','BARRIO EL CENTRO CALLE A LA ESCUELA','NA','TDA. YAMILET','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21271','JORGE LUIS FLORES VASQUEZ','CALLE CHAPARRASTIQUE 306 BO. LA MERCED SAN MIGUEL','NA','LACTEOS EL RODEO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21349','JORGE LUIS FLORES VASQUEZ','CALLE CHAPARRASTIQUE 306 BO. LA MERCAD SAN MIGUEL','NA','LACTEOS EL RODEO #4','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21351','JORGE LUIS FLORES VASQUEZ','1RA CALLE PTE. 3RA AV. SUR LOCAL 4 BARRIO LA MERCED SAN MIG','NA','LACTEOS EL RODEO #2','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21790','JORGE LUIS FLORES VASQUEZ','AVENIDA ROOSEVELT FRENTE A POLLO CAMPESTRE','NA','LACTEOS EL RODEO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30535','JORGE REMBERTO CORTEZ HERNANDEZ','AV. SAN JUAN LOCAL 1 FTE. A LA UNIDAD DE SALUD NAHIZALCO','7321-1120','TIENDA VANESSA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21282','JOSE ADAN RIVAS RIVAS','2DA CALLE PTE. BO. SAN ANTONIO CTGO. A SUPERMERCADO PARA TOD','NA','TIENDA RIVAS','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10893','JOSE ALEJANDRO MERLOS','CALLE GERARDO BARRIOS Y 17 AV. SUR #925 SAN SALVADOR','2221-3285','COMERCIAL SAN FRANCISCO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30570','JOSE ALFREDO OSORIO MENDEZ','CASA MATRIZ32 AV. SUR BO. EL CENTRO APTOS. SILHY LOCAL 7','2451-0911','TIENDA DEL HOGAR #1','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21123','JOSE ALONSO GARCIA SORTO','5TA. AV. SUR 101 SAN MIGUEL','75778463','COMERCIAL MAURICIO 2','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21513','JOSE ALVARO RODRIGUEZ','CALLE PPAL. BARRIO EL CALVARIO CASA 6  JUCUARAN  USULUTAN','NA','JOSÉ ALVARO RODRIGUEZ','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'20412','JOSE ALVARO RODRIGUEZ BONILLA','CALLE PRINCIPAL  6 BARRIO EL CALVARIO','6275032','NEGOCIOS ALVARO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30534','JOSE ANDRES ARDON RODRIGUEZ','1a. AVENIDA NORTE Bo. EL CENTRO # 25 CIUDAD ARCE','7324-7051','TDA. JOSE','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30480','JOSE ANTONIO HERNANDEZ','4TA. CALLE PTE. 2-3 BO. VERACRUZ SONSONATE','2451-2823','TIENDA SAN JOSE','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'10901','JOSE ARMANDO VELASQUEZ RIVERA','MERCADO MUNICIPAL QUEZALTEPEQUEPUESTO 12','NA','DISTRIBUIDORA ARMANDO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'10903','JOSE CELESTINO ESPINOSA VALLE','CENTRO COMERCIAL EL MATAZANO# 17 COL. BOSQUES DEL MATAZANO','294-0089','TIENDA EL PROGRESO','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'21421','JOSE CRISTINO MOLINA','1RA CALLE ORIENTE BARRIO LA MERCED SAN MIGUEL','NA','5 HERMANOS','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'10905','JOSE CRISTOBAL MARTINEZ RAMOS','BO. STA. BARBARA 2DA CALLE OTE. #1 SENSUNTEPEQUE','NA','TIENDA MARTINEZ','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21170','JOSE DAVID COLATO GARCIA','C. PPAL. BO. STGO. A LA PAR DE LA PNC QUELEPA SAN MIGUEL','NA','JOSE DAVID COLATO GARCIA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'20423','JOSE DAVID PACHECO URIAS','TERCERA AV. SUR #2-5 BARRIO LAS FLORES LA UNIOS','604-1054','TIENDA FLORCITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21619','JOSE ELENILSON MORAGA','CALLE 14 DE DICIEMBRE PUESTO 15 BARRIO EL CENTRO','NA','TIENDA GUILLERMO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'10916','JOSE ELIAS ESCOBAR ROMERO','KM 71 CARRT. A CHALATENANGO DESVIO EL LIMON CHALATENANGO','NA','FOOD MART TEXACO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13739','JOSE ELIAS ESCOBAR ROMERO','KM. 57 CARRET. PANAMERICANA APASTEPEQUE SAN VICENTE','75-05-05-95','TEXACO LAS CALDERAS','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'12243','JOSE FERNANDO HERNANDEZ RAMIREZ','1RA AV. NORTE #10 ZACACOLUCAS LA PAZ','NA','JOSE FERNANDO HERNANDEZ RAMIREZ','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13074','JOSE FRANCISCO ALAS','COL. HERMOSAS PROVIDENCIA C. CAMPOS VERDE #2 LOURDES COLON L','2319-5352','TIENDA LOS ALMENDROS','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20429','JOSE FRANCISCO VIERA','AV. GENERAL MORAZAN  25 LA UNION','6044868','TIENDA LAURITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21254','JOSE GILBERTO HERNANDEZ SANCHEZ','1RA CA. PTE. 202 LOCAL 8 B. LA MERCED SAN MIGUEL','NA','JOSE GILBERTO HERNANDEZ SANCHEZ','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'20431','JOSE HECTOR MATA VIERA','3RA. CALLE PONIENTE 301','26613353','COMERCIAL BUENA FE','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'12272','JOSE HERIBERTO MARQUEZ','PJE BINDER CASA 10 SAN MARTIN SAN SALVADOR','NA','INVERSIONES DIVERSAS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10924','JOSE HERMINIO GARCIA CARTAGENA','KM 20 COL. SAN JUAN DE DIOS AUTOPISTA A COMALAPA','2313-1338','TIENDAEL VIÃ‘EDO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'20382','JOSE INES CASTRO GUEVARA','SALIDA HACIA OSICALA BARRIO EL CENTRO GOTERA','6540479','TIENDA BRISAS DEL NORTE','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'12960','JOSE JAIME NAJARRO GUERRA','3RA CALLE OTE. Y 6TA AV. NORTE BO. SAN MIGUEL ILOBASCO','7909-3018','TIENDA DE MAYOREO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13119','JOSE LUIS LOPEZ PEREZ','CALLE GERARDO BARRIOS #622 LOCAL 5 DPTO. DE SAN SALVADOR','NA','TIENDA Y DULCERIA SALEM','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13413','JOSE LUIS RODRIGUEZ RIVERA','COL. EL COCAL CALLE PRINCIPAL #10 APOPA','7993-3228','TIENDA FLOR','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'12257','JOSE MAGDALENO ALVARADO','LOTIFICACION MONTES DE SAN BARTOLO POL. 7 SAN MARTIN','NA','TIENDA XIOMARA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'20440','JOSE MAGDALENO ALVARADO','BARRIO EL CENTRO CIUDAD BARRIOS','6659119','JOSE MAGDALENO ALVARADO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'10932','JOSE MARIA CORNEJO','MDO. EL TIANGUE CTGO. A IGLESIA EL CALVARARIO COJUTEPEQUE','NA','TIENDA EL TIANGUE','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21490','JOSE MARIO SANCHEZ','3A. AV. SUR  BARRIO LA MERCED CASA  201 SAN MIGUEL','NA','LACTEOS MONTEGRANDE','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21366','JOSE MARTIN ORTEZ BENITEZ','BO. SAN JOSE SALIDA A LOLOTIQUILLO CACAOPERA','7243-2121','TIENDA LAS GEMELAS','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21587','JOSE MOISES RODRIGUEZ ROMERO','FRENTE A MERCADO JUCUAPA AV. 2 DE ABRIL # 55  USULUTAN','NA','SUPER SALVADOREÑO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21588','JOSE MOISES RODRIGUEZ ROMERO','FRENTE AL PARQUE CHINAMECA C. VALENCIA Bo. EL CENTRO #3','NA','MINI SUPER','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21590','JOSE MOISES RODRIGUEZ ROMERO','CHINAMECA 4a. CALLE OTE Bo. SN JUAN #4 CASA # 1   SN MIGUEL','NA','SUPER SALVADOREÑO 2','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21163','JOSE NEFTALI NAVARRETE VASQUEZ','8 Av. Norte Local # 26','2656-2217','SUPER LACTEOS NEX NEX','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13882','JOSE NEFTALI TEJADA MELENDEZ','CALLE SIN LEY BO. EL CENTRO PJE. 1 CTGO. A MCDO. AGUILARES','77-97-20-83','NA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13290','JOSE NELSON ORELLANA CORNEJO','C. COMERCIAL LA UNION Y CALLE G. BARRIOS LOCAL #20B SAN SALV','7354-3002','DULCERIA LAURITA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'10940','JOSE OSMIN ALFARO BARRAZA','3RA CALLE ORIENTE #21 BARRIO LOS REMEDIO SENSUNTEPEQUE','382-2628','TIENDA  DESPENSA DEL HOGAR','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'10944','JOSE RICARDO ESCOBAR CALLE','BARRIO EL CENTRO CALLE PRINCIPAL # 270','2357-0207','TIENDA SUJEY','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13398','JOSE ROBERTO TOLOZA AYALA','COLONIA PPAL. SAN ANTONIO ARRIBA CASERIO SAN ANTONIO ARRIBA','NA','TIENDA SAN JOSE','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21440','JOSE ROLANDO CAMPOS TORRES','CONCEPCION BATRES USULUTAN','NA','TDA. EL MILAGRO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'20454','JOSE TOMAS MEJIA','DESVIO A LA CANOA EN EL CENTRO DE SAN MARCOS LEMPA','6322565','MI TIENDITA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13485','JOSE VELIO VENTURA GALDAMEZ','4TA AV. SUR #11 CTGO. A SHELL CENTRO COMERCIAL SOYAPANGO','NA','MINI-DULCERIA EL CHELE','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'10891','JOSEDAVID AREVALO NAVAS','BO. EL CARMEN AV. COMERCIAL DULCE NOMBRE DE MARIA','356-9235','TIENDAMI PREFERIDA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'30586','JOSEFA ESPERANZA PINEDA AREVALO','BO. EL CENTRO MERCADO MPAL. PUESTO #9 ATACO AHUACHAPAN','2450-5568','TDA. LA ESPERANZA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21826','JOYA ESPINAL EVER ANTONIO','BARRIO LAS DELICIAS CALLE AL CEMENTERIO','75637583','COMERCIAL JOYA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13658','JUAN ANTONIO AMAYA CORNEJO','COL. SALINAS C. FERROCARRIL # 3 AGUILARES SAN SALVADOR','23-21-40-04','LAHEREDAD DE JACOB','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13301','JUAN ANTONIO RIVERA CASTELLANOS','3RA C. PTE #10 FTE. A TDA. JOSEFAT DEL MERCAO MPAL. ILOBASCO','7929-7928','TIENDA GUADALUPE','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'20460','JUAN ANTONIO TORRES VILLATORO','SEGUNDA CALLE PONIENTE 2-3 BIS','604-3756','TIENDA ENMITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10958','JUAN CARLOS GUARDADO DIAZ','4A CALLE OTE #1 CTGO. AL PARQUE DE AGUILARES','23314317','TIENDA MARIBEL','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'30214','JUAN CARLOS RODRIGUEZ GARCIA','2DA CALLE OTE #30 BARRIO LAS ANIMAS','NA','TIENDA GARCIA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13364','JUAN CARLOS TEJADA','4TA CALLE OTE. Y AV CENTRAL NORTE BO. EL CENTRO #2 AGUILARES','NA','TIENDA LA ESPERANZA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21606','JUAN JOEL VENTURA VILLATORO','BARRIO EL RECREO 1A.CALLE OTE ATRAS C.E.JOSE MATIAS DELGADO','73786504','JUAN JOEL VENTURA VILLATORO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30216','JUAREZ SILVA SALVADOR ALEXANDER','5+ A.V. NORTE.ENTRADA BUSES AL COCO','NA','TIENDA ALEX','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'20481','JULIA MARIBEL CARCAMO DE HERNANDEZ','MERCADO MUNICIPAL PUESTO  62 STA. ROSA','6642206','TIENDA MARIBEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'10994','JULIO EDUARDO GOMEZ','MERCADO STA. LUCIA #19 EXTERIOR POR TIENDA KAREN S.S.','2294-5541','TIENDA GOMEZ','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'20482','JULIO GERMAN VILLATORO VELASQUEZ','BO. EL CENTRO EL SAUCE','6477001','TIENDA MARIA DE LOS ANGELES','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20483','JULIO VENTURA FLORES','PRIMERA CALLE ORIENTE  48','6620639','CEREALES VENTURA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13505','KAREN MARGARITA RAMIREZ GUEVARA','7VA AV. NTE Y 3RA C. PTE. EDIF. REYES #308 SAN SALVADOR','7834-0532','DULCERIA ZAZ','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30326','KENIA VERONICA PAREDES DE PALACIOS','1RA C. OTE AV. ESPAÃ‘A NTE COL. SAN JUAN BO. EL CENTRO TACUBA','2417-4207','TIENDA MENY','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14346','LA POTENZA S.A. DE C.V.','SAN ROQUE Y PROLONGACION BLVD CONSTITUCION','NA','JAIME CASTRO-ENCARGADO ESTACION','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'11015','LANDAVERDE CHACON DORA ISABEL','BO. EL TRANSITO EX DESVIO A LAS PILAS','335-9166','TIENDA LUPITA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'31101','LANDAVERDE SANCHEZ ANA VICTORIA','15 CALLE PONIENTE APTOS.MONICO #9','7589-3245','TIENDA VICKY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11018','LARA DE ZAMORA MARTA','AV. EL COMERCIO #2 GUAZAPA','324-0053','TIENDA PERLA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11019','LARA NELSON','CALLE GERARDO BARRIOS # 618 ZONA MERCADO CENTRAL','221-1743','TIENDA JOSE MIEL','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30992','LATIN CRISTINA GUADALUPE','LOTIFICACION LAS NIEVES POLIGONO 9 PASAJE A LOTE 28','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21476','LAUDE ALUVINA CHICAS LEMUS','2DA CALLE PONIENTE BO. CONCEPCION  A LA PAR DE LA BOMBA','NA','NA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30730','LAURA ESTELA LEMUS DE PREZA','RESD. JARDIN AV. LAS AMAPOTAS POL. "C" CASA #11 SANTA ANA','NA','LAURA ESTELA LEMUS DE PREZA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21687','LEIDY BLANCO','BARRIO EL CENTRO MUELLE LOS COQUITOS FTE.COM.MONTECRISTO','72196205','LEIDY BLANCO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'31111','LEMUS DE JUAREZ AUSTRIA YOLANDA','17 CALLE PONIENTE 14/16 AVENIDA SUR # 37 LADO NORTE','75463321','TIENDA FATIMA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11028','LEONOR ECHEVERRIA','CALLE PPAL. ADELANTE DE LA CELBITA ILOBASCO','7951-4293','TIENDA DIVINO NIÂ­O','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'20502','LETICIA MARISELA ROMERO MUNGUIA','BO LA ALIANZA CALLE PRPAL CORINTO','6581262','TIENDA CLARITA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31130','LINARES APARICIO CARLOS RENE','4TA CALLE PONIENTE BO. VERACRUZ # 1-7 SONSONATE','2451-2420','TIENDA EL ANGEL','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31131','LINARES RAMOS RAUL ARMANDO','COL. AREQUIPA # 2 POLG. E BK # 2 CASA # 22 SANTA ANA','NA','RAUL LINARES','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11045','LISSETE CAROLINA PACHECO RAMOS','AV. RAFAEL CABRERA BARRIO SAN JUAN COJUTEPEQUE','NA','DEPOSITO RAMOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14394','LOPEZ BELTRAN RONY ALEXANDER','AVENIDA CENTRAL 9121 -F1 CANTON TAMANIQUE LA LIBERTAD','77498716','.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14304','LOPEZ DE AGUILAR MAYRA LISSETH','1A. AVENIDA NORTE BARRIO EL CENTRO','NA','TIENDA EL ANGEL DE JEHOVA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13922','LOPEZ DE VILLALOBOS MARLENE YANETH','MERCADO MUNICIPAL SOYAPANGO SECTOR 3 PUESTO#76','NA','DULCERIA PROMESA DE DIOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14015','LOPEZ PORTILLO CARLOS MARIA','4A. CALLE PONIENTE LOCAL #4 FRENTE A CASA DE LA CULTURA','NA','TIENDA PORTILLO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21769','LOPEZ SOTO VIRGINIA MARICELA','4a. CALLE ORIENTE 6a./8a. AV. SUR FRENTE A MERCADO MUNICIPAL','7011-4010','TIENDA KIMBERLI','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13497','LORENZA DE DOLORES ESOTO QUINTANILLA','C. QUIÃ‘ONES DE OSORIO C. #21 FTE. A NEGOCIO LOS ANGELES V','7727-0817','TIENDA LOLITA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11061','LOVATO DE CARMONA MARTHA','7MA AV. SUR Y CALLE QUIÂ­ONES DE OSORIO #4 SAN VICENTE','393-0402','TIENDA MARTITA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21272','LUCIA CONCEPCION ROSALES DE ORANTES','CALLE CHAPARRASTIQUE Y 5TA AV. SUR 313 SAN MIGUEL','NA','AGENCIA COMERCIAL EL ANGEL','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13649','LUCIA DEL CARMEN SANCHEZ MOREIRA','URB. SN RAFAEL CALLE CENTRAL NORTE POLG. 40 CASA 2 AGUILARES','NA','NA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'20536','LUIS ALONSO OSEGUEDA','SEGUNDA CALLE ORIENTE  27','6620415','COMERCIAL SAN LUIS','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21153','LUIS ALONZO ALVAREZ FLORES','BO. EL CENTRO FTE. A PLAZA CENTRAL LISLIQUE LA UNION','77861838','DISTRIBUIDORA SAN LUIS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21348','LUIS FRANCISCO CRUZ AYALA','2DA AV. NORTE COL. VISTA HERMOSA 12 FTE. A IGLESIA PENIEL S','NA','COMERCIAL JOSUE #7','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21532','LUIS FRANCISCO CRUZ AYALA','1A. AVENIDA SUR  LOCAL  108 SAN MIGUEL','NA','COMERCIAL JOSUE  1','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30871','LUISA ELIZABETH TERESON ESCAMILLA','15 C. PTE. MECDO. MUNICIPAL SANTA ANA LOCAL 2 CASA 11 STA A','NA','TIENDA ARTURO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20542','LUISA EMMA BERMUDES DE CHAVARRIA','MERCADO MUNICIPAL INTERIOR','6638101','TIENDA JACKELINNE','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'20544','LUZ DEL CARMEN MONTANO DE DIAZ','C. PPAL. 1 CUADRA AL SUR CANCHA DE FOOTBALL TIERRA BLANCA','6308119','TIENDA LA FAMILIA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21525','MADELIN VANESSA FUENTES','7A. AV NORTE FTE A TIENDA SAN PABLO  SAN MIGUEL','NA','MADELIN VANESSA FUENTES','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30229','MADRID ARTURO','BARRIO CHILAPA','NA','SAN CRISTOBAL','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14142','MADRID GOMEZ NUBIA VERALIS','KM.34 1/2 CARRET.ANTIGUA ZACATECOLUCA FTE.PUMA COMALAPA','7958-5590','TIENDA ESPERANZA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31133','MAGANA HERNANDEZ CIPRIANO','CARRET.INTERNACIONAL FRENTE SALON TESTIGOS DE JEHOVA','NA','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30874','MANUEL ANTONIO TOBAR CHACHAGUA','COL. ANGELICA #7-5 PASEO 15 DE SEPTIEMBRESONSONATE','24-32-52-94','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'12286','MAQUINAS AUTOMATICAS DE CONVENIENCIAS.A. DE C.V.','NA','7180-3638','NA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13525','MARCO ANTONIO CERROS RODRIGUEZ','BO. SAN NICOLAS 7M AV. NTE #1-3 COJUTEPEQUE','NA','TIENDA LA ESTANCIA DE RAMON','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30629','MARCO TULIO BATRES FLORES','MERCADO CENTRAL DE SONSONATE PUESTO #37 SONSONATE','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13186','MARIA ANGELA CERNA DE VALLE','COMERICAL LA NUEVA','NA','COMERICAL LA NUEVA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'20564','MARIA ANTONIA GONZALEZ DE MELENDEZ','3A CALLE PTE BO EL CENTRO  ANAMOROS','6470174','TIENDA YESLYS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21339','MARIA CRISTABEL GONZALEZ DE ARAUJO','BO. SAN CARLOS 2A AV. NTE. 6TA CALLE OTE. CASA 15 EL TRANSIT','NA','TIENDA DE MAYOREO EL MILAGRO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30828','MARIA CRISTINA LINARES MENDEZ','4a.CALLE PTE. Y 1a.AV.SUR BARRIO VERACRUZ #2-2','NA','LA BENDICION DE DIOS','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11141','MARIA DE LOS ANGELES ESCOBAR BATRES','4TA C. PTE. #1 COSTADO SUR PARROQUIA DE QUEZALTEPEQUE','2516-5778','TIENDA GENESIS','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13325','MARIA DINORA RAFAEL','PASAJE EL MANGO FRENTE A LAS COCINAS COJUTEPEQUE','NA','TIENDA ACSA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'12384','MARIA EDITA ORELLANA ORELLANA','6TA. AV. NTE. Y 1RA CALLE OTE SENSUNTEPEQUE','7912-6763','TIENDA JEOVANNY','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11170','MARIA EDITH GONZALEZ VALLE','MERCADO PROVICIONAL MEJICANOS PUESTO #13 MEJICANOS','2517-6596','CEREALES GONZALEZ','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30877','MARIA ELIZABETH CALDERON DE SANDOVAL','6a. AV. NORTE FRENTE A RAMPLA MERCADO DE METAPAN STA. ANA','NA','TIENDA KELLY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21636','MARIA ELIZABETH MACHADO','2A.CALLE PTE. BARRIO EL CALVARO SALIDA A SAN GERARDO','NA','SUPER RIVERA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20598','MARIA ERNESTINA RUIZ DE RUIZ','BO EL CENTRO LISLIQUE  CALLE A LA ESCUELA','682-3797','TIENDA JUANSITO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11200','MARIA GLADIS FRANCISCA JOVEL DE PEREZ','AV. JUAN BERTIZ #40 CIUDAD DELGADO','2286-2355','DULCERIA Y PINATERIA MEMITO','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30573','MARIA GRACIELA MORALES DE PEREZ','C. JOSE LUIS CARRANZA #6 CTON. CARASUCIA 1/2 CUADRA ARRIBA D','2427-0099','TIENDA SILVIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11203','MARIA GUADALUPE CERNA HERNANDEZ','3RA AV. NORTE 6 CALLE OTE. ESQUINA OPUESTA BANCO AGRICOLA ZA','7829-4242','TIENDA LUPITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30579','MARIA GUADALUPE RETANA TEOS','MERCADO MUNICIPAL #1 PUESTO #3 CHALCHAPA','7671-5221','TDA. LUPITA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13079','MARIA HAIDE MORALES MORALES','BO. EL CENTRO 6TA. AV. NTE. 1RA CALLE PTE. #16 ILOBASCO','NA','TIENDA MELINA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'20609','MARIA HUMBERTINA VILLALTA DE ALFARO','CALLE PRINCIPAL BARRIO EL CENTRO','NA','TIENDA NORMITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30774','MARIA IRMA CLIMACO DE GARCIA','MERCADO MUNPAL. #2 LOCAL 187 ACAJUTLA SONSONATE','2455-3841','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20616','MARIA ISOLINA ARGUETA DE PEREIRA','BO SAN JOSE  CACAOPERA  SAL A CORINTO','NA','TIENDA ARGUETA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20622','MARIA JUVENTINA NOLASCO','BARRIO SAN RAFAEL','6588217','TIENDA NOLASCO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20627','MARIA LUISA REYES DE GARCIA','PRIMERA CALLE OTE. Y SEXTA AV. NORTE BARRIO EL RECREO','6412973','TIENDA HICELITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21420','MARIA MAGDALENA GUEVARA VDA. DE MARTINEZ','SAN JORGE SA MIGUEL','NA','MARIA MAGDALENA GUEVARA VDA. DE MARTINEZ','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13554','MARIA MARINA JACINTO DE ROGEL','BO. SAN JUAN 4TA C. OTE Y 4TA AV. SUR CASA #19 COJUTEPEQUE','NA','SUPERTIENDA ALAMEDA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30606','MARIA MIRNA PERAZA DE RAMOS','2DA CALLE OTE. Y 8VA AV. SUR BO. SANTA CRUZ METAPAN','7728-2052','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13673','MARIA NORMA JACQUELINE CARDOZA RIVERA','NA','NA','COL. JARD. DE QUEZALTEPEQUE C. PPAL. #56 QUEZALTEPEQUE LA LI','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11243','MARIA ORALIA GAMEZ ALVARADO','MERCADO # 2 N L-3','2334-7412','TIENDA KARINA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13014','MARIA SILVIA GRANADOS GANADOS','1RA C. PTE. BO. S. NICOLES #125 TONACATEPEQUE','7458-6475','HAZEL','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21482','MARIA SUSANA HERNANDEZ','ESQUINA OPUESTA AL MDO STA ROSA DE LIMA CTGO. A COM. AREVALO','NA','TIENDA MARISOL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21160','MARIA TERESA PASTORA DE PEREZ','3RA AV. NORTE 9 BARRIO CONCEPCION SANTIAGO DE MARIA USULUTA','NA','COM. MARVIN EDUARDO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'11278','MARICELA RIVERA PORTAN','4TA. CALLE OTE Y 2DA AV. SUR #65 CPJUTEPEQUE','NA','TIENDA MARICELA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13128','MARINA DEL CARMEN PEREZ DE CERNA','MERCADO CENTRAL EDIFI. 8 PTO. 203 SAN SALVADOR','7235-7272','DULCERIA GENESIS','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'11293','MARINA RAMOS','1RA AV. NORTE #185 MERCADO MUNICIPAL','7715-9045','TIENDA DOUGLAS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21279','MARIO ANTONIO CHICAS RAMOS','BO. EL CALVARIO AV. MORAZAN C. AL POLLO CAMPERO MORAZAN GOTE','26149233','TIENDA Y LACTEOS SAN JUAN','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21811','MARIPAZ  S.A. DE C.V.','2DA AV.BO. EL CALVARIO # 7 SAN FRANCISCO GOTERA','26945700','IMPORTADORA MARYPAZ','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21391','MARLON OSAEL RODRIGUEZ ORTIZ','CALLE PRINCIPAL FTE. AL PARQUE BO. EL CALBARIO MONCAGUA','NA','SUPER TIENDA DON PEDRO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13437','MARLON TULIO GUARDADO GUARDADO','CTON. SANTA BARBARA CASERIO CALOLE NUEVA FRENTE A DESVIO A S','7233-5163','SUPER TIENDA ALEXANDRA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'21448','MARLYN ROXANA REYES DE HERNANDEZ','RESIDENCIAL NUEVO JIQUILISCO POL. G JIQUILISCO USULUTAN','NA','TIENDA LA MILPITA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'11311','MARQUEZ TURCIOS MARLON IRVIN','CARRT. A SONSONATE CTGO. AL MERCADITO LOURDES COLON','338-4929','LA BODEGUITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11312','MARROQUIN ANTONIO JOSE RAUL','BARRIO AGUACAYO','376-5258','TIENDA CINDY','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11315','MARTA ALICIA MELGAR','CLLE A SAN CARLOS 100 MTS. AL SUR DE TEXACO SAN NICOLAS LEMP','2373-1243','TIENDA GEOVANY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13049','MARTA DILIA MENJIVAR DE ALVAREZ','MERCADO LAS MARGARITAS PORTON 7 PUESTO 130','2532-5644','DULCERIA ANDREA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'12359','MARTHA ALICIA TEJADA DE VILLALTA','6TA CALLE OTE. BO. EL CENTRO # 13 FTE. A MERCADO MPAL. AGUIL','2321-5151','TIENDA MARTITA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'10306','MARTHA CALLEJA DE ARGUETA','1RA. CALLE PONIENTE PUESTO EXTERIOR MERCADO ILOBASCO','384-2751','TIENDA LUPITA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11336','MARTINEZ AVALOS JOSE ANTONIO','AV. JUAN MANUEL RODRIGUEZ MDO. MPAL. #1 PIEZA #C ZACATE','334-1707','TIENDALA BALANZA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21883','MARTINEZ BONILLA MEYBELIN YESSENIA','BO.LA ESPERANZA FRENTE A BANCO DE AMERICA CENTRAL','78660807','TIENDA MAYBELLINE','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11337','MARTINEZ CARLOS ERNESTO','PASAJE 34  POLIGONO M CALLE PRUSIA COL. LAS MARGARITAS','292-8984','TIENDA CANASTITA HOGAREÑA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30973','MARTINEZ DE AYALA NOEMI','3a. CALLE ORIENTE ENTRE 4a. Y 6a. AV. NORTE','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11339','MARTINEZ DE GONZALEZ SILVIA ESTELA','5TA. AV. SUR MERCADO MUNICIPAL SAN VICENTE','393-2634','NEGOCIO DIVINO NIÂ­O','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11341','MARTINEZ DE NIETO JOSEFA','MERCADO CENTRAL EDIFICIO # 4 LOCAL # 232','NA','TIENDA JOSEFA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31106','MARTINEZ ELSY TERESA','8a.CALLE PONIENTE Y AVENIDA 2 DE ABRIL #2-1','24430075','99 Y MAS','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11344','MARTINEZ LUIS ALONSO','FINAL CALE DUKE B. EL CENTRO SAN JUAN TALPA','330-5076','TIENDA SANDI','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11345','MARTINEZ MEJIA REYNA MARISOL','6TA CALLE PTE. BO. EL CENTRO #1 NUEVA CONCEPCION','306-7487','TIENDA BENDICION','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14046','MARTINEZ MINERO JOSE ANTONIO','BARRIO EL CALVARIO FINAL CALLE PRINCIPAL MUELLE MUNICIPAL','7557-0017','MINI TIENDA JACKELINE','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11346','MARTINEZ OSCAR EDUARDO','AVENIDA OVIRINO CHAVEZ # 26','NA','TIENDA MARTINEZ','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'31204','MARTINEZ PEREZ BALTAZAR DONALD','5 AV.NORTE B.EL CARMEN FRT.IGLESIA LOS MORMONES','NA','TIENDA LUCY','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31127','MARTINEZ POLANCO JOSE DANIEL','15 CALLE PTE.  ENTRE 6TA Y 8TA AV.SUR CASA #7 SANTA ANA','79581398','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21807','MARTINEZ VASQUEZ KAREN EMELY','1 CUADRA SUR DE PNC BARRIO EL CALVARIO','7645-1161','TIENDA ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30727','MARVALLESOCIEDAD ANONIMA DE CAPITAL VARIABLE','12 CALLE OTE. Y 4TA AV. FRANCISCO MELENDEZ NTE. AHUACHAPAN','2443-1264','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13730','MARVIN ENRIQUE VILLALTA ARGUETA','10 AV.NORTE # 638-B SAN SALVADOR','25-41-37-83','VARIEDADES LA MEJOR','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30751','MARVIN OMAR VASQUEZ REINOSA','INTERIOR DEL MERCADO DE JUAYUA SONSONATE','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31125','MASIN DE MARIN ADRIANA LISSETH','1 AV.NTE. /5 Y 7 CL PTE  FRENTE A TDA. ROSITA  IZALCO','NA','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30254','MATA DELMY ARACELY','1 C. OTE Y 2 AV. NORTE BARRIO SAN PEDRO','NA','DELMY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30257','MATUTE NORA LIDIA','3? AV.SUR CALLE LIBERTAD CONTIGUO AL MERCADO DE TEXIS','470-0022','STA.ELENA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30841','MAYRA GUADALUPE LEMUS ALARCON','14 AV. SUR ENTRE 15 Y 17 CALLE PTE. # 27 SANTA ANA','NA','TIENDA MAIRA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11365','MAZARIEGO CAROLINA','MERCADO MUNICIPAL DE APOPA # 210','NA','TIENDA MAZARIEGO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21860','MEDRANO OCHOA HELEN ROCIO','AV.THOMPSON SUR CTGUO A FARMACIA JEHOVA MI PAST.BO.LA CRUZ','78742350','TIENDA YOSELIN','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'14143','MEJIA CORDOVA ROSARIO DE LA CRUZ','CALLE PRINCIPAL BARRIO SAN LUIS 10 MTS ORIENTE PNC','NA','TIENDA ROSARIO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21723','MEJIA DE CHEVEZ SANDRA YANETH','CALLE PRINCIPAL BARRIO EL CALVARIO #20','NA','TIENDA JACKELINNE','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'11367','MEJIA HERNANDEZ CARLOS','CALLE FCO. MORAZAN # 3  BO. EL CENTRO  SUCHITOTO','335-1114','TIENDA FEMEICA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11368','MEJIA MELGAR ANGEL ALBERTO','6A. CALLE PTE. Y 29 AV. NTE #24 BARRIO EL CENTRO','310-0653','TIENDAEL ANGEL','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11369','MEJIA MELGAR JOSE MARIO','BO EL CENTRO FTE AL PARQUE DULCE NOMBRE DE MARIA','356-9218','TIENDA EL ANGEL','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13898','MEJIA ORELLANA JOSE VIDAL','BARRIO EL CENTRO FRENTE A MERCADO MUNICIPAL','2346-3044','EL MERCADITO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'31113','MEJIA ORTIZ RICARDO','CENTRO COMECIAL MEGA PLAZA EDIFICIO B PASILLO 17 #338','76062791','TIENDA EL CHAPIN','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30261','MELARA ARDON FRANCISCO','ENTRADA PPAL. AL MERCADO MUNICIPAL CANTON CARA SUCIA','437-0089','TIENDA ROSITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14432','MELARA DE SOSA CARMEN MARIELA','AV.29 DE AGOSTO LOCAL 78-C COSTADO SUR MERCADO CENTRAL','72726213','.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30701','MELECIO DE JESUS CAMPOS ARANA','FINAL 12 CALLE OTE. Y CALLE A ASHAPUCO ENTRADA A TERMINAL AH','2413-2013','AGENCIA MELECIO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21712','MELENDEZ DE MARTINEZ MARLENI YANIRA','AV.JOSE SIMEON CANAS #126 BARRIO LA MERCED DENTRO PARQUEO','NA','TIENDA LESLY','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'11372','MELENDEZ SORTO VIRGILIO','1RA CALLE ORIENTE Y 2DA AVENIDA NORTE','335-3569','TIENDA SANTA ROSITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30263','MELENDEZ VALENZUELA MARIA TERESA','3ERA AV. SUR #3 BARRIO LA CRUZ ARMENIA','452-1199','TIENDA LA ECONOMICA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20707','MELVIN ALEXANDER ALVAREZ VASQUEZ','CALLE CHAPARRASTIQUE Y 5 AV NTE  308','6616809','COMERCIAL MELVIN # 1','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30866','MELVIN ARTURO MENDEZ RAMIREZ','MERCADO # 1 PZA. 19 Bo. EL CALVARIO FTE A PELETERIA CASTILLO','76-60-32-55','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13955','MENDEZ DE LARA DELMY PATRICIA','CALLE GERARDO BARRIOS 13 AV. NORTE #505 LOCAL #2','7545-4115','JOSUE 1:9','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14041','MENDEZ DUKE DANUBIA GUADALUPE','CENTRO COMERCIAL UNION LOCAL 10-C','6150-8082','DULCERIA MELISSA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31179','MENDOZA CALEL SANTOS','4.AV. SUR. BARRIO EL CALVARIO','75051656','TIENDA QUICHELENCE','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11379','MENJIVAR DE ACOSTA MARIA DEL CARMEN','BARRIO LA VIRGEN MERCADO MUNICIPAL','376-5197','TIENDA EL SOCORRO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14549','MENJIVAR MARINA','MERCADO DETALLISTA LA TIENDONA LOCAL 250','22861203','TIENDA MARINA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'30267','MERCEDES RIVAS','MERCADITO SUNCUAN PUESTO # 56','NA','TIENDA RIVAS','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14039','MERINO CHACON JACKELINE ELIZABETH','CENTRO COMERCIAL UNION #3-E','7717-4337','DULCERIA LA OVEJITA #2','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'11391','MERLOS HERNANDEZ FAUSTINO EDGARDO','2+ AV. SUR Y C. OTE. #1 BO. EL CENTRO LA REYNA','309-1505','TIENDA M&M','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11399','MIGUEL ANGEL MIGUEL','BO. S MIGUELITO AV. ESPAÂ­A PJE LINDO #128 COSTADO PTE DEL M','2235-0361','NA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'13750','MILAGRO DEL CARMEN  NUÃ‘EZ NUÃ‘EZ','COL. JARD. DON BOSCO PJE. 7   SENSUNTEPEQUE  CABAÃ‘AS','71-99-97-99','NA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11405','MILAGRO HERNANDEZ DE AGUILAR','PUESTO INTERIOR DEL MERCADO MPAL. DE SAN VICENTE #45','2393-5230','TIENDA MILAGRO','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11407','MILTON DANIEL ALFARO AVALOS','CARRT. A SONSONATE KM 23 1/2 LOURDES COLON','338-5330','TIENDA. EL MERCADITO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11413','MIRANDA DE AMAYA MARIA PRUDENCIA','MERCADO MUNICIPAL PUESTO # 9SAN RAFAEL OBRAJUELO','362-3040','TIENDA SAN RAFAEL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31184','MIRANDA GUILLEN ROBBY ALEXANDER','15 CALLE PTE.E/8ª Y10ª AV.SUR B.SAN SABASTIAN','78850557','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13822','MIRIAM IVETH ESCOBAR DE MEJIA','8A. CLL. PTE. BO. EL CALVARIO LOCAL #263 FTE BOTAS EL CHARRO','7824-3268','TIENDA LUNA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'20731','MIRIAN IVETTE CRUZ DE JOYA','AV. 2 DE ABRIL BO. EL CENTRO CONTIGUO A PAR DOS JUCUAPA','26652698','SUPER TIENDA MARVIN','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'12417','MOISES MARTIR PORTILLO','CENTRO COMERICAL SA MARTIN FTE. A B. AGRICOLA','NA','TIENDA  BENDICION DE DIOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30771','MOISESDE JESUS MORALES MORAN','PARQUEO DEL MERCADO MUNICIPAL #2 ACAJUTLA SONSONATE','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20739','MOLINA DE ORTEZ  ILVEA CRISTELA','BARRIO EL CENTRO CORINTO','NA','TIENDA EL CENTRO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20741','MOLINA HERNANDEZ LUIS ALONSO','BARRIO EL CENTRO CORINTO','NA','TIENDA EL CAMPO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31105','MOLINA MORALES RAYMUNDO','CALLE 15 DE SEPTIEMBRE #23','24020313','TIENDA LA ECONOMICA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14411','MOLINOS DE EL SALVADOR  S.A. DE C.V.','BLVD. DEL EJERCITO NACIONAL 50 AV. NTE. Y 9a. CALLE OTE.','2319-2557','MOLSA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11437','MONGE DE JOVEL MILAGRO','2+ AV. SUR #1 CTGUO. AL BANCO AGRICOLA','258-2115','TIENDA JEHOVA YIRE','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14244','MONGE DE JOVEL MILAGRO','BARRIO EL CALVARIO 1A.CALLE PTE. L-1 AL SUR MERCADO MPAL.','NA','TIENDA JEHOVA JIREH','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14245','MONGE DE JOVEL MILAGRO','KM.15 CARRETERA PANAMERICANA FRENTE A RETORNO','NA','TIENDA JEHOVA JIREH','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30281','MONROY HENRY','FRENTE A TERMINAL DEL MDO. COLON','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21824','MONTESINOS CHICAS MARVIN ALFREDO','BARRIO EL CENTRO CTG.A IGLESIA CATOLICA SAN ALEJO','60089180','COMERCIAL LUISITO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21825','MONTESINOS RAMOS EMMA ABIGAIL','BARRIO EL CENTRO  CONTIGUO  A COMERCIAL LUISITO','72551816','COMERCIAL Y VARIEDADES ROSA LIDIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21663','MONTOYA MARTINEZ KARINA LISSETTE','CALLE MASFERRER 1/2 CALLE AL SUR FARMACIA AGUILA','NA','0','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30968','MORALES LOPEZ JOSE','10a. CALLE ORIENTE #1-5 BARRIO EL CALVARIO','7832-2577','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14576','MORAN CASTANEDA JOSE ROBERTO','KM.13 CALLE TRONCAL DEL NORTE #9 BO.SAN SEBASTIAN','22744730','ROMAR','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'31192','MORAN DE HERRERA MAIRA ESTELA','MERCADO # 1 PUESTO # 72','70110249','.','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30941','MORAN MARROQUIN ERICK OTONIEL','39 AV.NTE ENTRE 2a. Y 4a. CALLE ORIENTE S/N','7602-9243','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21628','AVELAR DEL HIDALGO MARTHA ELIZABETH','BARRIO EL CENTRO PJE.#3 CASA#3 BERLIN  USULUTAN','7766-7085','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14030','CONTRERAS ARDON JOSE ELIAS','CALLE LA RONDA BARRIO EL CENTRO','2309-4262','TIENDA SAN ANTONIO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'30286','MORENA LIZETH LEMUS MOLINA','10 C. Pte. y Av. 2 de Abril Barrio. El Calvario','2443-0113','MORENA LIZETH LEMUS MOLINA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11450','MORENO DE ALVARADO MARIA GUADALUPE','5TA. AV. #8 BIS SAN JUAN DE DIOS SAN VICENTE','393-4995','TIENDA LA DIVINA PROVIDENCIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11451','MORENO IGINIA','5TA.AV. SUR MERCADO MUNICIPAL FTE. A FARMACIA','NA','TIENDA HIGINIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14513','MORENO MEJIA MANUEL ANTONIO','3A CALLE.OTE.Y 8A AV.NORTE EDF.MAXI BODEGAS # 230','79890442','DULCERIA ARMANDITO','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21818','MORENO MELENDEZ JUAN ISMAEL','1.AVENIDA SUR 402  BA. LA MERCED  SAN MIGUEL','72442861','TIENDA BRANDON','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21819','MORENO MUNOZ SANTOS CESAR','BARRIO EL CENTRO CHIRILAGUA SAN MIGUEL','75174712','MINI SUPER MILENIUM','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14374','MORENO PASCUAL ALBERTO','4A.CALLE ORIENTE #12 BARRIO SANTA BARBARA','7697-9197','TIENDA DON PASCUAL','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30459','NAHUN ARNOLDO RODRIGUEZ','10 AV. SUR ENTRE 13 Y 15 CALLE PTE. FTE HOTEL POSADA DEL REY','7131-7515','COMERCIO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11460','NAJARRO DE PARADA MARIA ANTONIA','AV. DELGADO BO. CONCEPCION #6','310-2585','TIENDAASTRID','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11461','NAJARRO HENRIQUEZ MOISES','CALLE QUIÂ­ONEZ DE OSORIO #23 SAN VICENTE','393-0940','TIENDA M & B','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11462','NAJARRO HENRIQUEZ SALOMON ANTONIO','5TA AV. SUR #4 SAN VICENTE','393-1653','TIENDA MELVI ZULEYMA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30714','NANCY YAMILETH MARTINEZ HERNANDEZ','MERCADO COLON SECC. "E" PUESTO # 19 SANTA ANA','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'12415','NATIVIDAD MERCEDES FLORES DE RODAS','CONDOMINIOS SAN MARTIN FRENTE AL B.A.C. SAN MARTIN','NA','TIENDA  FLORES','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14523','NAVAS MEJIA JAIME ADUL','FRENTE A PNC.BARRIO EL CENTRO','23569383','SUPER TIENDA EL BARATAZO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14554','NEGOCIOS MORENO S.A DE C.V','4A CALLE ORIENTE # 5 BARRIO SANTA BARBARA','23822270','MORENO PASCUAL ALBERTO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21325','NELLY ELOISA CANO DE VASQUEZ','4TA.  PTE. CTGO. DISTRIB. KARINA FTE. ALMERADO  STA. ROSA DE','78912332','TIENDA YASMIN','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30287','NELLY MIRIAM BARRIENTOS DE MANCIA','CALLE SIMON BOLIBAR BARRIO EL CENTRO SAN JULIAN SONSONATE','2487-0327','GRACIAS MARIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21307','NELSON RICARDO CARIAS MOLINA','CALLE MASFERRAR CASA 11 BO. CONCEPCION SANTIAGO DE MARIA','NA','TDA. BRITHANY','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'11471','NIDIA ESCOBAR DE CORNEJO','STA. AV. #5 BIS MDO. MPAL. BO. CONCEP. CALLE 6 PTE #71','7106-8248','TIENDA NIDIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'20760','NORA ARELY GUZMAN DE SANDOVAL','AV. MORAZAN B.ELCENTRO COST.PNT.MERC MUNICIPAL','604-3024','SATURNINO SANDOVAL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13643','NORMA BEATRIZ ARAGON DE MEJIA','BO. EL CALVARIO 2DA CALLE PTE. FRENTE A FERRET. ADIMACON COJ','7628-2114','TIENDA ANDROMEDA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11485','NORMA DEVORA MOJICA','AV. JUAN BERTI #2 CIUDAD DELGADO SAN SALVADOR','7978-8668','TIENDADA NORMA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'11487','NORMA GUADALUPE MACHON DE MIRANDA','AV. RAUL CABRERA  17 BO. SAN JUAN  COJUTEPEQUE','NA','TIENDA  BAMBINOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11489','NORMA ISABEL HERNANDEZ LEIVA','CALLE DANIEL HERNANDEZ #1-1 PTE. PARQUE','2288-6192','TIENDA VIROLEÃ‘A','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30915','NOVA DUARTE ESTELA MARISOL','2a. CALLE 2 Y 4 FRENTE A ALMACEN BOMBA','NA','TIENDA NOVA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14383','NUÃ‘EZ MERINO JOSELYN ESTEFANY','NA','NA','DULCERIA OVEJITA 3','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'11493','NUBIA IDALIA MELENDEZ DE ZELAYA','1RA CALLE PTE. ENTRE 1RA Y 2DA AV.NTE.# 12PTO. LA LIBERTAD','335-3069','TIENDAEL SINAI','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21428','NURIA JOSEFINA VILLATORO DE ROMERO','CALLE PRINCIPAL BARRIO EL CENTRO FRENTE AL PARQUE','NA','NURIA JOSEFINA VILLATORO DE ROMERO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21122','CRISTINA DE JESUS ALVARENGA','CALLE GUANDIQUE FERNTE A COMERCIAL PORTILLO BERLIN USULUTAN','7287-0448','CRISTINA DE JESUS ALVARENGA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21396','DOMINGO ALEXANDER BONILLA ALVAREZ','3RA AV. SUR Y CALLE GUANDIQUE BO. EL CNETRO BERLIN USULUTAN','NA','DOMINGO ALEXANDER BONILLA ALVAREZ','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'11500','OCHOA HECTOR ANTONIO','C. PPAL. FTE. A MERCADO MUNICIPAL N. CONCEPCION','306-7797','TIENDA BELEN','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11501','OCHOA VIUDA DE CARDONA CONCEPCION','MERCADO MINICIPAL PUESTO 23','399-7879','TIENDA SAN ANTONIO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13756','OCTAVIO RAFAEL GONZALEZ IRAHETA','AVENIDA JOSE MANUEL GALLARDO PLAZA EL CARMEN LOCAL 6','NA','NA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'20781','OLMER ODILARDO HERNANDEZ SORTO','4TA. CALLE OTE. BO. SAN JUAN 4 CHINAMECA','NA','SUPER DEPOSITO SANTA ROSA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21567','OLMER ODILARDO HERNANDEZ SORTO','CALLE PRINCIPAL 100 MTS ADELANTE DEL PARQUE MONCAGUA','NA','SUPER SANTA ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11506','OMAR ANTONIO JUAREZ CHAVEZ','AVENIDA MELVIN JONES #4-2 SANTA TECLA','NA','TIENDA EL TREBOL','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'14050','ORELLANA ALBERTO GRISELDA ERNESTINA','LOTIF. EL LLANO 1 POTRERO GRANDE EL TULE PLG#11 LOTE#7 #239','NA','NA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11555','ORELLANA CELIO ERNESTO','6TA. NTE. #17-B BARIO LOS REMEDIO SENSUNTEPEQUE','382-3329','TIENDA  JOSELIN','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14542','ORELLANA CHAVEZ CLAUDIA LISSETTE','LOCAL # 188 EDIFICIO # 10 MERCADO CENTRAL','72020573','DULCERIA LISSETTE','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14399','ORELLANA CORNEJO HAYDEE ARMINDA','29 AV.CENTRO COMERCIAL LA UNION LOCAL 20 B SAN SALVADOR','2516-0189','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14408','ORELLANA DE PINEDA JOHANNA CAROLINA','6 CALLE PONIENTE CENTRO COMERCIAL LA UNION LOCAL 26','75530705','TIENDA OVEJITA # 1','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30314','ORTIZ DE ZAPE HERMINIA DE LAS MERCEDES','AV. ROBERTO CARLOS #16 BARRIO DOLORES IZALCO','453-5194','TIENDA PROVIDENCIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14058','ORTIZ LOPEZ MARIA ESTELA','CALLE EL CALVARIO MERCADO MUNICIPAL LOCAL A-5','7100-2013','CEREALES BETTY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11560','ORTIZ MARROQUIN MIGUEL ANGEL','1+ CALLE PONIENTE Y 11+ AVENIDA NORTE  BO. EL CALVARIO','372-4452','TIENDA SAN MIGUEL','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13905','ORTIZ MEJIA MIGUEL ANGEL','1A.AV.NTE.BARRIO EL CALVARIO LOCAL2 FRENTE FARMACIA FAMILIAR','NA','TIENDA EL CALVARIO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'31182','ORTIZ MORAN MARVIN ERNESTO','COL.EL PEDREGAL CLL.CENTROAMERICA PSJ.EL SALVADOR #4','NA','.','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11572','OSORIO JORGE ALBERTO','MERCADO MUNICIPAL DE TECOLUCA PUESTO #1','NA','TIENDA JORGE','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30317','OSORIO MENDEZ JOSE ALFREDO','3ERA AV. APARTAMENTOS SILHY LOCAL 7 Y8 MERCADO CENTRAL SONSO','451-0911','TIENDA DEL HOGAR','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30318','OSTORGA DE AREVALOHILDA NELLY','CTGO A UNIDAD DE SALUD CTON METALIO COL SAN JOSE','460-9019','TIENDA BENDICION DE DIOS','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30322','PALACIOS DE BARILLAS EDIBERTA','4 C. Y 2 AV. SUR Y 4 C. OTE #6 BARRIO AL CENTRO','NA','EL ANGEL','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11581','PALACIOS WILLIAM EDUARDO','5TA. AV. SUR #10 SAN VICENTE','393-1106','NEGOCIO EDUARDO','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14387','PANAMENO HERNANDEZ MILTON','1° CALLE PONIENTE LOCAL 1 EDIFICIO # 220 S.S','7675-6521','DULCERÍA SANTA BENDICIÓN','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31103','PAREDES PACHECO KEVIN FRANCISCO','URB.LAS AMERICAS 1 CLLA PG B-2 AV.LAS AMERICAS','75207778','TIENDA EMANUEL','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21817','GOMEZ ORELLANA JOEL ISAI','BARRIO CONCEPCION ENTRE 1 Y 3 AV.NORT 1CDRA ANTES DEL PARQUE','NA','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'14378','GRUPO NSV S.A. DE C.V.','CARRETERA LITORAL KM. 84 CANTON SAN NICOLAS LEMPA','7603-6535','LUIS EDUARDO SANTELIS-GERENTE ESTACION','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11587','PATRICIA REBECA MENJIVAR DE CASTELLANOS','1RA CALLE ORIENTE #1 BARRIO SAN SEBASTIAN','NA','TIENDA JOSAFAT','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21611','PAUL URRUTIA','CALLE PRINCIPAL A CHAPELTIQUE CONTIGUO A CAJA DE CREDITO','78355009','TIENDA MARVIN','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30926','PAZ ARIAS JORGE ADALBERTO','4a. CALLE PONIENTEBARRIO VERACRUZ #3-5','NA','AGENCIA DIVINA PROVIDENCIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11596','PEÂ­A ESCOBAR DANIEL','1RA CALLE PONIENTE Y 1RA  AV NORTE ILOBASCO','384-2724','INVERSIONES MI NUEVA ESPERANZA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30797','PEDRO ANTONIO VILLATORO','3a AV. SUR # 12 FTE.A CAJAS DE CREDITO ARMENIASONSO','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11601','PEDRO JUAN ABARCA ZEPEDA','COL. SAN JOSE DEL PINO ZONA A POL. B # 10','NA','TIENDA PEDRO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11602','PEDRO JUAN ESCOBAR','CALLE PRINCIPAL NO. 2  ANTES DE LA CEIBA ILOBASCO','780-2637','TIENDA PRINCIPAL','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'10800','PEDRO PABLO NAJARRO HENRIQUEZ','CALLE QUIÂ­ONES DE OSORIO #27 SAN VICENTE','766-1255','TIENDA NATHALIA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30332','PERAZA MAGANA JOSE DAVID','4 AV NORTE METAPAN','4000271','DORIS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11605','PERAZA RIVERA VICTOR MANUEL','AV. MORAZAN #33 SAN MARTIN','258-0092','TIENDA  AMARICA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30333','PERDOMO HENRY LEONEL','CALLE CENTRAL CORNELIO 4-2 ATIQUIZAYA','2444-1685','SUPER TILITA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31200','PEREZ CRUZ NELSON ENRIQUE','CALLE MERCEDES CACERES JUAYUA','70303090','SUPER 99','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11607','PEREZ DE FUNES BLANCA ESTER','SANTIAGO TEXACUANGOS #13 CALLE PPAL.','220-8076','TIENDA ESTER','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11608','PEREZ DE MERINO ROSA CECILIA','AVENIDA JUAN BERTIS # 4 CUIDAD DELGADO','276-3003','TIENDA CECY','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'11609','PEREZ DE RIVERA ANA DOLORES','C. AL CEMENTARIO BO. EL CALVARIO TEJUTLA','353-6011','TIENDA RONNYE','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11610','PEREZ MARIA MAGDALENA','CALLE PPAL. BO EL CENTRO SAN LUIS LA HERRADURA','365-0142','TIENDA MARIA MAGDALENA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31122','PEREZ MORALES MARIO RAFAEL','BO.SAN MARTIN CL JOSE LUIS CARRANZA CASA #6 100 MTS DE ANTEL','24370099','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13906','PEREZ ZELAYA JENNY ELIZABETH','4A.AV.SUR #20 FRENTE ALMACEN LA BOMBA','NA','TIENDA LA BENDICION','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11611','PERSY ALEXANDRA ORTIZ DE CORDOVA','CENTRO COMERCIAL CONDOMINIOS SAN MARTIN','7775-9240','TIENDA KATERIN','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30996','PINEDA ALEXANDER','Bo. EL CALVARIO #10 FINAL AV. 2 DE ABRIL Y 12 CALLE PONIENTE','2413-0634','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14097','PINEDA DE QUIJADA MARTA ELSI','4A. CALLE PONIENTE #1278 BARRIO EL CENTRO','2306-7967','TIENDA EL CHELITO','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'21893','PINEDA DE TORRES REINA MARGARITA','BO.EL CALVARIO FRENTE A CAJA DE CREDITO','78982192','TIENDA MARGARITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14062','PINEDA FUENTES ROSA MIRIAM','CALLE PRINCIPAL LOURDES COLON CARRETERA A SONSONATE','7735-0328','NA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11616','PINEDA QUIJADA JOSE NELSON','AV. NORBERTO HUEZO','201-0493','TIENDAALE','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30990','PINTO RIVERA OSCAR OVIDIO','CALLEJON EL TAMARINDO Y 8a. AVENIDA SUR','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11617','POLANCO FIGUEROA JORGE OBED','12+ CALLE PONIENTE # 423-B ZONA MERCADO CENTRAL','221-6345','TIENDA OBED','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31007','POLANCO PINEDA DIANA MAGDALENA','BARRIO SANTA CRUZ 4a.AV.SUR CALLEJON TAMARINDO 2a.CLL.OTE.','NA','TIENDA DIANITA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14433','POLICIANO DE ZAVALETA ADALILA','COL.HERMOSAS PROVIDENCIAS CALLE CAMPOS VERDES #2 LOURDES','NA','.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11621','PORTILLO DE ALVARADO MARIA ELIZABETH','BO. LAS DESAMPARADOS 6TA AV. NTE #2 ILOBASCO','384-3316','TIENDA  MARIA AUXILIADORA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11625','PORTILLO LANDAVERDE JOSE RIGOBERTO','CTON. EL JARDIN CRRT. TRONCAL DEL NTE KM 73 V2','304-6609','TIENDA YASMIN','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13754','PORTILLO VICTORIA ELISEHT','CALLE CIRIACO LOPEZ #1-11 B','2313-6938','TIENDA LA CANASTITA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11626','POSADA JESUS ANTONIO','BO. LAS DELICIAS SAN IGNACIO','352-9274','SUPER LAS DELICIAS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'31038','POSADAS TRINIDAD TERESA CAROLINA','1a. CALLE PONIENTE ENTRE 6a./8a. AVENIDA SUR','NA','TIENDA CAROLINA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21171','PRODUCTOS BASICOS RAULITO S.A. DE C.V.','4A. CALLE ORIENTE  407 BARRIO LA CRUZ','NA','PRODUCTOS BASICOS RAULITO  S.A. DE C.V.','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13749','PUMA AEROPUERTO','KM. 39 AUTOPISTA AEROPUERTO INTERNACIONAL COMALAPA LA PAZ','2339-8107','MARCOS ANTONIO SOLIS OLIVA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13671','PUMA APOPA','CARRETERA TRONCAL DEL NORTE KM. 12 1/2 APOPA','2216-0084','LUIGEMI S.A. DE C.V.','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13582','PUMA ATEOS','12 CALLE PTE. COL. EL ROSAL CASA 2613 SAN SALVADOR','NA','INSUMOS PRODUCTOS Y SERVICIOS S.A. DE C.V.','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13683','PUMA COJUTEPEQUE','ANTIGUA CARRET. PANAM. KM 33 1/2 BO. CONCEPCION COJUTEPEQUE','2372-0274','SERVICENTRO RIVERA S.A. DE C.V.','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13945','PUMA COMALAPA','CARRET.ZACATECOLUCA KM.32 1/2 CTON.COMALAPA AUTOP.EL LITORAL','NA','REYES ALFARO ISMAEL','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14156','PUMA COMALAPA','CARRETERA A ZACATECOLUCA KM.32 1/2 CANTON COMALAPA','2533-4828','ISMER S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13865','PUMA COSTA DEL SOL','KM. 57.5 CARRET. A COSTA DEL SOL','NA','RAUL RAFAEL SOSA CASTELLANOS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14306','PUMA EL COYOLITO','CARRET. TRONCAL DEL NORTE KM.48 1/2 CASERIO EL COYOLITO','NA','ANGREY S.A. DE C.V.','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'13567','PUMA EL PEDREGAL','AUTOPISTA A ZACATECOLUCA CARRT. LITORAL KM 41 SAN PEDRO MASA','7737-1064','RAUL RAFAEL SOSA CASTELLANOS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14049','PUMA GUAZAPA','CARRETERA TRONCAL DEL NORTE KM.25','NA','REYES MARTINEZ H. ANGEL ANTONIO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13907','PUMA LAS PAVAS','CARRETERA PANAMERICANA KM 32 1/2 DESVIO MONTE SAN JUAN','NA','INVERSIONES RIVERA S.A. DE C.V.','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14539','PUMA SAN MARTIN 2','KM.19 CARRT.PANAMERICANA CANTON LA FLOR','76055912','RAUL RAFAEL SOSA CASTELLANOS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14124','PUMA VISTA HERMOSA SUPER 7 MARKET','SDA. BUGAMBILIAS RESID.SAN SEBASTIAN #305-A','7468-2466','HERNANDEZ MUNOZ JOSE DOLORES','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14094','QUINTEROS DE REYES LILIAN','CANTON COMALAPA FRENTE A GASOLINERA PUMA','6141-3001','TIENDA ELDITA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11633','QUINTEROS ORELLANA RAMON ARMANDO','2DA. AV. SUR CASA #6 BO. SANTA BARBARA','382-0645','TIENDA QUINTEROS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'31165','QUITENO LOPEZ DAVID ORLANDO','BORRIO SAN JOSE LOCAL # 10 CALLE PONIENTE','63161115','TIENDA EMANUEL','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30502','RAFAEL ANTONIO GALAN VANEGAS','14 AV SUR CONTIGUO A COMEDOR SEÃ±ORIAL MERCADO COLON','NA','TIENDA HERMANO GALAN','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13652','RAFAEL GIOVANNI CRUZ CISNEROS','FINAL C S/LEY # 18 FTE A DEPOSITO DENYS AGUILARES','79-05-08-25','NA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'30913','RAIMUNDO HERNANDEZ ANGEL ERNESTO','10 AV. SUR ENTRE 15 Y 17 CALLE PTE. #56','NA','TIENDA LOS ANGELES','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31191','RAMIREZ ALBANES BLANCA ESTELA','CALLE ASHAPUCO E/10A Y 12A CALLE ORIENTE','61795977','.','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11641','RAMIREZ DE RECINOS MARIA ANTONIA','CARRETERA A SONSONATE KM 31 ATEOS','345-6374','TIENDA MIMA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11638','RAMIREZ DE UMAÂ­A TATIANA LISETH','CLLE. PPAL. A LA PAR DEL MERCADO TEJUTLA','353-6163','TIENDA SAGRADA FAMILIA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11642','RAMIREZ MEJIA ESPERANZA ELIZABETH','1? C. PONIENTE ZONA DEL MERCADO','NA','TIENDA SAN ANTONIO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11643','RAMIREZ RAFAEL ANTONIO','CALLE GERARDO BARRIOS Y 9VA AV. SUR SAN SALVADOR','222-8768','DULCERIA RAMIREZ','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'31112','RAMOS FUENTES ALFREDO EUGENIO','4a. CALLE PONIENTE Y 1a. AVENIDA SUR','6132-6139','TIENDA BENDICIÓN DE DIOS','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31211','RAMOS RIVAS SANDRA BEATRIZ','CALLE 15 DE SEPT.ENTRE 6A Y 8A AV.NORTE #14','77748943','TIENDA ALEXANDER','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20849','RAQUEL ENEIDA SARMIENTO','4A AV. Y 2DA AV. A SANTA ROSA DE LIMA','NA','SERVITRATOS ALEXANDER','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30978','RAUDA DE GUZMAN MARGARITA CLARIBEL','1a. CALLE PONIENTE BARRIO SAN JOSE','NA','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21566','RAUL UMANZOR','BARRIO EL CENTRO  11 SANTIAGO DE MARIA  USULUTAN','26630431','SUPERMERCADO PARA TODOS','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14146','RAYMUNDO DE ORTIZ MARIA ESTHER','BARRIO EL CALVARIO 9A.AV.NTE. Y CALLE RODOLFO RUANO #677','NA','TIENDA VICTOR','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11649','REALEGUEÂ­O DE MAJANO ROXANA','PJE. ARISTIDES ROBLE COSTADO SUR MDO. MPAL. BO. EL CENTRO S.','NA','TIENDA ROXANA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11650','REALEGUEÂ­O MIRNA GUADALUPE','PJE. ARISTIDES ROBLE COSTADO SUR MDO. MPAL. S. NONUALCO','369-0263','TIENDA MORENA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30548','REBECA TATIANA PINEDA HERNANDEZ','ZONA #3 PUESTO #35 MERCADO CENTRAL DE SONSONATE','7119-2995','TDA. JAHONA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11652','RECINOS DIAZ JESUS ALEJANDRA','PARQUEO DEL MERCADO # 2 APOPA','216-1148','TIENDA MERCEDES','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11653','RECINOS HERNANDEZ ALEJANDRINA','6TA AV. NTE CASA #17 SENSUNTEPEQUE','382-3183','TIENDA CINTHYA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30351','RECINOS JULIO GERMAN','ESQUINA OPUESTA A TERMINAL MCDO.COLON','NA','BOLA DE ORO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30578','REINA DEL CARMEN BARRERA PEREZ','MERCADO MUNICIPAL #1 CHALCHUAPA','NA','TDA. REINA DEL CARMEN','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21310','REINALDO SORTO RIVERA','BARRIO EL CENTRO COSTADO ORIENTE DEL PARQUE JUCUAPA','72100519','SUPER SANTA ROSA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30778','RENE ALBERTO LEON ARDON','4TA CALLE PONIENTE AV. R. CAMPOS Y 1RA SUR #1-9 SONSONATE','NA','TIENDA TINITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30763','RENE ALFREDO AREVALO CHEDRAUI','10MAC. PTE. 2DA AV. NTE. FRENTE A COLEGIO MONTE CARMELO','7740-5509','AGENCIA EL ESPINO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11666','RENE ALFREDO QUINTANILLA','RES. EL ROSAL 2 POL. U 36 AV. DELGADO A LA PAR DEL MISTER','7969-1642','MARIA JOSE','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21102','RENE ARSENIO GOMEZ','2DA. C. PTE. B. SAN ANTONIO STGO. DE MARIA USULUTAN','2663-0544','TIENDA MARITO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30634','RENE BRIZUELA VILLEDA','COL. LOMAS DEL VALLE CALLE AL TANQUE Â·2 ATIQUIZAYA','NA','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21293','RENE HIPOLITO ORTIZ HERNANDEZ','3RA C. OTE. BO. EL CALVARIOI 12 SAN FRANCISCO GOTERA','26540465','S. TIENDA CRISTAL','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31104','REYES BARAHONA OSCAR OSWALDO','2a.CALLE ORIENTE BARRIO EL CENTRO','79103163','TIENDA LA BENDICION DE DIOS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11671','REYES CORBERA FLOR DEL ROSARIO','CASA MATRIZ 5TA AV. NTE. #6 BO. EL CALVARIO SAN VICENTE','393-0408','TIENDA FLORIDA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21820','REYES DE DIAZ FLOR MARISTELA','3 CALLE ORIENTE BARRIO EL CALVARIO #5 SAN FRANCISCO GOTERA','78400505','LÁCTEOS DIAZ','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20868','REYES DE HERNANDEZ ROCIO ESMERALDA','2A CALLE PTE NO. 307 BIS','26611385','TIENDA LA FIESTA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'20869','REYES DE MEDRANO  SONIA VALENTINA','CTON TULIMA CAS EL TAMARINDO  CALLE ANAMOROS','NA','TIENDA MEDRANO REYES','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11672','REYES DE ORELLANA CECILIA','2DA AV. SUR #5 BO. SANTA BARBARA SENSUNT','382-0015','TIENDA  EL BARATILLO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14089','REYES GRANADOS ANGEL ISRAEL','JARDINES DE CUSCATLAN POLIGONO "C" #36 CALLE Y AVENIDA "L"','NA','TIENDA KENY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14090','REYES GRANADOS ANGEL ISRAEL','CALLE CIRIACO LOPEZ #2-5 LOCAL #3 BARRIO EL CENTRO','2288-4481','TIENDA KENY','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13268','REYES ROCHEZ  S.A. DE C.V.','LOCAL 70-80 CENTRO COM. SAN MARTIN S.S.','NA','REYES ROCHEZ  S.A. DE C.V.','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21682','REYES RUBIO MARIA ELVA','CALLE PRINCIPAL BARRIO EL CENTRO SALIDA A NUEVA ESPARTA','72578115','TIENDA ELVA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20872','REYNA DE LA PAZ ESCOBAR DE MARQUEZ','15 CALLE OTE.Y 32 AV.SUR BARRIO EL CENTRO','75284118','VARIEDADES REINITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21501','REYNA ELIZABETH PORTILLO GONZALEZ','BARRIO EL CENTRO COL. FRANCISCO GAVIDIA  CASA # 2 JUCUAPA','NA','REYNA ELIZABETH PORTILLO GONZALEZ','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'11681','REYNA MARISOL MARTINEZ','6TA CALLE PTE Y 3RA AV. SUR BO. EL CENTRO NUEVA CONCEPCION','2306-7487','TIENDA LA BENDICION','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'30599','RICARDO ALBERTO ZEPEDA PINEDA','CALLE Y #36 COLONIA ACAXUAL ACAJUTLA SONSONATE','NA','NA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20878','RICARDO FLORES ROSALES','7 AV NORTE  418','26696576','TIENDA SAN PABLO # 11','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'11688','RICARDO FRANCISCO ZUNIGA MELGAR','SUCHITOTO FRENTE A IGLESIA  CALLE SAN ANTONIO #8 BO. EL CENT','NA','TIENDA  SAN ANTONIO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30721','RIGAR ERNESTO ORELLANA RENDEROS','MERCADO COLON BODEGA #3 SECCION "D" SANTA ANA','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20882','RIGOBERTO BENITEZ PORTILLO','FINAL 4TA AV NTE 9','6630920','TIENDA ROSY','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13207','RIGOBERTO GAMEZ','MCDO. NUEVO PREZA #15 AV. JUAN MANUEL RODRIGUEZ ZACATECOLUCA','NA','N','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11694','RIVAS ALFARO NURIS JETZABEL','5TA. AV. SUR FTE. A DESPENSA FAMILIAR SAN VICENTE','NA','TIENDA TATIANA CAROLINA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11695','RIVAS ALFARO ROXANA ELIZABETH','CALLE QUIÃ‘ONES DE OSORIO','393-3291','TIENDA GERALDINA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21891','RIVAS DE CHICAS EVELIN YASMIN','AV.MORAZAN BO.EL CALVADRIO #20','78404799','TIENDA LAS ABEJAS','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'14103','RIVAS ESCOBAR ANA CECILIA','AV. JUAN BERTIS 1 LOCAL #6','6313-4688','TIENDA NUEVA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'31091','RIVAS HERRERA RAFAEL ESTUARDO','10a. CALLE PONIENTE Y AVENIDA 2 DE ABRIL #2-2A','2413-4937','DESPENSA MAMALITA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30943','RIVAS ORTEGA DAYSI CECILIA','CALLEJON GUZMAN COMERCIAL LAZO LOCAL #4 MERCADO COLON','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11702','RIVAS OSCAR ANTONIO','2DA AV. SUR #5 BO. SANTA BARBARA','382-2636','TIENDA RIVAS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11703','RIVAS URQUIA MARIA DE LOS ANGELES','CALLE QUIÂ­ONEZ DE OSORIO #18 Y 20 2 L Y 2 EXTERIOR MDO. MPAL','392-0491','NEGOCIO LOS ANGELES','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30918','RIVERA ASENCIO MARILENA ESPERANZA','4a. CALLE PONIENTE 1-141 BARRIO TALULE','NA','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11704','RIVERA CARABANTES MARIA REYNA','12+ CALLE PONIENTE GALERA # 6 # 75-76 SAN SALVADOR','NA','DULCERIA REYNA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'11705','RIVERA DAMIAM','1RA AV. NTE A LA PAR DE LEE SHOES','NA','TIENDA  MILENIUM','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'11707','RIVERA DE FLORES DOLORES RAQUEL','MERCADO DE SOYAPANGO 2+ ETAPA # 183PUESTO INTERIOR','NA','TIENDA RAQUEL','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'31123','RIVERA GARCIA LEDI ENMANUEL','BO. EL CALVARIO 6A CALLE OTE. CASA # 19 ATACO AHUACHAPAN','76955750','.','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'21738','IRAHETA MARTINEZ MARLON ORLANDO','BARRIO EL CENTRO FRENTE AL MERCADO COSTADO SUR','NA','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'20413','JOSE ANDRES PALOMO','3A. AVE. SUR Y 4  PONIENTE BERLIN','663-3138','JOSE ANDRES','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21861','RIVERA RUIZ ROBERTO IVAN','3 CALLE PONIENTE BARRIO EL CALVARIO','70436300','TIENDA RIVERA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21866','RIVERA TORRES S.A DE C.V.','2A. CALLE ORIENTE Y 1A. AV.SUR BARRIO EL CENTRO','26041904','RIVERA DE GUEVARA SANDRA IRIS','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14422','RIVERA ULLOA KELVIN ROBERTO','4a. AV. SUR POLIGONO C #12 URBANIZACION LA PROVIDENCIA I','7088-7466','VENTA DE HUEVOS Y LÁCTEOS JUNIOR','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21638','ROBERTO ANTONIO VALDEZ','CALLE 14 DICIEMBRE COSTADO NORTE MERCADO MUNICIPAL','NA','CEREALES LA CEIBA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14316','JOSE ELIAS ESCOBAR ROMERO','KM 58 1/2 CARRETERA LITORAL','NA','ROGELIO FUENTES','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'14317','JOSE ELIAS ESCOBAR ROMERO','CARRETERA EL LITORAL KM. 65 1/2','NA','MIGUEL ORLANDO PALACIOS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21597','JOSE FAUSTINO CARRANZA COREAS','CALLE PPAL. MERCEDES UMANA SALIDA A BERLIN  USULUTAN','77-38-13-46','JOSE FAUSTINO CARRANZA COREAS','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'31110','MAGANA MAGANA LISSETTE MARISOL','14 Y 16 AV.SUR PASAJE GUZMAN SANTA ANA','70507708','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21081','MARIA LASTENIA GUEVARA','BO. EL CENTRO COL. ATLACATL #14 LOLOTIQUE','NA','MARIA LASTENIA GUEVARA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21466','MAYRA CONCEPCION LOPEZ DE BATLLE','BARRIO EL CALVARIO ALEGRIA USULUTAN','7539-6937','MAYRA CONCEPCION LOPEZ DE BATLLE','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21596','MIRNA DINORA OSTORGA GURDADO','CALLE PPAL. BERLIN FRENTE AL PARQUE 1A. CALLE PONIENTE USULU','70-44-06-74','MIRNA DINORA OSTORGA GURDADO','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21877','MORATAYA SIGARAN EVELIN JEANETH','BARRIO CONCEPCION 2ª CALLE OTE. Y CALLE PPAL.','75391525','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'13455','OBED ENRIQUE GARAY SIGUENZA','COL. PROVIDENCIA SAN MARTIN CTGO. A LA HUELLA DE ORO SAN MAR','NA','OBED ENRIQUE GARAY SIGUENZA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'13255','PATRICIA MARGARITA ALFARO DE VENTURA','CARRT. LITORAL GASOLINERA ESSO PLAYON TECOLUCA SAN VICENTE','7564-9048','PATRICIA MARGARITA ALFARO DE VENTURA','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21773','RIVERA JIMENEZ NORMA ELIZABETH','CALLE DR. A.GUANDIQUE ESQUINA OPUESTA S OESTE DEL PARQUE','7211-9378','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21510','ROBERTO ARQUIMIDES  OCHOA GARCIA','BARRIO EL CENTRO AV. ATLACATL  LOLOTIQUE  SAN  MIGUEL.','2680-9533','ROBERTO ARQUIMIDES  OCHOA GARCIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21511','ROBERTO ARQUIMIDES  OCHOA GARCIA','BARRIO EL CENTRO AV. ATLACATL LOLOTIQUE  SA  MIGUEL','26-80-95-33','ROBERTO ARQUIMIDES  OCHOA GARCIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21512','ROBERTO ARQUIMIDES  OCHOA GARCIA','BARRIO EL CENTRO AV. ATLACATL. LOLOTIQUE SAN MIGUEL','77-48-07-83','ROBERTO ARQUIMIDES  OCHOA GARCIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11713','ROBERTO SANTAMARIA SALGUERO','MERCADO MPAL. EL GUAYABAL FTE. EN PARQUE POR VENTA DE PELICU','NA','TIENDA SANTA MARIA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11716','RODAS MARIA GENARO','2DA AV. SUR BARRIO STA. BARBARA #8 MERCA','382-0390','TIENDA RODAS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30444','RODOLFO ARTURO SANCHEZ CONTRERAS','FINAL 1RA AV. NTE. #6 FRENTE A LOTERIA DE CARTONEZ AHUACHAPA','NA','TIENDA BUEN PRECIO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'12263','RODRIGO RAMOS CRUZ','COL. JARDINES DE DON BOSCO PJE 7 #1 SENSUNTEPEQUE','7590-8694','TIENDA GENESIS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'31197','RODRIGUEZ ACOSTA ZOILA MARGARITA','8 CALLE PTE. Y AV.2 DE ABRIL','24134861','TIENDA ESTUARDO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31187','RODRIGUEZ DE ARDON SILVIA JOSEFINA','BARRIO SAN JOSE AV.EMETERIO RUANO 4 CALLE PONIENTE','77356369','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11720','RODRIGUEZ DE IRAHETA VIRGINIA EVELIN','PLAYA EL MAJAHUAL','NA','CENTRO ESCOLAR EL MAJAHUAL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21690','RODRIGUEZ DE RIVERA LUCIA ARELY','CALLE MONSEÃ‘OR ROMERO Y 5a.AV.NTE. LOCAL #16 Bo.EL CENTRO','NA','CALZADO Y VARIEDADES SULY','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'13918','RODRIGUEZ DE SIBRIAN LISSETTE GERALDINA','1A. AVENIDA NORTE BARRIO EL CENTRO','7269-5923','TIENDA ARANZA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14520','RODRIGUEZ GRANADOS NELSON AMILCAR','AVENIDA MELVIN JONES # 4-2','70400074','TIENDA DIVINO NIÑO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'31210','RODRIGUEZ JUAREZ ELSA MIRIAN','2A AV.SUR #112 Y 4A CALLE PONIENTE','79229258','TIENDA CHUITZALIC','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'14526','RODRIGUEZ LOPEZ ANDRES','FINAL BARRIO CONCEPCION NORTE','22010178','POLIDEPORTIVO DE NEJAPA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11725','RODRIGUEZ MIGUEL ANGEL','AV. SILVESTRE DE JESUS DIAS #28 NUEVA CONCEPCION','335-7002','AGROGIA RODRIGUEZ','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14190','RODRIGUEZ MUÃ‘OZ ABEL','AV. JUAN MANUEL RODRIGUEZ MERCADO MUNICIPAL LOCAL #7','2334-1881','TIENDA DIVINA PROVIDENCIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13524','ROGER ALEXANDER LOPEZ GOMEZ','CALLE ROOSEVELT #8 SOYAPANGO','NA','TIENDA SAN JUDAS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11728','ROJAS DE CAÃ‘ENGUEZ MARIA ANABELLA','CALLE QUIÂ­ONES DE OSORIO #31 BIS SAN VICENTE','393-1071','TIENDA NUESTRO SEÃ‘OR','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21874','ROJAS PEREIRA MARCO ANTONIO','SAN MARCOS LEMPA COMINIDAD LA PAPLOTA FRT.PASARELA','23142308','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13416','ROLANDO GONZALEZ MERLOS','BO. EL CALVARIO LA PALMERA TEJUTLA CHALATENANGO','7573-9209','CARNES Y LACTEOS SARITA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'21821','ROMERO DE RODRIGUEZ YESENIA NOEMI','2 AVENIDA NORTE #12 BO.EL CALVARIO FTE A FISCALIA','26055021','LÁCTEOS TIENDA YESI','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21463','ROMERO MEMBRENO ANGELICA YANIRA','FRENTE A CONFITERIA AMERICANA SAN MIGUEL','NA','NA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'30368','ROMERO PATRICIA JACKELINE','AV MASFERRER FRENTE A LINEA FERREA CIUDAD ARCE','330-9021','TIENDA POLLO DEL CAMPO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'20903','ROMULO FERNANDO GUZMAN ANAYA','SEGUNDA CALLE OTE. 2-2 BARRIO EL CENTRO','6043412','COMERCIAL GUZMAN','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13408','RONALD RICARDO FLORES GARCIA','CALLE ROOSEVETH #3 SOYAPANGO','2227-2181','TIENDA SAN SIMON','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21580','ROQUE ERNESTO DIAZ UMANA','CTON PASAQUINITA CASERIO EL OJUSTE CENTRO ESC. PASAQUINITA','75483395','ROQUE ERNESTO DIAZ UMAÑA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30370','ROSA DE RAMOS ANA DEISY','CALLE PRINCIPAL COL. SAN JOSE CANTON METALIO','NA','TDA. DAISY','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11748','ROSA DELMY LEMUS SANDOVAL','COSTADO OTE. DEL PARQUE CENTRAL 4TA. AV. SUR TONACATEPEQUE','322-0864','SUPER DEYDEL','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21652','ROSA ELVIA VILLATORO','BARRIO LA CRUZ 4A. CALLE PONIENTE','NA','TIENDA ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20914','ROSA FLORES WILBER','Bo EL CENTRO GUATAJIAGUA FTE FARMACIA SN JOSE','26150618','LACTEOS ROSA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30738','ROSA HERLINDA VEGA DE MAGAÃ‘A','COL. EL NASARENO POL. 23 LOTE #14 SANTA ANA','NA','NA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21231','ROSA IDALIA ROMERO DE BONILLA','BO. EL CENTRO ANAMOROS LA UNION FTE  AL PARQUE LA UNION','NA','TDA.  JOSUE','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11761','ROSA JURADO','MANZANA 19 PJE 45 CASA 13 TONACATEPEQU','NA','TIENDAROSA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11767','ROSA MARIA JIMENEZ','AV. PALECA #63 CIUDAD DELGADO','2286-5604','TEINDA FIORE','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'13472','ROSA MARIEL AGUILAR DE SALINAS','4TA AV. SUR COL. PROVIDENCIA #1 POLG. #G SAN MARTIN','7606-4511','DEPOSITO DE HUEVO SERGITO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30830','ROSA VILMA FLORES RECINOS','3a. AV SUR LOCAL 6 FTE A MCDO. MNCIPAL ARMENIA SONSONATE','NA','TIENDA ROSITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13185','ROSA YANIRA VASQUEZ PINEDA','AV. EL PROGRESO BO. EL CENTRO SANTIAGO NONUALCO','NA','TIENDA LOURDES','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21641','ROSALES DE VILLATORO INGRID VALESKA','BARRIO EL CENTRO LOS COQUITOS LA PLAYA','2656-2951','0','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14239','ROSALES NAVARRO YANCI BEATRIZ','AVENIDA RAUL CONTRERAS #7','7833-2573','MINI SUPER ROSALES','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'11779','ROSALES PIMENTEL REINA DINORA','LOURDES COLON KM23 1/2 CARRETERA A SONSONATE LOURDES COLON','318-2167','CEREALES LOURDES','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'12983','ROTMAN STANLEY CRUZ REYES','POR EL PARQUEO DEL PUNTO DE BUSES CARRT. PPAL. SAN JUAN OPIC','NA','TIENDA HELEN','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11788','ROXANA JUDITH PEREZ ROCHAC','PJE BINDER LOCAL #2 SAN MARTIN MDO. MPAL.','NA','TIENDA  WILLIAMS','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'12392','ROXANA YANETH HERNANDEZ HERNANDEZ','AV. JUAN MANUEL RODRIGUEZ LOCAL 1 BO. EL CENTRO ZACATECOLUCA','7454-9790','TIENDA LA VIROLEÃ‘A','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'31155','RUIZ DE RIVERA ROXANA PATRICIA','CALLE FRAY FELIPE MORAGA URB.SAN DIONISIO POL.G # 3A','79881089','SUPER 6','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30490','RUPERTO ESAU CORADO RIVAS','PJE. GUZMAN #33 16 AV. SUR ENTRE 15 Y 17 CALLE PTE. MDO. COL','7898-1303','TIENDA EDWAR','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11796','RUTH AIDA BELTRAN','AV. PRINCIPAL BO. EL CENTRO TAMANIQUE','NA','VARIEDADES AIDA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30826','RUTHNOEMIPADILLA PIMENTEL','2a. CALLE OTE. E/2a. Y 4a. AV. NORTE # 7 ATACO AHUACHAPAN','24-50-56-87','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'31126','SALAZAR SORIANO FELIX APOLINARIO','MEGA PLAZA PUESTO # 189 #190 #215 Y #217 SONSONATE','NA','.','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21706','SALGADO HERNANDEZ YURIDIA ROSMERI','3a. CALLE PONIENTE #17 1/2 CUADRA DE LA NEVERIA','NA','TIENDA ROSMERI','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11803','SALINAS HERNANDEZ ALMA ESTHER','COL. S. FCO. AV. LOURDES #20 POL #3 FTE. A CEMENTERIO LOURDE','318-8314','TIENDA SAN FRANCISCO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21629','ROBERTO ARQUIMIDES  OCHOA GARCIA','AV ATLACATL BARRIO EL CENTRO LOLOTIQUE  SAN MIGUEL','2628-9533','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'20893','ROBERTO ARQUIMIDES OCHOA GARCIA','Bo EL CENTRO LOLOTIQUE','7824-3305','ROBERTO ARQUIMIDES OCHOA GARCIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21432','SALVADOR ARMANDO ALVAREZ FUENTES','5TA CALLE PTE. BO. EL CALVARIO 40 CDAD. BARRIOS SAN MIGUEL','26658178','TIENDA CLAUDIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11807','SALVADOR ORLANDO MANZANO LOPEZ','2+ AVENIDA SUR Y 1+ CALLE PONIENTE # 9  SUCHITOTO','335-1013','TIENDA MANZANO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30382','SANABRIA ELBA ESPERANZA','2 CALLE ORIENTE CA #11 METAPAN','NA','ARBOLITOS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'30383','SANCHEZ ADA MARLENE','2+ CALLE PTE. BARRIO LA CRUZ # 8 FRENTE MCDO. ARMENIA','NA','TIENDA Y ABARROTERIA KENY','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31201','SANCHEZ AGUIRRE RODOLFO ANTONIO','FINAL 1 AV.NORTE LOCAL #6 AHUCHAPAN','NA','TIENDA EL BUEN PRECIO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30384','SANCHEZ DE APARICIO JOSEFINA','17 CALLE PTE. #4 ENTRE 14','NA','TIENDA KELY','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31160','SANCHEZ DE LAINEZ MARIA HORTENCIA','MERCADO CENTRAL PUESTO  # 99 ZONA 3','70347369','SANCHEZ DE LAINEZ MARIA HORTENCIA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'11809','SANCHEZ MARIA ISABEL','SAN JUAN OPICO LA LIBERTAD','331-3166','TIENDA ISABEL','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30386','SANCHEZ PENA LORENA ELIZABETH','3ER. AV. SUR #8 ARMENIA','NA','TIENDA ELIZABETH','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14403','SANCHEZ RODRIGUEZ ADA YAKELIN','LOCAL # 12 CENTRO COMERCIAL LA UNION SAN SALVADOR','2297-1767','NA','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'30388','SANCHEZ RUTH ABIGAIL','2a. CALLE PONIENTE 3a. AVENIDA SUR','NA','SANCHEZ RUTH ABIGAIL','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'30389','SANDOVAL CARLOS MANUEL','12 CALLE ORIENTE #4 A LA PAR DE TDA.KENY #1','410-0254','TDA.SAN ANTONIO','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11814','SANDRA AVALOS','CALLE QUIÂ­ONES DE OSORIO MDO. MPAL. FRENTE A DESP. FAMILIAR','2393-0491','TIENDA FATIMA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'20951','SANDRA LORENA VILLATORO DE VALENZUELA','2A. CALLE PONIENTE 4 EL TRANSITO SAN MIGUEL','6160017','TIENDA FRAY MARTIN','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30780','SANDRA YANIRA TORRES LOPEZ','MERCADO CENTRAL INTERIOR PUESTO #57 SONSONATE','NA','TIENDA LA CAMPINA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'13483','SANTIAGO ALEJANDRO FERNANDEZ PALACIOS','CALLE ROOSEVETL OTE. #9 SOYAPANGO SAN SALVADOR','NA','N','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'21678','SANTIAGO ROMERO RIVERA','5A. AV. SUR LOCAL 109 BARRIO LA MERCED','26601079','COMERCIAL SANTIAGUITO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21195','SANTOS ANIBAL ARGUETA QUEVEDO','1A AV. SUR  9 FRENTE A EX CUARTEL','NA','TIENDA ESMERALDA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21508','SANTOS CESAR MORENO','1A. C. OTE. Y 2A.AV. SUR BO. LA PARROQUIA  LOCAL 5 JUCUARAN','NA','MILLENNIUM SUPER MARKET','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'30798','SANTOS GUADALUPE RIVAS BENITEZ','CALLE 15 DE SEPTIEMBRE LOCAL #14 BARRIO SAN PEDRO','NA','TIENDA LUPITA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'13300','SANTOS HUMBERTO PALACIOS CRUZ','AV. ALEJANDRO MORA BO. EL CENTRO ROSARIO DE MORA','2399-0350','TIENDA AMERICA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30782','SANTOS MARIO TRUJILLP VASQUEZ','2DA NTE. FRENTE GASS ESSO COL. LOS PINOS #48 SANTA ANA','2448-1587','TIENDA EMMA MARIA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11842','SARA BEATRIZ CORTEZ CORTEZ','AV. NORBERTO MORAN #6 BARRIO EL CENTRO NEJAPA S.S.','2201-0106','TIENDA. SAN JUDAS','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'11844','SARA EMILIA MEJIA FLORES','2DA. AV. SUR NO.2  SUCHITOTO','2335-1116','TIENDA MEJIA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21343','SAUL BENJAMIN MENDEZ REQUENO','BO. EL CENTRO C. PPAL NATIVIDAD MAJANO PJE 4 FTE PROMERICA','26588305','TIENDA SAUL','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11848','SAVALLO ANTONIA DE LA CRUZ','AV. ANASTACIO AQUINO BO. EL CENTRO SANTIAGO NONUALCO','330-4121','TIENDA IVANIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'20966','SEBASTIAN ALFARO REYES','CALLE GIRON  34 BARRIO EL RECREO STA. ROSA DE LIMA','6412373','TIENDA NELLY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'31157','SERRANO TEXIN HELEN ARGENTINA','MERCADO INTERIOR PUESTO # 46-4 8 FRT.MERCADO DE CARNES','78344238','SERRANO TEXIN HELEN ARGENTINA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'14555','SERVICIOS PROFESIONALES DE INGENIERIA S.A DE C.V','COL.SN.FRANCISCO CALLE LOS DURAZNOS Y AV.LAS CAMELIAS #406','22077900','.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'13998','SHOP COMALAPA','KM. 12 1/2 AUTOPISTA A COMALAPA','NA','INVERSIONES MAREM S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21692','SIGARAN DE PEREIRA SARA COLONBA','2A.CALLE PONIENTE 1 BARRIO SAN ANTONIO','NA','COMERCIAL SAN FRANCISCO','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'13247','SILVIA CARDONA DE LOPEZ','MERCADO MUNICIPAL PUESTO INTERIOR #52 APOPA SAN SALVADOR','7149-1358','PINATERIA ISCARITO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11866','SILVIA YANIRA REYES','MERCADO DE APOPA #178','216-5308','SILVIA YANIRA REYES','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'20974','SOCORRO CAMPOS','BARRIO CONCEPCION CALLE PRINCIPAL  FRENTE A CANCHA DE FUTBOL','6102034','TIENDA GLENDA','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'11871','SOLIS DE CUELLAR MARTHA EMILIA','AV. NORBERTO MORAN BO EL CENTRO #4','NA','TIENDASANTA EMILIA','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'12349','SOLORZANO Y ASOCIADOS  S.A. DE C.V.','6TA. CALLE PTE. BO. EL CALVARIO #7 SAN MARTIN','NA','TIENDA  MARIELA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21192','SONIA CELINA ALVARADO DE TORRES','BARRIO EL CALVARIO CTGUO A DIGICEL','7242-1534','TIENDA COM. ALVARADO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21434','SONIA ISABEL SALMERON DE MEDRANO','BO. LA CRUZ AVENIDA GUSTAVO GUERRERO CORINTO MORAZAN','7224-6903','TIENDA SONIA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11870','SONIA MARINELA NAJARRO','CALLE QUIÂ­ONES DE OSORIO SAN VICENTE','NA','NA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'12294','SONIA MEJIA DE MORENO','CALLE GERARDO BARRIOS # 817','2222-0853','DISTRIBUIDORA MELOW','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13365','SONIA VICTORIA ESCOBAR','CARRT. A S.S. COL. VERACRUZ ANTGO. SEMENTERIO CHALATENANGO','NA','EL CAFE DE DON TOÃ‘O','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'14390','SORIANO ESCOTO JUAN CARLOS','CALLE PPAL.ROOSVELT CONTIGUO A TIENDA SAN SIMON','NA','TIENDA JEHOVA JIREH','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'11888','SORTO BENITEZ JOSE EFRAIN','CALLE ROOSEVELT ORIENTE # 13-B','227-0516','DULCERIA EL MANANTIAL','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'21837','SORTO DE FUENTES OLGA CRISTELA','3A.CALLE PTE.301 BIS LOCAL # 1 SAN MIGUEL','NA','TIENDA OLGUITA','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'14527','SORTO PADILLA RODRIGO JOSE','SAN PABLO TACACHICO CASERIO COPINULA CALLE PRINCIPAL','70393822','.','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30402','SOSA DE VARELA INES','MERCADO MUNICIPAL PUESTO #120 ACAJUTLA','452-3643','TIENDA INES','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'20344','SUCESION DE ANAYA DE GUZMAN GLORIA DELMA','TERCERA AV. SUR 2-4 LA UNION','6044261','TIENDA GLORIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'14127','SUMINISTROS SOSTENIBLESS.A. DE C.V.','CALLE SISIMILES AV.SIERRA NEVADA COL.MIRAMONTE #946','NA','NA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14388','SUPER ANDROMEDA  S.A. DE C.V.','2a. CALLE PONIENTE BARRIO EL CALVARIO #2','2372-0405','FRANKLIN MEJIA ESPOSO CLIENTE#13643','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'14398','SUPER CERKA S.A DE C.V','CALLE PRINCIPAL A LAS MERCEDES # 71 CHALATENANGO','2301-0264','NA','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11896','SUPER TIENDA SAN CARLOS S.A. DE C.V.','BO. CONCEPCION SAN RAFAEL CEDROS CUSCATLAN','2378-0211','SUPER TIENDA SAN CARLOS S.A. DE C.V.','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'11906','TEJADA DE AGUILAR LIDIA AMERICA','6+ CALLE ORITNTEY 2D+ AV. NTE.','331-4049','COMERCIAL AMERICA','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'11907','TEJADA DE OTERO ESTHER MARIA','PARCELACION CAÂ­AS PRIETO BLOCK A #9','321-5667','TIENDA THEY','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'20996','TERESA DEL ROSARIO GUZMAN DE ROMERO','P  22  INTERIOR MERC MUNICIPAL STA ROSA','6412944','COMERCIAL CHABELITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'30403','TERESA ISABEL MAGAÃ‘A DE MANCIA','11 AV. NTE. #135 COL. LOS PINOS FRENTE A ESSO SALIDA A METAP','2447-2109','TDA. EL MERCADITO','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14152','TEXACO AEROPUERTO','CARRETERA AL AEROPUERTO CONTIGUO AL DESVIO ZACATECOLUCA','7860-1531','RAMIREZ VENTURA CARLOS DENIS','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13262','TEXACO AUTOPISTA','CARRT. PANAM. KM 20 1/2 BO. LA CRUZ SAN PEDRO PERULAPAN','2353-0050','MARIA TRANSITO FIGUEROA SIGUENZA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13763','TEXACO CUSCATLAN','CARRETERA PANAMERICANA KM 35 COJUTEPEQUE CUSCATLAN','7268-8676','NA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13847','TEXACO CUSCATLAN','CARRETERA PANAMERICANA KM 35 EL CARMEN CUSCATLAN','2301-7800','HECTOR MAURICIO ESCOBAR MERCADO','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13887','TEXACO DESVIO A SAN VICENTE','CARRETERA PANAMERICANA KM 55 1/2 DESVIO A SAN VICENTE','NA','ACTIVIDADES PETROLERAS DE EL SALVADOR S.A. DE C.V.','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14115','TEXACO EL ANGEL','KM.8 CALLE INTEGRACION','7920-5511','GRUPO NSV S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13568','TEXACO EL PEDREGAL','AUTOPISTA A ZACATECOLUCA CARRETERA LITORAL KM 47','2333-6719','JOSE ELIAS ESCOBAR ROMERO','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'13129','TEXACO EL RODEO','GUAZAPA KM 26 CARRT. TRONCAL NTE. SAN SALVADOR','NA','JOSE ELIAS ESCOBAR ROMERO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13761','TEXACO GUAZAPA','CARRETERA TRONCAL DEL NORTE KM 23 1/2 GUAZAPA SAN SALVADOR','2313-9117','JOSE ELIAS ESCOBAR ROMERO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'13844','TEXACO INTEGRACION','12 AV. SUR CTGUO FBCA. DIANA SOYAPANGO SAN SALVADOR','6006-1141','PROMOTORA INMOBILIARIA M.A.S.A DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14122','TEXACO MODELO','CALLE MODELO COL.PROVIDENCIA #422','2270-4911','GRUPO NSV S.A. DE C.V.','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'14113','TEXACO QUEZALTEPEQUE','CARRETERA A QUEZALTEPEQUE SITIO DEL NIAO KM.41+800 MTS','NA','RAMIREZ VENTURA CARLOS DENIS','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'13574','TEXACO SAN VICENTE','2DA AV. NORTE BO. EL SANTUARIO SAN VICENTE','2393-0181','NA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'13891','TEXACO SANTO DOMINGO','CARRETERA PANAMERICANA KM 43 1/2 DESVIO A SANTO DOMINGO','NA','ACTIVIDADES PETROLERAS DE EL SALVADOR S.A. DE C.V.','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'14209','TEXACO ZARAGOZA','CALLE AL PUERTO DE LA LIBERTAD KM.20','2580-7434','FERRUSAL S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'30784','THOMASA JANNETTE RIVERA SALAZAR','MERCADO CENTRAL PUESTO #8 SONSONATE','NA','TIENDA KARLITA','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21814','TIENDA HEYDI','MERCADO MUNICIPAL SALIDA A CHINAMECA','61806652','VELASQUEZ GAITAN HUGO ELMER','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'21851','TIENDA NUEVA','BO. EL CENTRO 1 AV.NORTE CPPAL EZQUINA OPTA.AL PARQUE','NA','TORRES AYALA JORGE GUSTAVO','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'1093','TIENDA SANDI','FINAL CALLE DUKE B. EL CENTRO SAN JUAN','NA','NA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'14421','TOBAR DE RODRIGUEZ ELIDA DEL CARMEN','COL.DANIEL HERNANDEZ #2-9 CONTIGUO A EL SURCO','NA','TIENDA GABY # 2','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30409','TOBAR DE ZEPEDA LILIANA BEATRIZ','AV.2 DE ABRIL FRENTE A FERRETERIA LA CORONITA','443-1848','TIENDA YOLANDA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11933','TOBAR HERNANDEZ ELIDA DEL CARMEN','2A. AVENIDA SUR # 1-4','229-3587','TIENDA GABY DEL CARMEN','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'30410','TOLEDO JUAREZ JOSE MAURICIO','4+ C.OTE.FRENTE A TERMINAL DE BUSES EL COCO','408-3560','TDA.EL SHA DDAI','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'11934','TOM SAWYER  S.A. DE C.V.','KM 36 CARR. PANAMERICANA DE SAN SALVADOR A SANTA ANA','2366-6316','TOM SAWYER  S.A. DE C.V.','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'30627','TOMAS GUDIEL MENENDEZ FLORES','15C. PTE. MERCADO MPAL. STA. ANA LOCAL 2 CASA 11','NA','TDA. TOMAS','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'21880','TREJO HERNANDEZ MIRIAN ELIZABETH','CALLE MASFERRER LOCAL # 3 SANTIAGO DE MARIA','26630414','TIENDA MIRIAN','1','0','0','162');
INSERT INTO Clientes_impulsadoras VALUES(0,'31102','TREJO ROSA LINDA','8.AV SUR CALLE LIBERTAD Y 1 CALLE PONIENTE','74694533','TIENDA ROSAMAR','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'31166','TRIGUEROS RAIMUNDO ERIKA YASMIN','LOTIFICACION ALTOS DE LA CRUZ POL.D.LOTE 17','75161458','TIENDA ERIKA','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14130','UNO LA LIBERTAD','CARRETERA LITORAL POLIG.7 LOTIF.CONCHALIO','2310-5357','ASOCIACION DE TRANSPORTISTAS DE LA LIBERTAD S.A. DE C.V.','1','0','0','151');
INSERT INTO Clientes_impulsadoras VALUES(0,'21013','VALDEZ DE FERRUFINO  MARIA DE LA O','FINAL CALLE ORIENTE  5 SALIDA A SAN MIGUEL','6620805','TIENDA MARY','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'13997','VALLE DE LEMUS ANA CECILIA','CALLE GERARDO BARRIOS Y 3A.CALLE PONIENTE NO.113','2335-9031','TIENDA CARLOS','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'11946','VALLE LEMUS ROSA EMERITA','6TA CLLE PTE. #1302 NUEVA CONCEPCION','306-7115','TIENDAROSWILL #1','1','0','0','153');
INSERT INTO Clientes_impulsadoras VALUES(0,'30418','VALLE RODRIGO ANTONIO','ENTRADA PPAL. AL MERCADO MUNICIPAL CANTON CARA SUCIA','437-0163','AGENCIA SAN ANTONIO','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'31180','VANEGAS CARDOZA MARLON ERNESTO','6 AV.SUR.Y 15 CALLE PONIENTE #30 A BARRIO NUEVO','75982861','.','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'14435','VASQUEZ OSEGUEDA WILLIAM NORBERTO','KM 12 1/2 CARRET.PUERTO DE LA LIBERTAD PLAZA LOS SUENOS L-2','25216802','ANANA MARKET','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'21654','VASQUEZ VENTURA GLORIA ARGENTINA','BARRIO EL CENTRO FRENTE A POLLO CAMPESTRE','79085746','TIENDA GLORIA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11954','VDA. DE CARCAMO ANA LILIAN','C. MANUEL A. MEJIA BO. EL CALVARIO CASA NUMERO #12 TEPECOYO','338-9249','SUPER SAN CAYETANO','1','0','0','146');
INSERT INTO Clientes_impulsadoras VALUES(0,'21022','VENTURA DE RIVAS JULIA ESPERANZA','5 AV NTE  FINAL 3 AV NTE  BO EL CENTRO  LOS COQUITOS','26043663','VENTURA DE RIVAS JULIA ESPERANZA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21023','VENTURA ESCOBAR DE VALLE  VILMA GLORIA','2 AV SUR  1-4B  BO EL CENTRO LA UNION','6043564','COMERCIAL DEL VALLE # 2','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21651','VENTURA GUEVARA JOSE ANGEL','2A. CALLE OTE. Y AV. GENERAL BARRIO EL CENTRO','78902778','TIENDA ANGELES','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21876','VENTURA MONTOYA YANETH SARAI','B.EL CENTRO 1A CALLE ORIENTE FRENTE ACOPUERTO','NA','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21027','VICENTE HERRERA MEDRANO','SEGUNDA AV. SUR BARRIO EL CENTRO','6040870','COMERCIAL SAMAGRIEL','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'13013','VICTOR MANUEL ORTIZ GONZALEZ','9NA AV. NTE. BO. EL CALVARIO MCDO. EL TIANGUE COJUTEPEQUE','NA','NA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'30425','VICTORIA DE LOS ANGELES MENENDEZ','EL CONGO SANTA ANA CALLE PRINCIPAL','NA','TDA. VICTORIA (VICKY )','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'11971','VIDES RIVERA JUAN GILBERTO','2+ AVENIDA NORTE # 13-4A UN COSTADO DE IGLESIA CATOLICA','346-0461','TIENDA BETANIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'11972','VIDES VILLALTA PEDRO','2A. AVENIDA SUR #22 FRENTE A HOSPITAL SAN JUAN DE DIOS','393-4812','MINI SUPER LA BODEGA','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'21776','VIERA DE MATA ANA DILIA','2a. CALLE PTE. #313 BARRIO EL CENTRO FRENTE A LA BODEGUITA','7944-2055','TIENDA MABELITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21609','ROBERTO ARQUIMIDES OCHOA GARCIA','CONTIGUO A UNIDAD DE SALUD FRENTE AL PARQUE','2628-2293','ROBERTO OCHOA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21610','ROBERTO ARQUIMIDES OCHOA GARCIA','ESQUINA OPUESTA ALCALDIA MUNICIPAL FRENTE AL PARQUE','2624-5476','ROBERTO OCHOA','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'11973','VILLACORTA DE CARTAGENA MARIA','AVENIDA PALECA # 10CONT. A LOTERIA','276-1345','TIENDA CLAUDIA','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'21655','VILLATORO ALVAREZ MARTIR DEL CARMEN','BO. EL CENTRO 1/2 CUADRA AL SUR JUZGADOS SALIDA NVA ESPARTA','78705184','VILLATORO ALVAREZ MARTIR DEL CARMEN','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21873','VILLATORO DE REYES MARLENY EDUVIGES','BARRIO ELCENTRO 21 CALLE OTE.','73980466','TIENDA MARLENY','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21035','VILLATORO HERNANDEZ PAULINA NATIVIDAD','BO LAS DELICIAS CALLE PPAL C. PUENTE','NA','DENNIS','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'30427','VILLATORO PEDRO ANTONIO','3ER AV. SUR #232 PUESTO INTERIOR MDO. MUNICIPAL ARMENIA','452-1557','TIENDA JENIFFER','1','0','0','102');
INSERT INTO Clientes_impulsadoras VALUES(0,'21038','VILLATORO SALMERON  JOSE MATIAS','1 CALLE OTE. BARRIO LAS DELICIAS CORINTO','6501452','NEGOCIOS DEL CAMPO','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21040','VILMA CECY VENTURA DE ALFARO','CARRETERA RUTA MILITAR COLONIA EL MAG','6414683','TIENDA DAYRITA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'21094','VILMA ROXANA MUNOZ RODRIGUEZ','BO. EL CENTRO POLOROS CALLE PPAL. MONTECA POLOROS','72095439','TIENDA VILMA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'11988','VIUDA DE ORELLANA CHACON MARIELENA','5TA. AV. SUR EXTERIOR MERCADO #3 SAN VICENTE','NA','TIENDA CHACON','1','0','0','152');
INSERT INTO Clientes_impulsadoras VALUES(0,'13054','VTA PTOS FARMACEUTICOS Y MEDIC','4TA CALLE ORIENTE # 15 CIA CENTRAL','NA','VTA PTOS FARMACEUTICOS Y MEDIC','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'13034','WALTER ERNESTO ESCOBAR TOBIAS','MCDO. MPAL. SOYAPANGO PUESTO #201 PORTON 14','NA','NA','1','0','0','173');
INSERT INTO Clientes_impulsadoras VALUES(0,'13885','WENDY ELIZABETH MARMOL DE RIVERA','CALLE PRINCIPAL BARRIO EL CENTRO NO.32','NA','TIENDA MARISOL','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30673','WILBER SALVADOR HERNANDEZ MORALES','2DA CALLE OTE. ENTRE 4TA AV. SUR BARRIO SAN PEDRO METAPAN','NA','TIENDA WILBER','1','0','0','101');
INSERT INTO Clientes_impulsadoras VALUES(0,'12000','WILLIAM ALFREDO GRANADOS BERRIOS','6TA CALLE PTE. LOCAL #11 FTE. A CENTRO E. MARGOT ESCOBAR','NA','TIENDA WILLIAM','1','0','0','149');
INSERT INTO Clientes_impulsadoras VALUES(0,'13009','WILLIAN SEFREDO MEJIA TRIGUEROS','4TA. C. 13 EL CENTRO CASA 7 AGUILARES SAN SALVADOR','2341-4235','TIENDA EL BARATILLO','1','0','0','148');
INSERT INTO Clientes_impulsadoras VALUES(0,'21437','WILMAN ODIL SOLORZANO BERRIOS','BARRIO EL CENTRO GUATAJIAGUA MORAZAN','NA','TIENDA MIGUEL','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21539','XIOMARA LISSETH QUIROZ','4A. CALLE ORIENTE  USULUTAN','NA','TIENDA LISSETH','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'14210','YACONS.A. DE C.V.','2A. CALLE ORIENTE CASA #6','NA','SUPER TIENDA GLORIA','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30770','YANIRA ELIZABETH ESCOBAR DE AVILA','COL. PAMPE C. PPAL. #4 CHALCUAPA SANTA ANA','2406-5431','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'13142','YESENIA LISSETH MARTINEZ MENDEZ','CENTRO COMERCIAL LA UNION LOCAL 18 SAN SALVADOR','7342-9842','COMERCIAL MILTON','1','0','0','147');
INSERT INTO Clientes_impulsadoras VALUES(0,'21290','YESSICA VANESSA MIRANDA BENITEZ','BO. EL CONVENTO C. EL COMERCIO FTE. AL MERCADO MUN. STA. ROS','26412548','LA ESQUINA','1','0','0','164');
INSERT INTO Clientes_impulsadoras VALUES(0,'20940','SALOME MORATAYA CRUZ','BO. CONCEPCION MERCEDES UMANA','NA','SALOME MORATAYA CRUZ','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21829','VIGIL DE MARTINEZ DAISY SARAI','CARRETERA PANAMERICANA CONTIGUO A DON POLLO','NA','.','1','0','0','163');
INSERT INTO Clientes_impulsadoras VALUES(0,'21066','YOLANDA NUNEZ','2 CALLE PTE Y AV JOSE SIMEON CA­AS','663-2081','YOLANDA NU­EZ','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'21804','ZACAPA PINEDA LUCIANO ENRIQUE','AVENIDA SIMEON CANAS # 8','NA','.','1','0','0','165');
INSERT INTO Clientes_impulsadoras VALUES(0,'12026','ZELAYA DE MARTINES PETRONA','2+ AVENIDA NORTE # 12-5LA LIBERTAD','335-3069','TIENDA EL MERCADITO','1','0','0','150');
INSERT INTO Clientes_impulsadoras VALUES(0,'30929','ZEPEDA SALAZAR OLIVERIO ENRIQUE','6a.CALLE PONIENTE ENTRE 1a. Y 3a. AV. NORTE BARRIO EL CENTRO','7459-1759','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'30885','ZUNA CABEZAS MAURICIO ALBERTO','AV 2 DE ABRIL FTE AL MERCADO MUNICIPAL PUESTO#7 FTE.BASURERO','7218-6868','NA','1','0','0','103');
INSERT INTO Clientes_impulsadoras VALUES(0,'12033','ZUNIGA SALMERON MARIA JOSEFINA','COL. SANTA MARIA PJE. 22 #24 SAN MARTIN','258-1905','TIENDA  SAN LUIS','1','0','0','173');

Create table Itinerario_impulso(
Id_iti_imp int(7) zerofill auto_increment not null primary key,
Id_u_sdv int(7) zerofill not null,
Id_cli_imp int(7) zerofill not null,
Lunes int(2) not null,
Martes int(2) not null,
Miercoles int(2) not null,
Jueves int(2) not null,
Viernes int(2) not null,
Sabado int(2) not null,
Domingo int(2) not null,
Estado_itinerario int(2) not null,
foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv),
foreign key (Id_cli_imp) references Clientes_impulsadoras(Id_cli_imp)
); 

INSERT INTO `Clientes_impulsadoras`(`Id_cli_imp`, `Cod_cli`, `Nombre_cli`, `Direc_cli`, `Tel_cli`, `Contac_cli`, `Estado_cli`, `Latitud_cli`, `Longitud_cli`, `Id_ruta`) VALUES (0,'JENNIFER CARINA HERNANDEZ','5841','5841',7,1,'IMPULSO');
select * from Itinerario_impulso;

INSERT INTO Itinerario_impulso VALUES(0,17,1,1,1,1,1,1,1,1,1);
INSERT INTO Itinerario_impulso VALUES(0,17,2,1,1,1,1,1,1,1,1);
INSERT INTO Itinerario_impulso VALUES(0,17,3,1,1,1,1,1,1,1,1);
INSERT INTO Itinerario_impulso VALUES(0,17,4,1,1,1,1,1,1,1,1);
INSERT INTO Itinerario_impulso VALUES(0,17,5,1,1,1,1,1,1,1,1);

select ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Itinerario_impulso as ii
inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
where uc.Id_u_sdv=17 and ii.Lunes=1;


update Itinerario_impulso set Estado_itinerario=0 where Id_iti_imp=6;

use sdvbocadeli;

Create table Marcaciones_impulso(
Id_marcacion int (7) zerofill auto_increment primary key  not null,
Id_u_sdv int (7) zerofill not null,
Id_cli_imp int(7) zerofill not null,
Id_actividad int(7) zerofill not null,
Latitud_ini varchar(50) not null,
Longitud_ini varchar(50) not null,
Fecha_inicio datetime not null,
Img_inicio varchar(500) not null,
Latitud_fin varchar(50) not null,
Longitud_fin varchar(50) not null,
Fecha_fin datetime not null,
Img_fin varchar(500) not null,
Estado_marcacion varchar(20) not null,
Id_tipo_marcacion int(1) zerofill not null,
Observacion varchar(300) ,
foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv),
foreign key (Id_cli_imp) references Clientes_impulsadoras(Id_cli_imp),
foreign key (Id_actividad) references acti_impulso(Id),
foreign key (Id_tipo_marcacion) references Tipo_marcacion_impulso(Id_tipo_marcacion)
);
drop table Marcaciones_impulso;
select * from Marcaciones_impulso;

SELECT  Fecha_inicio , Fecha_fin ,TIMESTAMPDIFF(SECOND,Fecha_inicio,Fecha_fin ) as DuracionVisita from Marcaciones_impulso;

CREATE TABLE clientes_exhibidor(
Id_Cliente int(9) zerofill not null ,
Id_Exhibidores int(9) zerofill not null,
Cantidad int(2),
Fecha_Facturacion date not null,
foreign key (Id_Cliente) references clientes(Id_cliente),
foreign key (Id_Exhibidores) references exhibidores(Id_Exhibidores)
);

SELECT TIMEDIFF('2007-12-31 10:02:00','2007-12-30 12:01:01');

SELECT Id_actividad FROM Marcaciones_impulso where Id_u_sdv=17 and Estado_marcacion='INICIADA';


SELECT ci.Id_cli_imp, ci.Cod_cli,ci.Nombre_cli FROM Marcaciones_impulso as mi 
inner join clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp 
where mi.Estado_marcacion='INICIADA' AND mi.Id_u_sdv=17;


DESCRIBE usuarios_consolasdv;

ALTER TABLE usuarios_consolasdv change Usuario Usuario varchar(50) not null;

INSERT INTO usuarios_consolasdv VALUES(0,'BARBERENA','sdv_barberena','$$Barberena$$','1','6','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'CHIMALTENANGO','sdv_chimaltenango','$$Chimaltenango$$','1','7','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'COATEPEQUE','sdv_coatepeque','$$Coatepeque$$','1','8','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'COBAN','sdv_coban','$$Coban$$','1','9','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'ESCUINTLA','sdv_escuintla','$$Escuintla$$','1','10','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'HUEHUETENANGO','sdv_huehuetenango','$$Huehuetenango$$','1','11','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'JUTIAPA','sdv_jutiapa','$$Jutiapa$$','1','12','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'KARANTE','sdv_karante','$$Karante$$','1','13','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'PETEN','sdv_peten','$$Peten$$','1','14','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'QUETZALTENANGO','sdv_quetzaltenango','$$Quetzaltenango$$','1','15','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'TECULUTAN','sdv_teculutan','$$Teculutan$$','1','16','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'CHOLUTECA','sdv_choluteca','$$Choluteca$$','1','17','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'COMAYAGUA','sdv_comayagua','$$Comayagua$$','1','18','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'DANLI','sdv_danli','$$Danli$$','1','19','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'LA CEIBA','sdv_la ceiba','$$La_ceiba$$','1','20','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'OLANCHO','sdv_olancho','$$Olancho$$','1','21','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'SAN PEDRO SULA','sdv_san_pedro_sula','$$San_pedro_sula$$','1','22','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'SANTA ROSA DE COPAN','sdv_santa_rosa_de_copan','$$Santa_rosa_de_copan$$','1','23','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'TEGUCIGALPA','sdv_tegucigalpa','$$Tegucigalpa$$','1','24','DETALLE');
INSERT INTO usuarios_consolasdv VALUES(0,'LAGO_MANCILLA','sdv_lago_mancilla','$$Lago_mancilla$$','1','25','DETALLE');

select count(*) from clientes;

describe exhibidores;
use sdvbocadeli;
select count(*) from clientes;
select count(*) from  clientes where ActuExhibidor ='no';

-- Consulta para recuento de clientes por pais
select  
IFNULL(round(count(case when P.Id_pais=1 THEN p.Id_pais END ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_pais=2 THEN p.Id_pais END ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_pais=3 THEN p.Id_pais END ),2),0) AS "HONDURAS"  from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta 
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join Pais as p on d.id_pais=p.id_pais/* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/;

-- Consulta para recuento de clientes por pais que estan pendiente de actualizar

select  IFNULL(ActuExhibidor,'NO')  AS 'ESTATUS',
IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HONDURAS"  
from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta 
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais 
where c.ActuExhibidor='NO'/* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/and  c.estado_w=1
UNION  
select  IFNULL(ActuExhibidor,'SI') 'ESTATUS',
IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HONDURAS"  from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais where c.ActuExhibidor='SI' and  c.estado_w=1/* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/;

select c.Id_cliente,r.Nombre_ruta,c.Codigo,Nombre,c.Direccion ,c.estado_w from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios
inner join rutas as r on u.id_usuarios=r.Id_ruta
limit 10;



describe clientes;

use sdvbocadeli;
select 
IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HONDURAS"  from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta 
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais 
where c.Cantidad_exhibidor > 0 and  c.estado_w=1
UNION  
select  
IFNULL(round(count(case when P.Id_Pais=1 THEN P.Id_Pais END ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 THEN P.Id_Pais END ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 THEN P.Id_Pais END ),2),0) AS "HONDURAS"  from clientes as c
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais 
where c.Cantidad_exhibidor  <0 and  c.estado_w=1 /* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/;


 select 
IFNULL(round(count(case when P.Id_Pais=1 and  ae.Cantidad>0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 and  ae.Cantidad>0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 and  ae.Cantidad>0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "HONDURAS"  
from clientes as c
left join actualizacion_exhibidores as ae on c.Id_Cliente=ae.Id_Cliente
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais 
where ae.Cantidad>0 and  c.estado_w=1 
union
select 
IFNULL(round(count(case when P.Id_Pais=1 and  ae.Cantidad<=0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "EL SALVADOR" ,
IFNULL(round(count(case when P.Id_Pais=2 and  ae.Cantidad<=0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "GUATEMALA",
IFNULL(round(count(case when P.Id_Pais=3 and  ae.Cantidad<=0 and  c.estado_w=1 THEN P.Id_Pais END  ),2),0) AS "HONDURAS"  
from clientes as c
left join actualizacion_exhibidores as ae on c.Id_Cliente=ae.Id_Cliente
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_usuarios=r.Id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.id_distribuidora 
inner join pais as P on d.Id_Pais=P.Id_Pais 
where ae.Cantidad=0 and  c.estado_w=1 /* 1 = EL SALVADOR , 2 = GUATEMALA , 3 = HONDURAS*/;


select   
count(distinct case when ae.Id_cliente and p.id_pais=1 and ae.Cantidad=0 then ae.id_cliente end) as SV,
count(distinct case when ae.Id_cliente and p.id_pais=2 and ae.Cantidad=0 then ae.id_cliente end) as GT,
count(distinct case when ae.Id_cliente and p.id_pais=3 and ae.Cantidad=0 then ae.id_cliente end) as HN
from actualizacion_exhibidores as ae
inner join clientes as c on ae.Id_cliente=c.Id_cliente
inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
inner join rutas as r on u.Id_ruta=r.id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.Id_distribuidora
inner join pais as p on d.id_pais=p.Id_pais
union
select   
count(distinct case when ae.Id_cliente and p.id_pais=1 and ae.Cantidad>0 then ae.id_cliente end) as SV,
count(distinct case when ae.Id_cliente and p.id_pais=2 and ae.Cantidad>0 then ae.id_cliente end) as GT,
count(distinct case when ae.Id_cliente and p.id_pais=3 and ae.Cantidad>0 then ae.id_cliente end) as HN
from actualizacion_exhibidores as ae
inner join clientes as c on ae.Id_cliente=c.Id_cliente
inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
inner join rutas as r on u.Id_ruta=r.id_ruta
inner join distribuidora as d on r.Id_distribuidora=d.Id_distribuidora
inner join pais as p on d.id_pais=p.Id_pais;

SELECT IF(RespuestaObservacion=0,'SIN OBSERVACION',
	   IF(RespuestaObservacion=1,'VISIBLE Y ACCESIBLE',
       IF(RespuestaObservacion=2,'MAL UBICADO',
       IF(RespuestaObservacion=3,'INVADIDO',
       IF(RespuestaObservacion=4,'NECESITA REPARACION',
       IF(RespuestaObservacion=5,'DESECHADO O GUARDADO POR EL CLIENTE',
       IF(RespuestaObservacion=6,'RETIRADO DEL NEGOCIO',
       IF(RespuestaObservacion=70,'CLIENTE NO DEJO ENTRAR',
       IF(RespuestaObservacion=71,' NO SE ENCONTRO TIENDA / PULPERIA',
       IF(RespuestaObservacion=72,'ESTABA CERRADO','NO ENCONTRADA')))))))))) As name , count(RespuestaObservacion) as value 
        from actualizacion_exhibidores
		where cantidad>0
		group by name 
		order by RespuestaObservacion asc
      ;


select ae.id_cliente,c.codigo, c.nombre ,e.SKU_Exhibidor, e.NombreExhibidor,
		IF(E.NombreExhibidor='SIN EXHIBIDOR','SIN EXHIBIDOR','CON EXHIBIDOR') AS SI_NO, 
        IF(RespuestaObservacion=1,'VISIBLE Y ACCESIBLE',
       IF(RespuestaObservacion=2,'MAL UBICADO',
       IF(RespuestaObservacion=3,'INVADIDO',
       IF(RespuestaObservacion=4,'NECESITA REPARACION',
       IF(RespuestaObservacion=5,'DESECHADO O GUARDADO POR EL CLIENTE',
       IF(RespuestaObservacion=6,'RETIRADO DEL NEGOCIO',
       IF(RespuestaObservacion=70,'CLIENTE NO DEJO ENTRAR',
       IF(RespuestaObservacion=71,' NO SE ENCONTRO TIENDA / PULPERIA',
       IF(RespuestaObservacion=72,'ESTABA CERRADO','NO ENCONTRADA'))))))))) as Observacion,ae.cantidad 
       from actualizacion_exhibidores as ae 
inner join clientes as c on ae.id_cliente=c.id_cliente
inner join exhibidores as e on ae.Id_Exhibidores=e.Id_Exhibidores ;



select p.Nombre_pais,
	   count( DISTINCT case when IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR")="SIN EXHIBIDOR" THEN  IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR") end) AS "SIN EXHIBIDOR",
       count( DISTINCT case when IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR")="CON EXHIBIDOR" THEN  IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR") end) AS "CON EXHIBIDOR"
	  from actualizacion_exhibidores as ae 
inner join clientes as c on ae.id_cliente=c.id_cliente
inner join exhibidores as e on ae.Id_Exhibidores=e.Id_Exhibidores
inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
inner join rutas as r on u.Id_ruta=r.id_ruta
inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
inner join pais as p on d.id_pais=p.id_pais
group by p.Nombre_pais;


SELECT p.Nombre_pais,
        count(
         
			CASE
				 WHEN ae.Id_cliente  
                 THEN ae.id_cliente 
                  END
                  
                  AND
			CASE 
            WHEN 
				 IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR")="SIN EXHIBIDOR"  
			THEN IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR") end) AS "eXHIBIDO",
        count(case when IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR")="CON EXHIBIDOR"   THEN  IF(e.nombreexhibidor="SIN EXHIBIDOR","SIN EXHIBIDOR","CON EXHIBIDOR") end) AS "SiExh"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join exhibidores as e on ae.Id_Exhibidores=e.Id_Exhibidores
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        group by p.Nombre_pais;


SELECT Categoria,
        IFNULL(round(sum(case when Distribuidora="CHALATENANGO" THEN TOTAL END ),2),0) AS "CH" ,
        IFNULL(round(sum(case when Distribuidora="SAN SALVADOR" THEN TOTAL END ),2),0) AS "SS" ,
        IFNULL(round(sum(case when Distribuidora="SAN MIGUEL" THEN TOTAL END ),2),0) AS "SM" ,
        IFNULL(round(sum(case when Distribuidora="SANTA ANA" THEN TOTAL END ),2),0) AS "SA" ,
        IFNULL(round(sum(case when Distribuidora="SONSONATE" THEN TOTAL END ),2),0) AS "SO"
        from VENTA_DIARIA group by Categoria;
        
select 
c.ActuExhibidor  ,
count(case when d.Id_distribuidora=1 and c.ActuExhibidor='SI' then c.ActuExhibidor end) as 'SV_SS' ,
count(case when d.Id_distribuidora=2 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'SV_SM' ,
count(case when d.Id_distribuidora=3 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'SV_SA' ,
count(case when d.Id_distribuidora=4 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'SV_SO' ,
count(case when d.Id_distribuidora=5 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'SV_CH' ,
count(case when d.Id_distribuidora=6 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_BBR' ,
count(case when d.Id_distribuidora=7 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_CHT' ,
count(case when d.Id_distribuidora=8 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_CTQ' ,
count(case when d.Id_distribuidora=9 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_CBN' ,
count(case when d.Id_distribuidora=10 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_ESCT' ,
count(case when d.Id_distribuidora=11 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_HHTG' ,
count(case when d.Id_distribuidora=12 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_JTP' ,
count(case when d.Id_distribuidora=13 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_KRT' ,
count(case when d.Id_distribuidora=14 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_PTN' ,
count(case when d.Id_distribuidora=15 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_QZTG' ,
count(case when d.Id_distribuidora=16 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'GT_TCLT' ,
count(case when d.Id_distribuidora=17 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_CHLTC' ,
count(case when d.Id_distribuidora=18 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_CMYG' ,
count(case when d.Id_distribuidora=19 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_DNLI' ,
count(case when d.Id_distribuidora=20 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_LCB' ,
count(case when d.Id_distribuidora=21 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_OLCHO' ,
count(case when d.Id_distribuidora=22 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_SPS' ,
count(case when d.Id_distribuidora=23 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_SRDC' ,
count(case when d.Id_distribuidora=24 and c.ActuExhibidor='SI'then c.ActuExhibidor end) as 'HN_TGGP' 
from clientes as c 
inner join usuarios as u on c.id_usuarios=u.id_usuarios 
inner join rutas as r on u.id_ruta= r.id_ruta
inner join distribuidora as d on r.id_distribuidora = d.id_distribuidora
where c.estado_w=1
group by ActuExhibidor ;

select p.nombre_pais,d.Id_distribuidora,d.Nombre_Distribuidora from distribuidora as d
inner join pais as p on d.id_pais=p.id_pais where p.id_pais=3;

SELECT Categoria,
        IFNULL(round(sum(case when Distribuidora="CHALATENANGO" THEN TOTAL END ),2),0) AS "CH" ,
        IFNULL(round(sum(case when Distribuidora="SAN SALVADOR" THEN TOTAL END ),2),0) AS "SS" ,
        IFNULL(round(sum(case when Distribuidora="SAN MIGUEL" THEN TOTAL END ),2),0) AS "SM" ,
        IFNULL(round(sum(case when Distribuidora="SANTA ANA" THEN TOTAL END ),2),0) AS "SA" ,
        IFNULL(round(sum(case when Distribuidora="SONSONATE" THEN TOTAL END ),2),0) AS "SO"
        from VENTA_DIARIA group by Categoria;
        
SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
where e.NombreExhibidor!='SIN EXHIBIDOR' and ae.TipoActualizacion!=2
group by NombreExhibidor ;


select * from actualizacion_exhibidores;
drop database sdvbocadeli;
create database sdvbocadeli;
use sdvbocadeli;
SELECT p.Nombre_pais,
        count(case when fae.Con='NO' then fae.Con end ) as 'NoExh',
        count(case when fae.Con='SI' then fae.Con end ) as 'SiExh'
        from  fotos_actualizacion_exh as fae 
        inner join clientes as c on fae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        group by p.Nombre_pais;
        
        
ALTER TABLE distribuidora add column Division varchar(50) not null;
UPDATE  distribuidora SET Division='SV_CENTRO' where id_distribuidora=5;
UPDATE  distribuidora SET Division='SV_CENTRO' where id_distribuidora=1;
UPDATE  distribuidora SET Division='SV_OCCIDENTE' where id_distribuidora=3;
UPDATE  distribuidora SET Division='SV_OCCIDENTE' where id_distribuidora=4;
UPDATE  distribuidora SET Division='SV_ORIENTE' where id_distribuidora=2;
UPDATE  distribuidora SET Division='GT_CENTRO' where id_distribuidora=6;
UPDATE  distribuidora SET Division='GT_CENTRO' where id_distribuidora=7;
UPDATE  distribuidora SET Division='GT_CENTRO' where id_distribuidora=10;
UPDATE  distribuidora SET Division='GT_CENTRO' where id_distribuidora=12;
UPDATE  distribuidora SET Division='GT_CENTRO' where id_distribuidora=13;
UPDATE  distribuidora SET Division='GT_NORTE' where id_distribuidora=9;
UPDATE  distribuidora SET Division='GT_NORTE' where id_distribuidora=14;
UPDATE  distribuidora SET Division='GT_NORTE' where id_distribuidora=16;
UPDATE  distribuidora SET Division='GT_SUR' where id_distribuidora=8;
UPDATE  distribuidora SET Division='GT_SUR' where id_distribuidora=11;
UPDATE  distribuidora SET Division='GT_SUR' where id_distribuidora=15;
UPDATE  distribuidora SET Division='HN_CENTRO' where id_distribuidora=17;
UPDATE  distribuidora SET Division='HN_CENTRO' where id_distribuidora=18;
UPDATE  distribuidora SET Division='HN_CENTRO' where id_distribuidora=19;
UPDATE  distribuidora SET Division='HN_CENTRO' where id_distribuidora=21;
UPDATE  distribuidora SET Division='HN_CENTRO' where id_distribuidora=24;
UPDATE  distribuidora SET Division='HN_NORTE' where id_distribuidora=20;
UPDATE  distribuidora SET Division='HN_NORTE' where id_distribuidora=22;
UPDATE  distribuidora SET Division='HN_NORTE' where id_distribuidora=23;
UPDATE  distribuidora SET Division='RDO' where id_distribuidora=25;

select p.Nombre_pais as Pai,
		count( case when ae.RespuestaObservacion=70 then ae.RespuestaObservacion end) as 'CLIENTE NO DEJO ENTRAR',
        count( case when ae.RespuestaObservacion=71 then ae.RespuestaObservacion end) as 'NO SE ENCONTRO TIENDA / PULPERIA',
        count( case when ae.RespuestaObservacion=72 then ae.RespuestaObservacion end) as 'ESTABA CERRADO'
       from actualizacion_exhibidores as ae 
inner join clientes as c on ae.id_cliente=c.id_cliente
inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
inner join rutas as r on u.Id_ruta=r.id_ruta
inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
inner join pais as p on d.id_pais=p.id_pais
group by p.Nombre_pais;

describe distribuidora;


SELECT IF(RespuestaObservacion=0,"SIN OBSERVACION",
        IF(RespuestaObservacion=1,"VISIBLE Y ACCESIBLE",
        IF(RespuestaObservacion=2,"MAL UBICADO",
        IF(RespuestaObservacion=3,"INVADIDO",
        IF(RespuestaObservacion=4,"NECESITA REPARACION",
        IF(RespuestaObservacion=5,"DESECHADO O GUARDADO POR EL CLIENTE",
        IF(RespuestaObservacion=6,"RETIRADO DEL NEGOCIO",
        IF(RespuestaObservacion=70,"CLIENTE NO DEJO ENTRAR",
        IF(RespuestaObservacion=71,"NO SE ENCONTRO TIENDA / PULPERIA",
        IF(RespuestaObservacion=72,"ESTABA CERRADO","ERROR,NO ENCONTRADA")))))))))) As name , count(RespuestaObservacion) as value 
         from actualizacion_exhibidores
         where RespuestaObservacion!=0 and RespuestaObservacion!=70 and RespuestaObservacion!=71 and RespuestaObservacion!=72 
         group by name 
         order by RespuestaObservacion asc;
         
         select p.Nombre_pais , 
         count( case when ae.RespuestaObservacion=1 then ae.RespuestaObservacion end) as "1",
         count( case when ae.RespuestaObservacion=2 then ae.RespuestaObservacion end) as "2",
         count( case when ae.RespuestaObservacion=3 then ae.RespuestaObservacion end) as "3",
         count( case when ae.RespuestaObservacion=4 then ae.RespuestaObservacion end) as "4",
         count( case when ae.RespuestaObservacion=5 then ae.RespuestaObservacion end) as "5",
         count( case when ae.RespuestaObservacion=6 then ae.RespuestaObservacion end) as "6"
         from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
		inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
		inner join rutas as r on u.Id_ruta=r.id_ruta
		inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
		inner join pais as p on d.id_pais=p.id_pais
		group by p.Nombre_pais;
        
        use sdvbocadeli;
        
SELECT d.Nombre_Distribuidora,r.Nombre_Ruta, 
(select mc.nombre_marca from bitacora_entrega_celular as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
inner join marca_cell as mc on t.id_marca_cell=mc.id_marca_cell
where becsub.Id_ruta=bec.id_ruta and estado=0 order by becsub.id_entrega_cell desc) as Marca_baja, 
(select moc.nombre_modelo from bitacora_entrega_celular as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
inner join modelo_cell as moc on t.id_modelo_cell=moc.id_modelo_cell
where becsub.Id_ruta=bec.id_ruta and estado=0 order by becsub.id_entrega_cell desc) as Modelo_baja, 
(select t.imei_telefono from bitacora_entrega_celular as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
where becsub.Id_ruta=bec.id_ruta and estado=0 order by becsub.id_entrega_cell desc) as Imei_baja,  bec.motivo_entrega ,bec.fecha_registro ,
mac.Nombre_Marca as Nombre_marca_reposicion, mc.nombre_Modelo as nombre_modelo_reposicion,t.imei_telefono as imei_telefono_reposicion
FROM `bitacora_entrega_celular` as bec 
inner join telefonos as t on bec.id_telefono = t.Id_telefono
inner join rutas as r on bec.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on bec.Id_Distribuidora=d.Id_Distribuidora
INNER join modelo_cell as mc on t.Id_modelo_cell=mc.Id_modelo_cell
inner join marca_cell as mac on mc.Id_marca_cell=mac.Id_marca_cell
WHERE motivo_entrega='DAÑO' and bec.fecha_registro BETWEEN '2020-08-01' and '2020-08-31'
UNION
select d.Nombre_Distribuidora,r.Nombre_Ruta,  
(select mc.nombre_marca from bitacora_entrega_celular_noautorizado as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
inner join marca_cell as mc on t.id_marca_cell=mc.id_marca_cell
where becsub.Id_ruta=becn.id_ruta and estado=0 order by becsub.id_entrega_cell_no desc) as Marca_baja, 
(select moc.nombre_modelo from bitacora_entrega_celular_noautorizado as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
inner join modelo_cell as moc on t.id_modelo_cell=moc.id_modelo_cell
where becsub.Id_ruta=becn.id_ruta and estado=0 order by becsub.id_entrega_cell_no desc) as Modelo_baja, 
(select t.imei_telefono from bitacora_entrega_celular_noautorizado as becsub 
inner join telefonos as t on becsub.id_telefono=t.id_telefono 
where becsub.Id_ruta=becn.id_ruta and estado=0 order by becsub.id_entrega_cell_no desc) as Imei_baja,  becn.motivo_entrega ,becn.fecha_registro ,
mac.Nombre_Marca as Nombre_marca_reposicion, mc.nombre_Modelo as Nombre_modelo_reposicion ,t.imei_telefono as imei_telefono_reposicion
from bitacora_entrega_celular_noautorizado  as becn 
inner join telefonos as t on becn.id_telefono = t.Id_telefono
inner join rutas as r on becn.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on becn.Id_Distribuidora=d.Id_Distribuidora
INNER join modelo_cell as mc on t.Id_modelo_cell=mc.Id_modelo_cell
inner join marca_cell as mac on mc.Id_marca_cell=mac.Id_marca_cell
WHERE motivo_entrega='DAÑO' and becn.fecha_registro BETWEEN '2020-08-01' and '2020-08-31';


describe marca_cell;



select d.Nombre_Distribuidora ,r.Nombre_Ruta ,
(select mai.nombre_marca from Bitacora_entrega_impresora as beisub
inner join rutas as r on beisub.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on beisub.Id_Distribuidora=d.Id_Distribuidora
inner join Impresoras as i on beisub.Id_Impresoras=i.Id_Impresoras
inner join Marca_Impresoras as mai on i.Id_marca_impresoras=mai.id_marca_impresoras
inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
where beisub.Id_Ruta=bei.Id_Ruta and bei.estado=0 order by i.Id_Impresoras DESC limit 1) as m_baja ,
(select moi.nombre_modelo from Bitacora_entrega_impresora as beisub
inner join rutas as r on beisub.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on beisub.Id_Distribuidora=d.Id_Distribuidora
inner join Impresoras as i on beisub.Id_Impresoras=i.Id_Impresoras
inner join Marca_Impresoras as mai on i.Id_marca_impresoras=mai.id_marca_impresoras
inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
where beisub.Id_Ruta=bei.Id_Ruta and beisub.estado=0 order by i.Id_Impresoras DESC limit 1) as mo_baja ,
(select i.n_serie from Bitacora_entrega_impresora as beisub
inner join rutas as r on beisub.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on beisub.Id_Distribuidora=d.Id_Distribuidora
inner join Impresoras as i on beisub.Id_Impresoras=i.Id_Impresoras
inner join Marca_Impresoras as mai on i.Id_marca_impresoras=mai.id_marca_impresoras
inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
where beisub.Id_Ruta=bei.Id_Ruta and beisub.estado=0 order by i.Id_Impresoras DESC limit 1) as n_serie_baja ,
(select i.activo_fijo from Bitacora_entrega_impresora as beisub
inner join rutas as r on beisub.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on beisub.Id_Distribuidora=d.Id_Distribuidora
inner join Impresoras as i on beisub.Id_Impresoras=i.Id_Impresoras
inner join Marca_Impresoras as mai on i.Id_marca_impresoras=mai.id_marca_impresoras
inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
where beisub.Id_Ruta=bei.Id_Ruta and beisub.estado=0 order by i.Id_Impresoras DESC limit 1) as activo_baja ,
bei.fecha_registro, i.observacion,
mai.nombre_marca , moi.nombre_modelo ,i.n_serie,i.activo_fijo from Bitacora_entrega_impresora as bei
inner join rutas as r on bei.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on bei.Id_Distribuidora=d.Id_Distribuidora
inner join Impresoras as i on bei.Id_Impresoras=i.Id_Impresoras
inner join Marca_Impresoras as mai on i.Id_marca_impresoras=mai.id_marca_impresoras
inner join Modelo_Impresoras as moi on i.Id_modelo_impresoras=moi.Id_modelo_impresoras 
where i.observacion='DAÑO' or i.observacion='REVISION IT' and i.estado=1;



SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        inner join clientes as c on ae.Id_cliente = c.Id_cliente
        inner join usuarios as u on c.id_usuarios=u.id_usuarios
        inner join rutas as r on u.id_ruta=r.id_ruta
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais= p.id_pais
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2 and p.id_pais=2
        group by NombreExhibidor 
        order by Total asc;
        
        
        SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        inner join clientes as c on ae.Id_cliente = c.Id_cliente
        inner join usuarios as u on c.id_usuarios=u.id_usuarios
        inner join rutas as r on u.id_ruta=r.id_ruta
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais= p.id_pais
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2 and d.division='HN_CENTRO'
        group by NombreExhibidor 
        order by Total asc;
        
        SELECT e.NombreExhibidor , count(ae.Id_exhibidores) as Total FROM exhibidores as e
        inner join actualizacion_exhibidores as ae on e.Id_Exhibidores=ae.Id_Exhibidores
        inner join clientes as c on ae.Id_cliente = c.Id_cliente
        inner join usuarios as u on c.id_usuarios=u.id_usuarios
        inner join rutas as r on u.id_ruta=r.id_ruta
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais= p.id_pais
        where e.NombreExhibidor!="SIN EXHIBIDOR" and ae.TipoActualizacion!=2 and p.division="HN_CENTRO"
        group by NombreExhibidor 
        order by Total asc;
        SELECT division FROM DISTRIBUIDORA GROUP BY division;
        
        
select C.Codigo, c.Nombre,c.Direccion ,c.Telefono ,e.nombre_exhibidor  from actualizacion_exhibidores as ae
inner join fotos_actualizacion_exh as fah on ae.id_cliente=fah.Id_cliente
inner join clientes as c on ae.Id_cliente = c.Id_cliente
inner join exhibidores as e on ae.Id_exhibidores=ae.Id_exhibidores
inner join usuarios as u on c.id_usuarios=u.id_usuarios
inner join rutas as r on u.id_ruta=r.id_ruta
inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
inner join pais as p on d.id_pais= p.id_pais;


select p.Nombre_Pais,d.Nombre_Distribuidora,d.Division,r.Nombre_Ruta,c.Codigo,c.Nombre,c.Telefono,c.Direccion ,ae.Id_Exhibidores,e.SKU_Exhibidor ,e.NombreExhibidor, c.Latitud,c.Longitud, 
		IF(RespuestaObservacion=0,"SIN OBSERVACION",
        IF(RespuestaObservacion=1,"VISIBLE Y ACCESIBLE",
        IF(RespuestaObservacion=2,"MAL UBICADO",
        IF(RespuestaObservacion=3,"INVADIDO",
        IF(RespuestaObservacion=4,"NECESITA REPARACION",
        IF(RespuestaObservacion=5,"DESECHADO O GUARDADO POR EL CLIENTE",
        IF(RespuestaObservacion=6,"RETIRADO DEL NEGOCIO",
        IF(RespuestaObservacion=70,"CLIENTE NO DEJO ENTRAR",
        IF(RespuestaObservacion=71,"NO SE ENCONTRO TIENDA / PULPERIA",
        IF(RespuestaObservacion=72,"ESTABA CERRADO","ERROR,NO ENCONTRADA")))))))))) AS Observacion
from clientes as c
INNER JOIN actualizacion_exhibidores as ae on c.Id_Cliente=ae.Id_Cliente
INNER JOIN exhibidores as e on ae.Id_Exhibidores=e.Id_Exhibidores
inner join fotos_actualizacion_exh as fah on ae.Id_Cliente=fah.Id_Cliente
inner join usuarios as u on c.Id_Usuarios=u.Id_Usuarios
inner join rutas as r on u.Id_Ruta=r.Id_Ruta
inner join distribuidora as d on r.Id_Distribuidora=d.Id_Distribuidora
inner join pais as p on d.Id_Pais=p.Id_Pais
where c.estado_w=1 and c.Estado='P' 
limit 10;
        
select  d.Nombre_distribuidora , d.division , r.nombre_ruta , gr.nombre_grupo from rutas as r
inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
inner join supervisores as s on r.id_supervisor =s.id_supervisor
inner join grupo_rutas as gr on s.Id_gruporutas=gr.Id_gruporutas ;

SELECT d.nombre_distribuidora AS Categoria, 
        count( case when ae.RespuestaObservacion=1 then ae.RespuestaObservacion end) as "Data1",
        count( case when ae.RespuestaObservacion=2 then ae.RespuestaObservacion end) as "Data2",
        count( case when ae.RespuestaObservacion=3 then ae.RespuestaObservacion end) as "Data3",
        count( case when ae.RespuestaObservacion=4 then ae.RespuestaObservacion end) as "Data4",
        count( case when ae.RespuestaObservacion=5 then ae.RespuestaObservacion end) as "Data5",
        count( case when ae.RespuestaObservacion=6 then ae.RespuestaObservacion end) as "Data6"
        from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join distribuidora as d on r.Id_distribuidora = d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where c.estado_w=1 and d.Division='GT_CENTRO'
        group by d.nombre_distribuidora;
        
        
        select gr.nombre_grupo , r.nombre_ruta,
		count( case when ae.RespuestaObservacion=1 then ae.RespuestaObservacion end) as "Data1",
        count( case when ae.RespuestaObservacion=2 then ae.RespuestaObservacion end) as "Data2",
        count( case when ae.RespuestaObservacion=3 then ae.RespuestaObservacion end) as "Data3",
        count( case when ae.RespuestaObservacion=4 then ae.RespuestaObservacion end) as "Data4",
        count( case when ae.RespuestaObservacion=5 then ae.RespuestaObservacion end) as "Data5",
        count( case when ae.RespuestaObservacion=6 then ae.RespuestaObservacion end) as "Data6"
		from actualizacion_exhibidores as ae 
        inner join clientes as c on ae.id_cliente=c.id_cliente
        inner join usuarios as u on c.Id_usuarios=u.Id_usuarios
        inner join rutas as r on u.Id_ruta=r.id_ruta
        inner join supervisores as s on r.id_supervisor=s.id_supervisor
        inner join grupo_rutas as gr on s.id_gruporutas=gr.id_gruporutas
        inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        where p.id_pais=2
        group by p.nombre_pais , d.division, d.nombre_distribuidora,  gr.nombre_grupo , r.nombre_ruta; 
        
        
        select * from supervisores;
        
        delete  from supervisores;
        
        insert into grupo_rutas values(0,'GRUPO 12') ;
        
       select * from Marcaciones_impulso; 
       use sdvbocadeli;
       
       SELECT ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Itinerario_impulso as ii
            inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
            inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
            
            where uc.Id_u_sdv=18 and Jueves=1 and ii.Estado_itinerario=1;
            
ALTER TABLE Itinerario_impulso add COLUMN Visitado int(2) not null;

	  SELECT ci.Id_cli_imp, ci.Cod_cli,ci.Nombre_cli FROM Marcaciones_impulso as mi 
      inner join Clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp 
      where mi.Visitado="INICIADA" AND mi.Id_u_sdv='.$this->session->userdata('Id_u_sdv').';
        
        
      SELECT ci.Id_cli_imp , ci.Nombre_cli , ci.Cod_cli from Marcaciones_impuslo as mi
			inner join Itinerario_impulso as ii on 
            inner join Clientes_impulsadoras as ci on ii.Id_cli_imp=ci.Id_cli_imp
            inner join usuarios_consolasdv as uc on ii.Id_u_sdv=uc.Id_u_sdv
            where uc.Id_u_sdv='.$this->session->userdata('Id_u_sdv').' and ii.'.$dias[date("w")].'=1 and ii.Estado_itinerario=1 and Visitado=0;
        
        
        use sdvbocadeli;
        select * from clientes_impulsadoras;
        select * from marcaciones_impulso;
        select * from Itinerario_impulso;
        
        update Itinerario_impulso Set Visitado=0 where id_cli_imp =5;
        select * from rutas;
        
        INSERT INTO clientes_impulsadoras VALUES ( 0, 0 ,'ALMUERZO','ALMUERZO','0','ALMUERZO',1,0,0,195);
        INSERT INTO clientes_impulsadoras VALUES ( 0, 0 ,'AUSENCIA TEMPORAL','AUSENCIA TEMPORAL','0','AUSENCIA TEMPORAL',1,0,0,195);
        INSERT INTO clientes_impulsadoras VALUES ( 0, 0 ,'DESPLAZAMIENTO','DESPLAZAMIENTO','0','DESPLAZAMIENTO',1,0,0,195);
        
        INSERT INTO acti_impulso VALUES(0,'ALMUERZO',1,'2020-09-04');
        INSERT INTO acti_impulso VALUES(0,'AUSENCIA TEMPORAL',1,'2020-09-04');
		INSERT INTO acti_impulso VALUES(0,'DESPLAZAMIENTO',1,'2020-09-04');
        
        
        select * from marcaciones_impulso where id_cli_imp;
        
        INSERT INTO Marcaciones_impulso VALUES(0,18,1077,14,0,0,'2020-09-04 13:00:00','0','0','0','2020-02-02','0','INICIADA');
        
        SELECT * FROM Marcaciones_impulso where Id_u_sdv=18 and Estado_marcacion="INICIADA" AND Id_cli_imp!=1077 AND Id_cli_imp!=1078 AND Id_cli_imp!=1079;
        
        
        
       SELECT Id_cli_imp FROM Marcaciones_impulso where Id_u_sdv='18' and Estado_marcacion="INICIADA" and Id_cli_imp=1079;
        
        
        use sdvbocadeli;
        
        SELECT r.Id_Ruta,r.Nombre_Ruta from rutas as r 
      inner join canal as c on r.id_canal=c.id_canal
      inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora
      where c.nombre_canal="MAYOREO" and r.Nombre_Ruta!="SUPERVISOR" AND r.Nombre_Ruta!="NO ASIGNADO" and r.id_distribuidora='1'
      order by r.Nombre_Ruta;
        
        
        SELECT Id_cli_imp,concat(Cod_cli," - ",Nombre_cli) as label FROM clientes_impulsadoras
        where id_ruta=173;
        
        
        
        use sdvbocadeli;
        select * from Tipo_marcacion_impulso;
     
        CREATE TABLE Tipo_marcacion_impulso(
        Id_tipo_marcacion int(7) zerofill not null auto_increment primary key,
        Nombre_tipo_marcacion varchar(50) not null 
        );
        INSERT INTO Tipo_marcacion_impulso values (0,'FUERA ITINERARIO'),(0,'ITINERARIO'),(0,'ACTIVIDAD EXTRAORDINARIA');
        
       SELECT * FROM CLIENTES_IMPULSADORAS;
       SELECT * FROM itinerario_impulso;
       SELECT * FROM RUTAS WHERE ID_RUTA=195;
       
       INSERT INTO clientes_impulsadoras VALUES(0,0,'APOYO DISTRIBUIDORA','APOYO DISTRIBUIDORA','0','APOYO DISTRIBUIDORA',1,0,0,195);
       INSERT INTO acti_impulso VALUES(0,'APOYO DISTRIBUIDORA',1,'2020-09-12');
       
       SELECT id_ruta FROM rutas where nombre_ruta='1.1.08';
        
        SELECT p.Nombre_pais,d.division,d.nombre_distribuidora,uc.nombre,ci.cod_cli,ci.Nombre_cli,ai.nombre_activ,mi.latitud_ini,mi.longitud_ini,mi.latitud_fin,mi.longitud_fin,mi.fecha_inicio,mi.fecha_fin,
       
        CONCAT(
		
            MOD(HOUR(TIMEDIFF(mi.fecha_fin,  mi.fecha_inicio )), 24), ' horas ',
            MINUTE(TIMEDIFF(mi.fecha_fin, mi.fecha_inicio )), ' minutos '
			) as Tiempo_visita,
mi.img_fin,tm.nombre_tipo_marcacion,mi.observacion FROM usuarios_consolasdv as uc
        inner join marcaciones_impulso as mi on uc.id_u_sdv=mi.id_u_sdv
        inner join tipo_marcacion_impulso as tm on mi.id_tipo_marcacion=tm.id_tipo_marcacion
        inner join clientes_impulsadoras as ci on mi.Id_cli_imp=ci.Id_cli_imp
        inner join acti_impulso as ai on mi.id_actividad=ai.id
        inner join distribuidora as d on uc.id_distribuidora=d.id_distribuidora
        inner join pais as p on d.id_pais=p.id_pais
        WHERE Canal='IMPULSO';
        
        DESCRIBE Itinerario_impulso;
        select * from usuarios_consolasdv;
        
        USE sdvbocadeli;
        ALTER TABLE usuarios_consolasdv modify Nombre   varchar(150) not null;
        INSERT INTO  usuarios_consolasdv VALUES (0,'DELMY YASMIN ALVAREZ HERNANDEZ','5216','5216',7,2,'IMPULSO');
        INSERT INTO  usuarios_consolasdv VALUES (0,'JENNIFER CARINA HERNANDEZ','5841','5841',7,1,'IMPULSO');
        INSERT INTO  usuarios_consolasdv VALUES (0,'DEYSI MARLENNE TRUJILLO','6956','6956',7,3,'IMPULSO');
        
        
INSERT INTO Itinerario_impulso VALUES(0,40,901,1,0,1,0,0,0,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,944,1,0,1,0,0,1,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,980,1,0,1,0,0,1,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,521,1,0,0,1,0,0,1,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,940,0,0,1,0,0,0,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,602,0,0,0,0,1,0,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,921,0,0,0,0,0,1,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,1063,0,0,0,0,0,1,0,1,0);
INSERT INTO Itinerario_impulso VALUES(0,40,48,1,0,0,0,0,0,0,1,0);

ALTER TABLE clientes_impulsadoras CHANGE Latitud_cli Latitud_cli varchar(250);
ALTER TABLE clientes_impulsadoras CHANGE Longitud_cli Longitud_cli varchar(250);

use sdvbocadeli;
DESCRIBE clientes_impulsadoras;
select * from Itinerario_impulso;

INSERT INTO Clientes_impulsadoras VALUES(0,'91381','MULTINEGOCIOS EL OCCIDENTE','ENTRADA A ALDEA BUENOS AIRES  LIVINGSTON','0','MULTINEGOCIOS EL OCCIDENTE','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91382','MULTINEGOCIOS EMANUEL','4A.CALLE INTERIOR ALDEA BUENOS AIRES,LIVINGTON','50411563','MULTINEGOCIOS EMANUEL','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91384','TIENDA MANUEL ','CALLE PRINCIPAL DEL MERCADO  EL ESTOR','0','TIENDA MANUEL','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91386','TIENDA ANDREA','CALLE PRINCIPAL DEL MERCADO  EL ESTOR','0','TIENDA ANDREA','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91395','COMERCIAL TORRES','CALLE PRINCIPAL ALDEA EL RICO  LOS AMATES','0','COMERCIAL TORRES','1','15.235427004899785','-89.1165957206714','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91396','TIENDA LA BENDICION','BO. LA BOMBA  ALDEA ENTRE RIOS  PTO. BARRIOS','0','TIENDA LA BENDICION','1','15.633048881588378','-88.53870529760316','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91401','COMERCIAL JENNIFER','CENTRO COMERCIAL  LOS AMATES','30088375','COMERCIAL JENNIFER','1','15.255567694895236','-89.09646652653801','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91403','COMERCIAL LA NUEVA','A UN COSTADO DEL CENTRO COMERCIAL  LOS AMATES','0','COMERCIAL LA NUEVA','1','15.25515068312716','-89.09670062985857','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91405','TIENDA SAN JORGE','KM. 200 RUTA AL ATLANTICO  LOS AMATES','0','TIENDA SAN JORGE','1','15.254859611277475','-89.09874496985876','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91406','SUPER LA EXCELENCIA','KM. 200 RUTA AL ATLANTICO  LOS AMATES','0','SUPER LA EXCELENCIA','1','15.254818310298866','-89.09878598219196','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91407','TIENDA LA ESQUINITA','BO. LAS BODEGAS  LOS AMATES','37323693','TIENDA LA ESQUINITA','1','15.43717032134226','-88.96486822462877','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91408','TIENDA LA BODEGA','BARRIO LA ESTACION LOS AMATES IZABAL','30351222','TIENDA LA BODEGA','1','15.25270951506478','-89.0952481245142','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91417','TIENDA LA NUEVA ESPERANZA','CENTRO COMERCIAL EL COMISARIATO  MORALES  IZABAL','0','TIENDA LA NUEVA ESPERANZA','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91418','MINI DESPENSA LA ESTRELLITA','CALLE PRINCIPAL DEL MERCADO  MORALES  IZABAL','0','MINI DESPENSA LA ESTRELLITA','1','15.47362921396118','-88.83678483616166','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91420','TIENDA EL AHORRO NO. 2','INTERIOR MERCADO NO. 2  MORALES  IZABAL','0','TIENDA EL AHORRO NO. 2','1','15.43717032134226','-88.96486822462877','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91421','TIENDA CRISTALIE','CALLE PRINCIPAL DEL MERCADO  MORALES  IZABAL','0','TIENDA CRISTALIE','1','15.478375420974071','-88.84898717560938','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91423','TIENDA LA BENDICION','INTERIOR MERCADO NO. 1  MORALES  IZABAL','0','TIENDA LA BENDICION','1','15.472470779797234','-88.83607135460825','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91424','TIENDA SANTA CRUZ NO. 2','EXTERIOR MERCADO NO. 1  MORALES  IZABAL','0','TIENDA SANTA CRUZ NO. 2','1','15.472920494632314','-88.83671048098756','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91425','TIENDA MAYA QUICHE','INTERIOR MERCADO NO. 2  MORALES  IZABAL','30084853','TIENDA MAYA QUICHE','1','15.473915434950253','-88.83637160310757','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91427','SUPER EL BUEN PRECIO','CALLE PRINCIPAL DEL MERCADO  MORALES  IZABAL','0','SUPER EL BUEN PRECIO','1','15.47363901204335','-88.8368463072156','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91433','TIENDA EL BUEN PRECIO NO. 2','INTERIOR MERCADO NO. 2  MORALES  IZABAL','0','TIENDA EL BUEN PRECIO NO. 2','1','15.473430980843757','-88.83695805604347','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91435','TIENDA EL AHORRO','INTERIOR MERCADO NO. 2  MORALES  IZABAL','0','TIENDA EL AHORRO','1','15.473909586195878','-88.83634040819777','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91437','TIENDA SAN PEDRITO','PUERTO BARRIOS,IZABAL','47134387','TIENDA SAN PEDRITO','1','14.845126127635707','-89.5175355791394','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91439','TIENDA LA ORIENTAL','INTERIOR MERCADO MUNICIPAL DE PTO. BARRIOS','31853778','TIENDA LA ORIENTAL','1','15.732565390675044','-88.59886320868243','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91440','TIENDA ELIZABETH','INTERIOR MERCADO MUNICIPAL DE PTO. BARRIOS','50671715','TIENDA ELIZABETH','1','15.733462768789954','-88.59915436533879','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91442','TIENDA VILLEDA','INTERIOR MERCADO MUNICIPAL DE PTO. BARRIOS','79488262','TIENDA VILLEDA','1','15.733462768789954','-88.59915436533879','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91443','TIENDA TIKAL','INTERIOR MERCADO MUNICIPAL DE PTO. BARRIOS','0','TIENDA TIKAL','1','15.733204283131045','-88.59926172381233','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91444','TIENDA LA FAVORITA NO. 1','INTERIOR MERCADO MUNICIPAL DE PTO. BARRIOS','0','TIENDA LA FAVORITA NO. 1','1','14.843169432668523','-89.51684674234971','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91445','TIENDA EBENEZER','INTERIOR MERCADO LA REVOLUCION TRAMO 180 Y 181 PUERTO BARRIOS','58909425','TIENDA EBENEZER','1','15.733585727359115','-88.59875297491014','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91452','GUILLERMO CHUM','MUELLE MUNICIPAL  PTO. BARRIOS  IZABAL','0','GUILLERMO CHUM','1','14.8419143662171','-89.51700335073484','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91453','TIENDA NUEVA JERUSALEM','INTERIOR DE MERCADO, PUERTO BARRIOS','79485547','TIENDA NUEVA JERUSALEM','1','15.733462768789954','-88.59915436533879','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91454','SUPER TIENDA ERICKA','KM. 204 RUTA AL ATLANTICO','0','SUPER TIENDA ERICKA','1','14.843097539373261','-89.51679299174603','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91458','TIENDA GABRIELITA','CALLE PRINCIPAL, ALDEA RIO DULCE, LIVINGSTON','45503983','TIENDA GABRIELITA','1','15.659288989744734','-89.00331554381147','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91463','TIENDA SANTA CRUZ','CALLEJON AL MUELLE MUNICIPAL  RIO DULCE  LIVINGSTON','0','TIENDA SANTA CRUZ','1','15.659713151281421','-89.0032712823056','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91464','TIENDA LA BENDICION','CALLE PRINCIPAL ALDEA RIO DULCE  LIVINGSTON','0','TIENDA LA BENDICION','1','15.659323570147654','-89.00358496232131','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91465','TIENDA LA SAMARITANA','CALLE PRINCIPAL ALDEA RIO DULCE  LIVINGSTON','0','TIENDA LA SAMARITANA','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91466','TIENDA LA SURTIDORA','CALLE PRINCIPAL ALDEA RIO DULCE  LIVINGSTON','0','TIENDA LA SURTIDORA','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91470','COMERCIAL ORIENTAL','MERCADO DE SANTO TOMAS DE CASTILLA  PTO. BARRIOS','79484320','COMERCIAL ORIENTAL','1','15.43717032134226','-88.96486822462877','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91471','TIENDA LIVINGSTON','CALLE A LAS ESCOBAS  STO. TOMAS DE CASTILLA','45904775','TIENDA LIVINGSTON','1','15.68493304075303','-88.61719873287504','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91472','TIENDA LAS MARGARITAS','KM. 302 RUTA A EL PETEN  ALDEA SEMOX  LIVINGSTON','0','TIENDA LAS MARGARITAS','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91473','TIENDA FERNANDITO','KM. 302 RUTA A EL PETEN  ALDEA SEMOX  LIVINGSTON','0','TIENDA FERNANDITO','1','15.820471982777562','-89.16488749998022','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91477','TIENDA YANETH','BARRIO SAN LORENZO JOCOTAN CHIQUIMULA','51853474','ISABEL ARIAS','1','14.819247764462164','-89.39040733925478','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91479','TIENDA ISABEL','CALLE PRINCIPAL JOCOTÁN CHIQUIMULA','57307037','TIENDA ISABEL','1','14.821081704831315','-89.38918974380474','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91481','TIENDA OTONIEL','BARRIO EL CEMENTERIO JOCOTAN CHIQUIMULA','48018546','WILLIAN GARCIA','1','14.820627419576226','-89.39107652255643','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91482','TIENDA SOFIA','BARRIO SAN SEBASTIAN JOCOTAN CHIQUIMULA','79465147','TIENDA SOFIA','1','14.82092474679823','-89.38924267554324','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91487','TIENDA Y DEPOSITO EL AHORRO','BARRIO EL CALVARIO JOCOTAN CHIQUIMULA CHIQUIMULA','31485382','JUANA LUCITANA CABRERA','1','14.821182731115696','-89.38908944488026','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91488','COMERCIAL SAN CARLOS','ALDEA CAPARJA JOCOTAN CHIQUIMULA','31056737','ANA JUDITH DE DIAZ','1','14.854548486490781','-89.23905298726993','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91492','TIENDA HOBS','7MA. C. ZONA 3  ZACAPA','48525182','TIENDA HOBS','1','14.971692110699276','-89.52847606268362','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91493','DISTRIBUIDORA SAN RAFAEL','7 CALLE 17-07 ZONA 3 ZACAPA ZACAPA','79411637','FELIPE CARRILLO','1','14.971692110699276','-89.52847606268362','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91495','TIENDA DIVINO MAESTRO','7 CALLE 16-23 ZONA 3 ZACAPA ZACAPA','59293608','TIENDA DIVINO MAESTRO','1','14.97269181595967','-89.5282545168891','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91499','COMERCIAL ESTRELLA','16 AVENIDA 7-19 ZONA 1 BARRIO TAMARINDAL ZACAPA ZACAPA','58380890','GERMAN SOSA','1','14.972057230561063','-89.52903220810863','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91507','TIENDA BRENCY','13 AVE. 6TA. C. ZONA 1  ZACAPA','0','TIENDA BRENCY','1','14.97274717930551','-89.52908407060441','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91508','DISTRIBUIDORA LETTY','ALDEA LA REFORMA HUITE ZACAPA','34116307','DISTRIBUIDORA LETTY','1','14.957528534862325','-89.70190016993988','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91517','SUPER MAX','7MA. AVE.  TECULUTÀN ZACAPA','79349602','SUPER MAX','1','14.993315099993888','-89.71710466179375','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91524','COMERCIALIZADORA SANDOVAL','BARRIO LA ESTACION GUALAN ZACAPA','79332948','GLADYS SOLORZANO','1','15.111342701666453','-89.35809238885423','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91525','SUPER ALMACEN ESTELITA','BARRIO LA ESTACION GUALAN ZACAPA','79332274','ALFREDO MAYORGA CORDON','1','15.111377380936261','-89.35818569829391','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91526','MISCELANEA LA BENDICIÒN','INTERIOR MERCADO  GUALAN  ZACAPA','43168206','MISCELANEA LA BENDICIÒN','1','15.113405595695397','-89.36179574669886','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91530','TIENDA KARINA DOS','BARRIO EL CENTRO GUALAN ZACAPA','79332773','ROMILIA SUCHITE','1','15.113268934359361','-89.36103464041412','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91532','COMERCIAL EL CAMPESINO','3 AVENIDA 2-47 ZONA 1 LA UNION ZACAPA','30034012','WALTER HUMBERTO COREA PAIZ','1','14.965831154516122','-89.29167558692082','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91533','DISTRIBUIDORA DE PRODUCTOS C&O S.A.','2 AVENIDA BARRIO EL CENTRO LA UNION ZACAPA','79418234','DISTRIBUIDORA DE PRODUCTOS C&O S.A.','1','14.96661487151325','-89.29060189874882','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91534','SURTI NEGOCIOS S.A.','2 AVENIDA BARRIO EL CENTRO LA UNION ZACAPA','79418009','SURTI NEGOCIOS S.A.','1','14.9675632533917','-89.29076466038798','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91536','COMERCIAL EL PUNTO','ENTRADA A LOTIFICACION VALLE DEL MOTAGUA, GUALAN, ZACAPA','58003007','COMERCIAL EL PUNTO','1','15.130688775186453','-89.35337781350944','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91540','TIENDA LA ECONOMICA','SANSARE  EL PROGRESO','0','TIENDA LA ECONOMICA','1','14.748052506465392','-90.11576270507756','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91544','TIENDA EL BUEN PRECIO','AVE. ISMAEL ARRIAZA 1-01 ZONA 4  SANARATE','33591609','TIENDA EL BUEN PRECIO','1','14.786832196184042','-90.19862796715677','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91545','COMERCIAL SUPER AHORRO','1RA. AVE. 3RA. C. ZONA 3  SANARATE','31409537','COMERCIAL SUPER AHORRO','1','14.785615722682337','-90.19935618772965','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91546','DISTRIBUIDORA SAMARITANA','1RA. AVE. 2DA. C. ESQUINA  MERCADO  SANARATE','58392987','DISTRIBUIDORA SAMARITANA','1','14.85658482185952','-90.0892499367739','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91547','TIENDA SAMARITANA','CALLE DEL MERCADO  SANARATE','52205259','TIENDA SAMARITANA','1','14.786020275072092','-90.19864566195655','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91548','DISTRIBUIDORA SANTA MARTA S.A.','CALLE PRINCIPAL  BO. EL GOLFO  GUASTATOYA','30054012','DISTRIBUIDORA SANTA MARTA S.A.','1','14.854314775322871','-90.06902071682794','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91549','COMERCIAL DYM','ALDEA EL RANCHO  SAN AGUSTÌN  AC.','79288669','COMERCIAL DYM','1','14.916598992598379','-90.00627388380957','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91550','ABARROTERIA LA ECONOMICA','BO. EL CENTRO, EL RANCHO ','45616190','ABARROTERIA LA ECONOMICA','1','14.916730349937529','-90.00638802994881','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91553','TIENDA LOS CISNES','EL CALVARIO  MORAZÀN  EL PROGRESO','53852240','TIENDA LOS CISNES','1','14.932641095962852','-90.14439180753085','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91554','COMERCIAL SAN AGUSTÌN','SAN AGUSTÌN AC.  EL PROGRESO','44313511','COMERCIAL SAN AGUSTÌN','1','14.945277393975177','-89.96897631712348','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91555','TIENDA EL AHORRO','SAN AGUSTÌN AC.  EL PROGRESO','45144222','TIENDA EL AHORRO','1','14.94440361694422','-89.96942812504454','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91557','TIENDA LA ECONOMICA','SAN AGUSTÌN AC.  EL PROGRESO','0','TIENDA LA ECONOMICA','1','14.944986948408959','-89.96906391561693','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91558','TIENDA EL BUEN PRECIO','SAN AGUSTÌN AC.  EL PROGRESO','0','TIENDA EL BUEN PRECIO','1','14.945118092477395','-89.97031644806182','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'91559','KIMICA','9AV. 1-10 ZONA 2 COL. LOS PINOS ESQUIPULA','57881145','KIMICA','1','14.563620632305636','-89.33911640088908','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91561','SUPER TIENDAS EL SOL','KM 224 CARRETERA A HONDURAS, ZONA 5 ESQUIPULAS, CHIQUIMULA','79434182','SUPER TIENDAS EL SOL','1','14.565157493598942','-89.35242347151122','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91562','DEPOSITO IBETH','5 AVENIDA 8-01 ZONA 1 ESQUIPULAS CHIQUIMULA','79431058','MIGUEL RODRIGUEZ','1','14.56576757362683','-89.35147026228483','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91563','INVERSIONES Y TIENDA SAN JUDAS SOCIEDAD ANONIMA','4TA. AVE. 7-29 ZONA 1 ESQUIPULAS,CHIQUIMULA','79430114','INVERSIONES Y TIENDA SAN JUDAS SOCIEDAD ANONIMA','1','14.56586294297344','-89.35239213621203','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91564','DISTRIBUIDORA EL VOLCAN','8 AVENIDA 7-71 ZONA 1 ESQUIPULAS CHIQUIMULA','42562331','DISTRIBUIDORA EL VOLCAN S.A','1','14.566732660939712','-89.34914051784979','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91565','TIENDA ROSIBEL','LOCAL 1 INTERIOR MERCADO MUNICIPAL QUEZALTEPEQUE CHIQUIMULA','51657801','ALBA GIRON','1','14.63551298625723','-89.44284566581753','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91567','PINATERIA LAS TRES MARIAS','1 CALLE 3-63 ZONA 1 QUEZALTEPEQUE CHIQUIMULA','79440390','JAIME LUIS GARCIA','1','14.635229225679343','-89.441962531438','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91570','TIENDA YESENIA','INTERIO MERCADO MUNICIPAL QUETZALTEPEQUE','51150339','TIENDA YESENIA','1','14.635536024209062','-89.44275398218831','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91571','MINI MERCADO CACHACERO','1 AVENIDA 2-30 ZONA 2 BARRIO EL PUENTE QUEZALTEPEQUE CHIQUIMULA','31393670','MINI CACHACERO','1','14.635091159764805','-89.4448200469609','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91573','TIENDA WENDY','CALLE AL CEMENTERIO CONCEPCION LAS MINAS CHIQUIMULA','40713516','TIENDA WENDY','1','14.522823176519088','-89.4571436966629','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91574','DESPENSA DONYS','CALLE PRINCIPAL CONCEPCION LAS MINAS CHIQUIMULA','79435808','DONYS S.A','1','14.522428009334032','-89.45709646632679','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91575','TIENDA MI TIENDECITA','CALLE PRINCIPAL CONCEPCION LAS MINAS CHIQUIMULA','79435264','VICTOR OSWALDO VILLEDA MACHORRO/TIENDA MI TIENDECITA','1','14.52288147550136','-89.45763720676021','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91577','DESPENSA YOLY','CALLE PRINCIPAL CONCEPCION LAS MINAS CHIQUIMULA','79435167','YOLANDA RIVERA','1','14.523081260769864','-89.45795401795935','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91582','TIENDA YAQUELIN','4 AVENIDA 2-11 ZONA 1 BARRIO EL CENTRO OLOPA CHIQUIMULA','55554874','BLANCA DINA CARDONA','1','14.691255558997065','-89.34903621089964','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91586','TIENDA LAS MARIAS','BARRIO EL CENTRO OLOPA CHIQUIMULA','49687900','DISTRIBUIDORA LAS MARIAS','1','14.69174578644956','-89.34882918813047','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91589','FARMACIA AMERICA','3 CALLE 7-21 ZONA 1 CHIQUIMULA CHIQUIMULA','79434842','LUIS ENRIQUE SAMAYOA','1','14.800833784486333','-89.54503466613505','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91590','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','8A. AV. 4-88 ZONA 1 CHIQUIMULA','79423797','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','1','14.798350485716472','-89.54468086652697','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91593','TIENDA LAS HERMANITAS','TERMINAL DE BUSES CHIQUIMULA','0','TIENDA LAS HERMANITAS','1','14.80208831249536','-89.54089320187502','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91594','TIENDA EL VOLCAN','LOCAL 3 EXTERIOR MERCADO MUNICIPAL ZONA 1 CHIQUIMULA CHIQUIMULA','59221277','BLANCA RAMIREZ','1','14.799761895374084','-89.5453474088946','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91595','DEPOSITO ASHLEY','LOCAL 213 INTERIOR MERCADO MUNICIPAL CHIQUIMULA CHIQUIMULA','32630289','MAYRA MARTINEZ','1','14.80058646018186','-89.54492413511306','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91597','TIENDA PAOLITA','11 AVE. LOCAL 185 MERCADO TERMINAL CHIQUIMULA','50461217','TIENDA PAOLITA','1','14.802593874926378','-89.5402935787249','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91601','DISTRIBUIDORA LA BENDICION','1 CALLE ENTRE 10 Y 11 AVENIDA LOCAL 43 MERCADO LA TERMINAL ZONA 1 CHIQUIMULA CHIQUIMULA','31867197','FREDY PINTO','1','14.802997870628403','-89.54062577253983','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91603','TIENDA EL EXITO','LOCAL 178 INTERIOR MERCADO MUNICIPAL CHIQUIMULA CHIQUIMULA','79424271','TIENDA EL EXITO','1','14.800439543987157','-89.54480238241747','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91604','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','KM. 172.1 CARRETERA A ESQUIPULAS, CHIQUIMULA','79426698','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','1','14.800551059769495','-89.54328485265629','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91605','TIENDA LOS GEMELOS','LOCAL 196 MERCADO CENTRAL CHIQUIMULA','79426949','TIENDA LOS GEMELOS','1','14.80040322144666','-89.5452383498143','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91606','TIENDA BLANQUITA','1 CALLE 2-15 ZONA 1 QUEZALTEPEQUECHIQUIMULA','79440091','BLANCA VIRGINIA TRUJILLO CARDONA','1','14.635584579447999','-89.4432865121992','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'91607','MINIMARKET QUIKE S','LOCAL BLINDA ZONA 1  BARRIO EL CENTRO SALAMA BAJA VERAPAZ','59660766','MINIMARKET QUIKE S','1','15.101237361621129','-90.32253209573298','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91608','TIENDA SOFIA','5TA. Y 2DA. CALLE ZONA 1 SALAMA','55312123','TIENDA SOFIA','1','15.101522349029407','-90.32231004093208','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91609','SUPERMERCADOS GLORIA  S.A','17 CALLE "A" 31-64 ZONA 7 RESIDENCIAL  VILLA LINDA 3  GUATEMALA','79400425386','SUPERMERCADOS GLORIA  S.A','1','15.101493898626037','-90.32165000264006','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91610','TIENDA COBANERA','5TA. AV. 4-67 ZONA 1 SALAMA','41656878Y45938572','TIENDA COBANERA','1','15.102734416823907','-90.3210297927492','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91611','TIENDA TONY','5TA. AV. 4-71 ZONA 1 SALAMA','46195439','TIENDA TONY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91612','TIENDA EL AMIGO','5TA. AV. 5-62 ZONA 1 SALAMA','47452636','TIENDA EL AMIGO','1','15.103400577498082','-90.3207750344202','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91613','YOLHER S.A','5TA. CALLE 5-14 ZONA 1 SALAMA','79400919','YOLHER S.A','1','15.103282910944218','-90.32009993590287','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91614','SUPER TIENDA JANDY HERMANOS S.A','6TA. AV. 3-49 ZONA 1 SALAMA','79401258','SUPER TIENDA JANDY HERMANOS S.A','1','15.100876262245764','-90.3206150120409','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91615','LAS CANAS SUPER MARKET','0 CALLE 1-68 ZONA 3  SAN JERONIMO BAJA VERAPAZ','46327732','LAS CANAS SUPER MARKET','1','15.062350959444936','-90.24507810519137','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91616','DEPOSITO LA BODEGUITA','CANTON SAN JUAN X ESCUELA PARVULOS SAN MIGUEL','47690729','DEPOSITO LA BODEGUITA','1','15.093473436246123','-90.39584157434251','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91617','TIENDA DIVINO MAESTRO','CANTON SAN PEDRO FRENTE AL SALON SAN MIGUEL','0','TIENDA DIVINO MAESTRO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91618','TIENDA FLOR DEL PARAISO','2 AV. 2 CALLE ZONA 2 RABINAL','46098711','TIENDA FLOR DEL PARAISO','1','15.084279622083342','-90.49234401741849','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91619','TIENDA MELISSA','1ERA CALLE  2 AV. ZONA 3 RABINAL','55890939','TIENDA MELISSA','1','15.085579398829344','-90.49255640451365','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91620','TIENDA SAN SEBASTIAN','2 AV. 6TA. CALLE ZONA 3 RABINAL','79388144','TIENDA SAN SEBASTIAN','1','15.086062914907911','-90.49282655391798','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91621','SUPER TIENDA MARIA CELESTE','3 AV ZONA 1 BARRIO SANTIAGO CUBULCO','79540022','SUPER TIENDA MARIA CELESTE','1','15.104140300241774','-90.6300623721179','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91622','TIENDA TERESITA','BARRIO SANTIAGO ZONA 1 CUBULCO','5191988636','TIENDA TERESITA','1','15.103718436367652','-90.63009793669433','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91623','TIENDA SAN RAYMUNDO','2-37 ZONA 1 BARRIO SANTIAGO CUBULCO','79540278','TIENDA SAN RAYMUNDO','1','15.102995280674735','-90.63006037990901','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91624','DEPOSITO EL OHIM','BARRIO SAN JUAN CUBULCO FRENTE A BANRURAL','79540375','DEPOSITO EL OHIM','1','15.101696940984095','-90.62911237418844','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91625','TIENDA LA PREFERIDA','BARRIO SAN MIGUEL FRENTE MERCADO CUBULCO','59819699','TIENDA LA PREFERIDA','1','15.102439059397238','-90.62907350431473','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91626','TIENDA JIRHE 2','BARRIO SAN MIGUEL FRENTE MERCADO CUBULCO','0','TIENDA JIRHE 2','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91627','TIENDA JIRHE  ','BARRIO SANTIAGO X GASOLINERA ALEX CUBULCO','53527500','TIENDA JIRHE','1','15.104264235853845','-90.62912451039122','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91628','TIENDA ISRAEL','2 CALLE 4-60 ZONA 2 BARRIO SANTIAGO CUBULCO BAJA VERAPAZ','46487804','TIENDA ISRAEL','1','15.102606591413819','-90.62907323877407','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91629','TIENDA NORY','6 AV. 3-02 ZONA 1 TACTIC','52079622','TIENDA NORY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91630','TIENDA CINDY','INTERIOR MERCADO TACTIC','40314635','TIENDA CINDY','1','15.319469080382905','-90.35182451366009','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91631','TIENDA LA ESTRELLITA','5 TA. CALLE 1-35 ZONA 1 TACTIC','79505346','TIENDA LA ESTRELLITA','1','15.319404180329544','-90.35283304740548','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91632','LA CASA DE LAS ESPECIES','INTERIOR MERCADO TACTIC','45725591','LA CASA DE LAS ESPECIES','1','15.31947804781235','-90.35226853616919','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91633','MISCELANEA GABYFER','FRENTE AL MERCADO TACTIC','47723797','MISCELANEA GABYFER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91634','TIENDA CONY','INTERIOR MERCADO TACTIC','46462532','TIENDA CONY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91635','TIENDA CRISTIAN','1 ERA CALLE 4-97 ZONA 4 TACTIC','46975030','TIENDA CRISTIAN','1','15.319734023729973','-90.35259632980676','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91636','TIENDA NUEVO AMANECER','INTERIOR MERCADO TACTIC','45263031','TIENDA NUEVO AMANECER','1','15.319696404229278','-90.35231930893849','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91637','TIENDA ADELA','INTERIOR MERCADO TACTIC','46532033','TIENDA ADELA','1','15.319548716854014','-90.35182315843859','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91638','TIENDA ELIZABETH','7 AV. 3-20 ZONA 1 TACTIC','40268530','TIENDA ELIZABETH','1','15.318903453843708','-90.35202482243155','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91639','TIENDA ELMER','2 DA. CALLE  4 AV. ZONA 2 BRRO. SAN JACINTO TACTIC','57918846','TIENDA ELMER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91640','TIENDA ADELITA','ATRAS DEL MERCADO DE TACTIC','79529818','TIENDA ADELITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91641','TIENDA CASILDA','INTERIOR MERCADO TACTIC','51923711','TIENDA CASILDA','1','15.319398655811172','-90.3518100961973','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91642','ABARROTERIA CHINITA','FRENTE AL PARQUE DE TACTIC','45854140','ABARROTERIA CHINITA','1','15.318502654432063','-90.35178981949407','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91643','TIENDA MARGA','4TA CALLE  6-15 ZONA 1 TACTIC','79539621','TIENDA MARGA','1','15.318507511582155','-90.35178497195524','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91644','TIENDA MAYA','FRENTE AL PARQUE DE TACTIC','50632003','TIENDA MAYA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91645','MINI TIENDA EDSON J.R','CALLE AL COLEGIO AKALTIC  TACTIC A.V','23335285','MINI TIENDA EDSON J.R','1','15.3196315285952','-90.35287421608875','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91646','TIENDA MAGDA','CALLE PRINCIPAL PPURULHA FRENTE AL PARQUE','50620670','TIENDA MAGDA','1','15.237939473307916','-90.23542379183803','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91647','TIENDA MISHEL','RINCON DEL CARPINTERO PURULHA','0','TIENDA MISHEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91648','IRMA LETICIA CHOCO','INTERIOR MERCADO PURULHA','0','IRMA LETICIA CHOCO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91649','TIENDA MARGARITA','BARRIO SAN ANTONIO PURULHA','57485675','TIENDA MARGARITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91650','TIENDA MARLEN','CALLE PRINCIPAL PURULHA','79524353','TIENDA MARLEN','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91651','TIENDA CRISTO MY REY','CALLE PRINCIPAL PURULHA','49102434','TIENDA CRISTO MY REY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91652','TIENDA MIS PASITOS','BARRIO CENTRO PURULHA','53774823','TIENDA MIS PASITOS','1','15.237069945442057','-90.23229036969475','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91653','COMERCIAL SAN PABLO','BARRIO SAN PABLO TAMAHU A.V','57103913','COMERCIAL SAN PABLO','1','15.307739883197156','-90.23461881309115','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91654','TIENDA AMALIA','ATRAS DEL MERCADO DE TAMAHU','45835919','TIENDA AMALIA','1','15.307765957993396','-90.23418578561099','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91655','TIENDA BEATRIZ','INTERIOR MERCADO TAMAHU','46532036','TIENDA BEATRIZ','1','15.307570703137808','-90.23420969920102','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91656','TIENDA IRIS','INTERIOR MERCADO DE TAMAHU','50389884','TIENDA IRIS','1','15.307469095857202','-90.23449794260144','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91657','TIENDA VIOLETA','BARRIO CENTRO TAMAHU','50389884','TIENDA VIOLETA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91658','TIENDA MARIBEL','ATRAS DEL MERCADO TAMAHU','40964195','TIENDA MARIBEL','1','15.307385320351363','-90.23499506188942','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91659','TIENDA ADELINA','BARRIO SAN PABLO TAMAHU FRENTE A RENAP','30341753','TIENDA ADELINA','1','15.307646703256186','-90.2338078484969','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91660','TIENDA ESPERANZA','COLONIA PANA  BARRIO SAN SEBASTIAN','51072372','TIENDA ESPERANZA','1','15.368616246778767','-90.48014033440586','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91661','AB. SENOR DE ESQUIPULAS','LOCAL NO. 16 MERCADO SAN CRISTOBAL','49626665','AB. SENOR DE ESQUIPULAS','1','15.365544634456715','-90.47816412093893','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91662','MINI ABARROTERIA LA BENDICION','A UN COSTADO FE 2 SAN CRISTOBAL','45098430','MINI ABARROTERIA LA BENDICION','1','15.364503464652712','-90.4792862537398','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91663','TIENDA EMANUEL','PARADA DE BUSES LAS PACAYAS SAN CRISTOBAL','46088824','TIENDA EMANUEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91664','ABARROTERIA EL BUEN PRECIO','FRENTE A COOPSAMA SAN CRISTOBAL','58814419','ABARROTERIA EL BUEN PRECIO','1','15.36460658167348','-90.47940323482604','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91665','DEPOSITO LA FE NO. 1','A UNA CUADRA DE LA DESPENSA FAMILIAR  SAN CRISTOBAL','40393236','DEPOSITO LA FE NO. 1','1','15.363887490720293','-90.47932401426162','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91666','DEPOSITO LA FE NO. 2','A UN COSTADO DEL MERCADO SAN CRISTOBAL','0','DEPOSITO LA FE NO. 2','1','15.364730520050546','-90.47921561865657','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91667','ESPECIES GABY','FRENTE MERCADO DE SAN CRISTOBAL','46872167','ESPECIES GABY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91668','ABARROTERIA LUPITA','BARRIO SANTA CECILIA SANTA CRUZ','4005922034270380','ABARROTERIA LUPITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91669','DEPOSITO CANDELARIA','CALLE 3 DE MAYO SANTA CRUZ','49724085','DEPOSITO CANDELARIA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91670','SURTIDORA LA FE','BARRIO SANTA CECILIA SANTA CRUZ','0','SURTIDORA LA FE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91671','TIENDA DONA ALICIA','CALLE 3 DE MAYO SANTA CRUZ','0','TIENDA DONA ALICIA','1','15.375012048636584','-90.42980512303073','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91672','DISTRIBUIDORA CHICHOCHOC','BARRIO SANTA CECILIA SANTA CRUZ','40565840','DISTRIBUIDORA CHICHOCHOC','1','15.374624829399247','-90.42901558821403','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91673','TIENDA FLORY','BARRIO SANTO TOMAS SANTA CRUZ A.V','49301614','TIENDA FLORY','1','15.374180311586404','-90.4322111147348','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91674','TIENDA FABIOLA','1 AVENIDA Y 2 CALLE 2-90 ZONA 4 COBAN ALTA VERAPAZ','79511940','TIENDA FABIOLA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91675','DISTRIBUIDORA ANY','1A AV 3-17 ZONA 4 COBAN A.V','58001524','DISTRIBUIDORA ANY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91676','ESPECIAS EMANUEL','1A AV 3-18 ZONA 4 COBAN A.V','48871956','ESPECIAS EMANUEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91677','DEPOSITO LA BENDICION','1AAV 3-28 ZONA 4 COBAN A.V','49526306','DEPOSITO LA BENDICION','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91678','ABARROTERIA ELIZABETH','1A AV3-29 ZONA 4 COBAN A.V','0','ABARROTERIA ELIZABETH','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91679','SURTIDORA COBAN','LOCAL # 15 EXT MERCADO CENTRAL COBAN A.V','0','SURTIDORA COBAN','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91680','DEPOSITOEL ROSARIO','1A AV 3-57 ZONA 4 COBAN A.V','57202268','DEPOSITOEL ROSARIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91681','DEPOSITO LA TERMINAL','1A AV 3-45 ZONA 4 COBAN A.V','57078777','DEPOSITO LA TERMINAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91682','TIENDA LA FE','1A AV 3-48 ZONA 4 COBAN A.V','57326109','TIENDA LA FE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91683','COMERCIAL VILLA DEL SOL','DIAGONAL 1 1-26 ZONA 4 COBAN A.V','50836429','COMERCIAL VILLA DEL SOL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91684','DEPOSITO EL REY','3A AV 2-19 ZONA 4 COBAN A.V','43269276','DEPOSITO EL REY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91685','SURTIDORA ROSY','EXTERIOR MERCADO CENTRAL LOCAL NO. 13','0','SURTIDORA ROSY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91686','TIENDA ELIZABETH ','BARRIO CANTON LAS CASAS ZONA 8 COBAN','30619981','TIENDA ELIZABETH','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91687','ABARROTERIA GONZALES','2 CALLE 16-12 ZONA 12  EL ESFUERZO # 2 COBAN A.V','48144430','ABARROTERIA GONZALES','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91688','ABARROTERIA LA BARATA','COLONIA EL ESFUERZO # 2 ZONA 12 COBAN','30130807','ABARROTERIA LA BARATA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'91692','TIENDA EMILY','0 CALLE 0-70 ZONA 4 SAN JUAN CHAMELCO ALTA VERAPAZ','79500360','LESVIA EDELMIRA CU','1','15.424334887341665','-90.33052207961349','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91694','TIENDA LIDIA','EXTERIOR MERCADO MUNICIPAL SAN JUAN CHAMELCO ALTA VERAPAZ','53315517','LIDIA VALDEZ DE PAAU','1','15.423747724806663','-90.32983589879215','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91695','TIENDA MARANATHA','0 AVENIDA 2-38 ZONA 3 SAN JUAN CHAMELCO ALTA VERAPAZ','79500547','MARIA AMANDA CHUB','1','15.423751461325066','-90.32983053153492','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91699','ABARROTERIA VERAPAZ','ALDEA CUBILGUITZ COBAN ALTA VERAPAZ','45862783','MAGDALENA LUX','1','15.667836758173674','-90.42887554745776','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91701','SURTIDORA MARIBEL','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','40640910','ALBERTO TZUL CAO','1','15.8122916125342','-90.28992482466201','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91702','SURTIDORA ESTRELLA','CALLE PRINCIPAL BARRIO EL CENTRO CHISEC ALTA VERAPAZ','48509777','JOSE CAAL','1','15.812554235813927','-90.29029149774458','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91703','SURTIDORA ROSY','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','30080740','REINA MARISELDA CAAL CHEN','1','15.812247554655912','-90.29073581139335','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91704','SURTIDORA LOS MAYAS','MERCADO MUNICIPAL CHISEC ALTA VERAPAZ','30162782','FELIPE EULOGIO BO','1','15.811723273501505','-90.29064290475436','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91705','SURTIDORA LUISA','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','45392460','RENE ADRIAN CAAL CHOC','1','15.812526198927705','-90.28975267492658','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91706','TIENDA CANDY','CALLE PRINCIPAL CAMPUR ALTA VERAPAZ','59182812','MAURA ELUBIA AJCA COY','1','15.631761351997064','-90.04695921777515','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91708','TIENDA LA ECONOMICA','CALLE PRINCIPAL CAMPUR ALTA VERAPAZ','46961274','HUGO PA CATUN','1','15.632792167649992','-90.04440329892597','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91711','TIENDA JULITOS','BARRIO SANTA MARIA CAHABON','0','TIENDA JULITOS','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91712','TIENDA VILMA','BARRIO SAN PEDRO CAHABON','0','TIENDA VILMA','1','15.478936490337862','-90.30958198712884','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91718','MINI COMERCIAL ALEJANDRA','BARRIO SAN NICOLAS LANQUIN ALTA VERAPAZ','33060585','ESPERANZA SACRAB','1','15.576304649089224','-89.98031036363868','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91719','TIENDA RAMONA CHOC','BARRIO SAN AGUSTIN LANQUIN ALTA VERAPAZ','46551996','RAMONA CHOC POP','1','15.573900144159502','-89.98097103088094','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91720','TIENDA VICTOR','BARRIO SAN FRANCISCO LANQUIN','0','TIENDA VICTOR','1','15.577089036472746','-89.97946025353647','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91721','TIENDA YULY','4 CALLE 10-71 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','30810552','JULIANA ICAL','1','15.481468903372965','-90.30866912905498','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91723','TIENDA GABY','CALZADA CHIXTUN ZONA 5 CARCHA','0','TIENDA GABY','1','15.48187817209368','-90.30865866556728','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91724','ABARROTERIA IRMITA','9 CALLE 7-53 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','53449473','GERARDO CHON','1','15.475874882671654','-90.3094004642924','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91727','TIENDA XELAJU','8AV. 3-09 ZONA 1 CARCHA','0','TIENDA XELAJU','1','15.478981724929733','-90.30971402034498','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91729','TIENDA LA UNICA','6 CALLE 11-56 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','45177251','RODOLFO AMILCAR CATUN HOENES','1','15.476265977782726','-90.3073756126535','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91731','TIENDA ACUARIO','8AV. 1-73 ZONA 1 CARCHA','0','TIENDA ACUARIO','1','15.480015295079202','-90.30843285305912','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91733','TIENDA ASUNCION','8 AVENIDA 3-33 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','31010756','VILMA XOL PUTUL','1','15.478378420869833','-90.30918887237996','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91735','TIENDA SAN MIGUELITO','8 AVENIDA 4-46 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','30409425','ERICK RENE CHEB MO','1','15.477989968691386','-90.30933928787617','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91737','MINI TIENDA CARCHA','7 AVENIDA 3-75 ZONA SAN PEDRO CARCHA ALTA VERAPAZ','79516317','FRANCISCO CASTRO','1','15.481657161622394','-90.30868280100994','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91730','TIENDA FLOR DEL COMERCIIO','10 AVENIDA 4-70 ZONA 1 SAN PEDRO CARCHA A.V','0','TIENDA FLOR DEL COMERCIIO','1','15.477459216237683','-90.30865318440662','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91739','TIENDA FABY','BARRIO CANIHAB ZONA 0 SAN PEDRO CARCHA ALTA VERAPAZ','30137206','FABIOLA SACBA','1','15.474353546720625','-90.30462905307314','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91742','SURTIDORA GUADALUPE','8 AVENIDA 4-46 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','30351590','SHENY AMERICA CHEN MO','1','15.478039974394909','-90.30933733942629','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91743','TIENDA FLOR DE DALIA','8AV. 3-53 ZONA 1 CARCHA ','0','TIENDA FLOR DE DALIA','1','15.47828835874794','-90.30920812364982','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91747','DISTRIBUIDORA COMERCIAL YASMIN','4 CALLE 8-78 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','79515287','DISTRIBUIDORA COMERCIAL YASMIN','1','15.47815251798331','-90.30868499130379','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91748','TIENDA EL ANGELITO','6 CALLE 10-22 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','55512450','VILMA ARACELY CAHUEC CAAL','1','15.476455250193974','-90.30864901808485','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91749','TIENDA ELIZABETH','8 AVENIDA 5-30 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','49286001','LIDIA CHAVEZ','1','15.477979544771461','-90.30935385884241','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91750','DEPOSITO EL DIVINO MAESTRO','8AV. 3-09 ZONA 1 CARCHA','30047060','DEPOSITO EL DIVINO MAESTRO','1','15.478976712828015','-90.3097126088348','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91751','DISTRUIDORA KUA JUANES SOCIEDAD ANONIMA','5 CALLE 11-33 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','79515493','KUA JUANES SOCIEDAD ANONIMA','1','15.477117523335824','-90.30763693389203','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91756','DEPOSITO EMMANUEL','CALLE PRINCIPAL DE FRAY','0','DEPOSITO EMMANUEL','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91757','SUPER SURTIDORA LUISA','CALLE PRINCIPAL DE FRAY','79520286','SUPER SURTIDORA LUISA','1','15.80878045481284','-89.87379590559294','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91758','TIENDA SHALOM','ESQUINA BANCO INDUSTRIAL FRAY','49111903','TIENDA SHALOM','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91759','TIENDA SANTA CRUZ','TERMINAL DE BUSES FRAY','0','TIENDA SANTA CRUZ','1','15.802127872106526','-89.8671034041105','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91760','TIENDA LA ECONOMICA','TERMINAL DE BUSES FRAY','0','TIENDA LA ECONOMICA','1','15.808723296107724','-89.87396127006417','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91761','TIENDA LA PROVIDENCIA','TERMINAL DE BUSES FRAY','48505124','TIENDA LA PROVIDENCIA','1','15.802172037158032','-89.86688078157418','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91762','ABARROTERIA ELIZABETH','ENTRADA PRINCIPAL  FRAY','46473526','ABARROTERIA ELIZABETH','1','15.802417505473963','-89.86554199542628','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91763','TIENDA ELENITA','CALLE PRINCIPAL DE FRAY','0','TIENDA ELENITA','1','15.802241145810608','-89.86696663557758','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91764','CENTRO COMERCIAL LUISITO','BARRIO EL CENTRO SAN FERNANDO CHAHAL','40714871','CENTRO COMERCIAL LUISITO','1','15.786551573662912','-89.60213857242526','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91765','TIENDA EL CHINO','MERCADO CENTRAL DE SAN FERNANDO CHAHAL','45655799','TIENDA EL CHINO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91766','TIENDA MARY','MERCADO SAN AGUSTIN CHAHAL','51691003','TIENDA MARY','1','15.786331194086651','-89.60025149230165','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91767','TIENDA LA OCCIDENTAL','CALLE HACIA EL HOSPITAL DE FRAY','0','TIENDA LA OCCIDENTAL','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91768','TIENDA LA MENORCITA','INTERIOR MERCADO FRAY','0','TIENDA LA MENORCITA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91769','TIENDA LA BUENA FE','SALIDA A SAN LUIS PETEN BOLONCO','45807072','TIENDA LA BUENA FE','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91770','TIENDA LA FORTALEZA','INTERIOR MERCADO FRAY','31694931','TIENDA LA FORTALEZA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91771','ABARROTERIA LOBOS','FRENTE  AGENCIAS PEPSI FRAY','40232222','ABARROTERIA LOBOS','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91772','TIENDA LUPITA','INTERIOR MERCADO FRAY','57735837','TIENDA LUPITA','1','15.802236638275886','-89.86716308242559','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91773','SUPER ABARROTES DON BARATON','2DA. CALLE  1 AV.  ZONA 1 IXCAN QUICHE','79500713','SUPER ABARROTES DON BARATON','1','15.9884201076517','-90.78265487917065','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91774','TIENDA Y POLLERIA LESLY','ZONA 1 IXCAN  EL QUICHE','49386086','TIENDA Y POLLERIA LESLY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91775','TIENDA Y POLLERIA BRENDA','CALLE HACIA LA PARROQUIA PLAYA GRANDE','0','TIENDA Y POLLERIA BRENDA','1','15.988977182838598','-90.78144194706395','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91776','TIENDA LA LOMITA','TERMINAL DE BUSES PLAYA GRANDE','49318032','TIENDA LA LOMITA','1','15.991134209352127','-90.78128802857802','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91777','TIENDA AMARILIS','INTERIOR MERCADO LA PAZ','40297492','TIENDA AMARILIS','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91778','TIENDA MAYA','TERMINAL DE BUSES PLAYA GRANDE','45443877','TIENDA MAYA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91779','TIENDA MARY','TERMINAL DE BUSES PLAYA GRANDE','40780518','TIENDA MARY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91780','TIENDA EL PRINCIPE 2','TERMINAL DE BUSES PLAYA GRANDE','0','TIENDA EL PRINCIPE 2','1','15.9904458555402','-90.7812415731819','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91781','TIENDA LA PAZ','ZONA 1 IXCAN FRENTE A GRAN FOTO','51702240','TIENDA LA PAZ','1','15.988977182838598','-90.78144194706395','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91782','TIENDA LA BUENA ESPERANZA','INTERIOR MERCADO LA PAZ','45093772','TIENDA LA BUENA ESPERANZA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91783','TIENDA SAN ANTONIO','ZONA 1 IXCAN CALLE HACIA LA PARROQUIA','0','TIENDA SAN ANTONIO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91784','TIENDA ELIAS','A UN COSTADO DE MUNI PLAYA GRANDE','53569930','TIENDA ELIAS','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91785','ABARROTERIA EL COLOCHO','INTERIOR MERCADO LA ECONOMICA','53340297','ABARROTERIA EL COLOCHO','1','15.988398056599335','-90.7813342210267','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91786','TIENDA KARINA','A UN COSTADO DE BANRURAL PLAYA GRANDE','49471174','TIENDA KARINA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91787','ABARROTERIA MORALES','INTERIOR MERCADO LA ECONOMICA','0','ABARROTERIA MORALES','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91788','ABARROTERIA LUCI','INTERIOR MERCADO LA ECONOMICA','53831884','ABARROTERIA LUCI','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91789','TIENDA YESICA','ZONA 4 IXCAN PLAYA GRANDE','53570743','TIENDA YESICA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91790','TIENDA LA FUENTE','TERMINAL DE BUSES PLAYA GRANDE','53230640','TIENDA LA FUENTE','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91791','TIENDA EL PRINCIPE 1','TERMINAL DE BUSES PLAYA GRANDE','40963539','TIENDA EL PRINCIPE 1','1','15.990918833075316','-90.78128204124042','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91792','TIENDA LA FUENTE 2','INTERIOR MERCADO LA PAZ','0','TIENDA LA FUENTE 2','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91793','COMERCIAL GUTIERRES','CALLE PRINCIPAL RAXRUHA A.V','53433889','COMERCIAL GUTIERRES','1','15.865776625916284','-90.0410531573071','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91794','TDA FLORIDALMA','MERCADO CENTRAL RAXRUHA A.V','46269637','TDA FLORIDALMA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91795','TDA SANTA CRUZ','MERCADO CENTRAL RAXRUHA A.V','46703085','TDA SANTA CRUZ','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91796','TDA LA SURTIDORA','SALIDA A LA ISLA RAXRUHA A.V','30258353','TDA LA SURTIDORA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91797','TIENDA LA BENDICION','SALIDA A LA ISLA RAXRUHA A.V','46768170','TIENDA LA BENDICION','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'91798','TIENDA BETHEL','BARRIO EL CENTRO TUCURU A.V','30243700','TIENDA BETHEL','1','15.293493333333334','-90.11935333333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91799','TIENDA FLOR','BARRIO EL CENTRO SALIDA A LA TINTA TUCURU ALTA VERAPAZ','46822644','FLORESMILDA DE JESUS MOLINA ESQUIVEL','1','15.293923333333332','-90.11877333333332','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91801','TIENDA JUANA','BARRIO EL CENTRO ZONA 1 LA TINTA, FRENTE HOTEL LOS PANCHOS','46465717','TIENDA JUANA','1','15.313716666666668','-89.88303666666667','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91803','DISTRIBUIDORA ROBERT','BARRIO EL CENTRO ZONA 1 LA TINTA ALTA VERAPAZ','30424166','PAULINA COC CUZ','1','15.31173','-89.88521833333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91805','ABARROTERIA SAN FELIPE','CALLE IGLESIA NAZARENO LA TINTA A.V','30860522','ABARROTERIA SAN FELIPE','1','15.310976666666667','-89.88481333333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91807','ABARROTERIA AMANECER','A UN COSTADO DEL BANCO AGROMERCANTIL LA TINTA ALTA VERAPAZ','53491763','GRACIELA CAAL SAC SACBA','1','15.310655','-89.88431999999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91808','TIENDA DEL PUEBLO','A UN COSTADO DE AGROFERETERIA AMANECER BARRIO EL CENTRO LA TINTA ALTA VERAPAZ','50003476','PEDRO CHOC XOL','1','15.311973333333333','-89.88533333333335','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91811','REIINA DEL POLOCHIC','BARRIO EL CENTRO LA TINTA AV ','46044539','REIINA DEL POLOCHIC','1','15.311771666666667','-89.88359833333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91812','SURTIDORA SURTICENTRO','BARRIO EL CENTRO ZONA 1 LA TINTA ALTA VERAPAZ','40454647','ALFREDO COC CUZ','1','15.311801666666668','-89.88356999999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91813','ABARROTERIA VICTORIA','BARRIO EL CENTRO ZONA 1, LA TINTA A.V','40363883','ABARROTERIA VICTORIA','1','15.31081','-89.88403500000001','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91819','TIENDA LA CONFIANZA','BARRIO EL CENTRO ALDEA TELEMAN A UN COSTADO DE HOTEL POSADA DON RALDA PANZOS ALTA VERAPAZ','50637024','LORENZO CHOC SAM','1','15.339628333333334','-89.74069166666668','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91820','TIENDA JUANITO','DENTRO DEL MERCADO TELEMAN AV','48723115','TIENDA JUANITO','1','15.33827','-89.74187333333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91823','TIENDA ELVIRITA','BARRIO EL CENTRO TELEMAN A.V','58910441','TIENDA ELVIRITA','1','15.338313333333334','-89.74148666666666','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91824','TIENDA ABIGAIL','BARRIO EL CENTRO TELEMAN AV','30159398','TIENDA ABIGAIL','1','15.338956666666665','-89.73979333333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91827','DISTRIBUIDORA EL CAMPESINO','BARRIO EL CENTRO ALDEA TELEMAN A UN FRENTE TIENDA LA CONFIANZA PANZOS ALTA VERAPAZ','50637024','MARTIN CHOC SAM','1','15.338875','-89.74040500000001','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91830','TIENDA ANGEL','BARRIO EL CENTRO TELEMAN','50623496','TIENDA ANGEL','1','15.338834999999998','-89.74072166666669','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91836','TIENDA MARLEN','BARRIO EL CENTRO PANZOS A.V','54508308','TIENDA MARLEN','1','15.398548333333334','-89.64043833333332','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91838','TIENDA ALBERT','BARRIO EL CENTRO PANZOS A.V','0','TIENDA ALBERT','1','15.398496666666665','-89.64034166666667','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91839','ALMACEN LA FORTALEZA','BARRIO EL CENTRO PANZOS A.V','53061444','ALMACEN LA FORTALEZA','1','15.399136666666667','-89.64115333333332','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91841','TIENDA LA DIVINA PROVIDENCIA','BARRIO EL CENTRO SENAHU A.V','50655844','TIENDA LA DIVINA PROVIDENCIA','1','15.311813333333335','-89.88358666666666','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91844','TIENDA ERVIN','BARRIO EL CENTRO SENAHU ALTA VERAPAZ','30506716','SAMUEL CUCUL','1','15.314738333333333','-89.89020333333335','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91845','COMERCIAL SANTIAGUITO','BARRIO SANTIGUILA SENAHU A.V','46137450','COMERCIAL SANTIAGUITO','1','15.311823333333333','-89.883595','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'91866','TIENDA KEVIN','BARRIO EL CENTRO CALLE PRINCIPAL MELCHOR DE MENCOS PETEN','49161829','SEBASTIAN CHITIC','1','17.061965','-89.15486000000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91867','DISTRIBUIDOR WILLIAN CUYUCH','FRENTE AL BANCO AGROMERCANTIL MELCHOR DE MENCOS PETEN','44790705','WILLIAN CUYUCH','1','17.063148333333334','-89.15442833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91873','COMERCIAL GEMINIS','EXTERIOR DEL MERCADO MELCHOR DE MENCOS PETEN','57554017','GEISON ANTONIO CHAMALE','1','17.063118333333332','-89.15449833333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91876','TIENDA LA BENDICION','BARRIO EL CENTRO MELCHOR DE MENCOS','0','TIENDA LA BENDICION','1','17.063098333333336','-89.15445166666665','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91877','TIENDA FLOR DE ORIENTE','INTERIOR MERCADO NUEVO MELCHOR DE MENCOS PETEN','57833310','FREDY CARDONA','1','17.063153333333332','-89.15453000000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91878','PINATAS BAMBY','BARRIO EL CENTRO CALLE DEL COMERCIO MELCHOR DE MENCOS PETEN','79265768','RONAL RAFAEL GUERRA','1','17.066065','-89.15381333333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91879','TIENDA ALONDRA','BARRIO SUCHITAN MELCHOR DE MENCOS PETEN','53259974','ANA AREVALO','1','17.06895666666667','-89.15140000000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91882','ABARROTERIA LINAREZ','BARRIO EL CENTRO INTERIOR DEL MERCADO MELCHOR DE MENCOS PETEN','58002830','ADELA LINAREZ','1','17.063513333333333','-89.15456','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91885','TIENDA LA MARAVILLA','BARRIO EL CENTRO DE DOLORES PETEN','51720078','MARIANO HERNANDEZ','1','16.515295','-89.41428333333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91886','TIENDA SANTA CRUZ','CALLE PRINCIPAL EN FRENTE DEL PARQUE DOLORES PETEN','45305617','TOMASA CUIN','1','16.513840000000002','-89.41810166666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91887','TIENDA SUPER PRECIO','BARRIO EL CENTRO DOLORES','0','TIENDA SUPER PRECIO','1','16.513935','-89.41750833333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91889','TIENDA YAMILETH','CALLE PRINCIPAL DOLORES PETEN','49573412','ORANGEL MEJIA','1','16.513991666666666','-89.41742500000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91890','TIENDA ESQUIPULAS','BARRIO EL CENTRO DOLORES','57459143','TIENDA ESQUIPULAS','1','16.514608333333335','-89.41685166666666','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91891','TIENDA EL MILAGRO','BARRIO EL CENTRO CALLE PRINCIPAL DOLORES PETEN','48916442','MANUEL TZOC MEJIA','1','16.51391166666667','-89.41822166666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91894','TIENDA LA FAVORITA','6 AVENIDA EXTERIOR DEL MERCADO CENTRAL DE POPTUN PETEN','30822674','MANUELA XIQUIN ZACARIAS','1','16.331821666666666','-89.42150333333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91896','TIEND LA ECONOMICA','POPTUN','0','TIEND LA ECONOMICA','1','16.332473333333333','-89.42142333333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91898','TIENDA LA PRIMAVERA','6 AVENIDA 80-11 ZONA 1 BARRIO EL CENTRO POPTUN PETEN','30046324','JUANA CASTRO ZAPETA','1','16.3324','-89.42148','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91899','TIENDA IRACEMA','BARRIO EL CENTRO FRENTE AL MERCADO MUNICIPAL POPTUN PETEN','79277273','CLEMENCIA CASTELLANOS','1','16.331571666666665','-89.42136','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91902','TIENDA EL BUEN PRECIO','BARRIO EL CANTRO CALLE PRINCIPAL POPTUN PETEN','30115646','PEDRO TIU COS','1','16.332148333333336','-89.42097333333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91904','TIENDA EL REGALITO','MERCADO DE POPTUN ','0','TIENDA EL REGALITO','1','16.332755000000002','-89.42141666666666','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91907','ABARROTERIA LA SEVILLANA','EXTERIOR DEL MERCADO MUNICIPAL POPTUN PETEN','45096728','ALBA JUDITH LEMUS','1','16.332158333333332','-89.42150333333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91908','TIENDA SANTA CRUZ','A UN COSTADO DEL BANCO BAM SAN LUIS PETEN','30217565','ALEJANDRO VICENTE LOPEZ','1','16.199098333333332','-89.44134833333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91909','TIENDA ANAYTE','INTERIOR DEL MERCADO SAN LUIS PETEN','45957144','RICARDO PEREZ','1','16.199650000000002','-89.441725','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91911','TIENDA NINETH','CALLE PRINCIPAL FRENTE A LABORATORIO DENTAL SUPER DENT SAN LUIS PETEN','49412798','SANTIAGO SICA ITZEP','1','16.199659999999998','-89.44124333333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91912','TIENDA LA BENDICION','SAN LUIS ','0','TIENDA LA BENDICION','1','16.199651666666668','-89.442405','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91915','TIENDA RIOS DE AGUA VIVA','CALLE PRINCIPAL CHACTE PETEN','30638975','ELIDA ARDON','1','16.104585','-89.36036','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91916','COMERCIAL EL REGALITO','CHACTE','0','COMERCIAL EL REGALITO','1','16.104978333333335','-89.36125333333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91919','TIENDA LA ECONOMICA','CALLE PRINCIPAL FRENTE A BARBERIA EL EXITO CHACTE PETEN','57598012','MAURICIO CUIN','1','16.105281666666666','-89.36106833333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91920','ABARROTERIA LISETH','CALLE PRINCIPAL CHACTE PETEN','30611217','ABARROTERIA LISETH','1','16.105116666666667','-89.36138666666666','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91924','TIENDA LA ECONOMICA','MERCADO DE SANTA ELENA  CALLE ALA TERMINAL','49532851','TIENDA LA ECONOMICA','1','16.919902604185747','-89.89435310940662','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91925','TIENDA LA UNION.1','MERCADO DE SANTA ELENA  CALLE ALA TERMINAL','0','TIENDA LA UNION.1','1','16.919864365073582','-89.89437008836865','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91929','TIENDA EL BUEN PRECIO NO.2','MERCADO FRENTE A TERMINAL DE BUSES SANTA ELENA PETEN','79262888','TIENDA EL BUEN PRECIO NO.2','1','16.786924388174395','-90.11544701585804','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91930','TIENDA LA PREFERIDA','MERCADO PARQUEO DE BUSES DE SANTA ELENA PETEN','79248867','TIENDA LA PREFERIDA','1','16.920147982112372','-89.8939654863942','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91932','TIENDA NUEVO AMANECER','MERCADO DE SANTA ELENA PARQUEO DE BUSES','31538687','TIENDA NUEVO AMANECER','1','16.759944402320475','-90.13142159822789','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91937','TIENDA LA FE','INTERIOR DEL MERCADO DE SANTA ELENA ','0','TIENDA LA FE','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91939','TIENDA LA FAVORITA','MERCADO DE SANTA ELENA CALLE DE TELGUA','0','TIENDA LA FAVORITA','1','16.91962467790725','-89.89330947902597','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91940','COMERCIAL QUICHE','MERCADO DE SANTA ELENA ESQUINA CALLE DE TELGUA','0','COMERCIAL QUICHE','1','16.91765821628529','-89.89577632081482','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91941','TIENDA LA BENDICION','MERCADO DE SANTA ELENA ESQUINA CALLE DE TELGUA','0','TIENDA LA BENDICION','1','16.761732416736336','-90.13036174198521','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91944','TIENDA LA ESTRLLITA','MERCADO DE SANTA ELENA ALAPAR DEL HOTEL CORAL PECK','0','TIENDA LA ESTRLLITA','1','16.519973987751342','-90.17630137269857','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91948','TIENDA NORTEÑITA M.1','MERCADO DE SANTA ELENA CALLE DEL HOTEL ALONZO','0','TIENDA NORTEÑITA M.1','1','16.519970799345025','-90.17630556787317','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91952','TIENDA LA ECONOMICA','MERCADO NUEVO MUNICIPAL DE SANTA ELENA PETEN','51538435','VICTOR BATEN','1','16.91321','-89.89262666666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91953','TIENDA LA BENDICION','EXTERIOR DEL MERCADO NUEVO MUNICIPAL DE SANTA ELENA PETEN','79248097','ANGELICA HERNANDEZ','1','16.912908333333334','-89.89265500000002','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91955','TIENDA LA UNION','INTERIOR DEL MERCADO NUEVO SANTA ELENA PETEN','41218011','MARTIN HERNANDEZ','1','16.912813333333336','-89.89264666666668','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91957','TIENDA FLOR DE ORIENTE','CALLE PRINCIPAL DEL MERCADO MUNICIPAL A LA PAR DE LIBRERIA CULTURA SAN BENITO PETEN','30038147','BAUDILIO CANAN','1','16.92064','-89.90791833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91958','TIENDA GABY','INTERIOR DEL MERCADO DE BENITO','0','TIENDA GABY','1','16.920661666666668','-89.90794333333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91960','TIENDA GENESIS','INTERIOR DEL MERCADO MUNICIPAL DE SAN BENITO PETEN','40855233','PEDRO LUIS ITZEP LOPEZ','1','16.920655','-89.90813833333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91964','TIENDA EL PARAISO','CALLE PRINCIPAL DEL MERCADO MUNICIPAL FRENTE A EMPENO FACIL SAN BENITO PETEN','50629370','JOSE PONCIO GARCIA','1','16.920786666666668','-89.90851833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91965','TIENDA LUISITO','CALLE PRINCIPAL FRENTE A GASOLINERA PUMA EL CHAL PETEN','31346331','CANDELARIO ZAPETA','1','16.64241333333333','-89.65150333333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91966','ABARROTERIA LA PETENERA','EL CHAL CALLE PRINCIPAL X LA ESCUELA','0','ABARROTERIA LA PETENERA','1','16.642068333333334','-89.65051666666668','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'91969','TIENDA SAN ANDRES','ENTRADA A SAN ANDRES','46928319','TIENDA SAN ANDRES','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91970','TIENDA EL BUEN PRECIO','SAN ANDRES LOCALES DE LA MINICIPALIDAD','0','TIENDA EL BUEN PRECIO','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91971','BODEGUI8TA DE GITON','SAN ANDRES FRENTE ALA MUNICIPALIDAD','0','BODEGUI8TA DE GITON','1','16.915425224535202','-89.90946559544183','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91974','TIENDA JOSUE','SAN ANDRES, PETEN','59638540','TIENDA JOSUE','1','16.919156694066867','-89.89443555149967','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91976','TIENDA LETY','LA BARRIO EL CENTRO LA LIBERTAD PETEN','48488665','TIENDA LETY','1','16.786927499459257','-90.11504525484325','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91978','ABARROTERIA ROSARIO.','BARRIO EL CENTRO   LA LIBERTAD  PETÉN.','0','ABARROTERIA ROSARIO.','1','16.788475233847443','-90.11540521137358','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91982','TIENDA EL AHORRO FAMILIAR.','BARRIO EL CENTRO  LA LIBERTAD  PETÉN.','0','TIENDA EL AHORRO FAMILIAR.','1','16.78694594489582','-90.11553033192502','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91985','TIENDA FLOR DEL COMERCIO.','BARRIO EL CENTRO  LAS CRUCES  PETÉN.','0','TIENDA FLOR DEL COMERCIO.','1','16.659829110389587','-90.29389884039385','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91986','UNICOMER GONZALEZ.','BARRIO EL CENTRO  LAS CRUCES  PETÉN.','0','UNICOMER GONZALEZ.','1','16.65919461290806','-90.29150497396408','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91987','TIENDA LA PROVIDENCIA.','BARRIO EL CENTRO  LAS CRUCES  PETÉN.','0','TIENDA LA PROVIDENCIA.','1','16.659384480774875','-90.29376240272117','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91988','SUPER TIENDA LA BENDICION','BARRIO EL CENTRO SAYAXCJE PETEN','46562165','SUPERTIENDA LA BENDICION','1','16.97085677692614','-89.91151380142988','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91989','SUPER FAMILIAR','BARRIO EL CENTRO SAYAXCHE PETEN','41086191','SUPER FAMILIAR','1','16.51998800625114','-90.17630216630256','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91990','MULTIPROMEGA MAZARIEGOS.','BARRIO EL CENTRO  SAYAXCHE  PETÉN.','0','MULTIPROMEGA MAZARIEGOS.','1','16.97085677692614','-89.91151380142988','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91991','TIENDA OTY','CALLE PRINCIPAL SAYAXCHE PETEN','57413025','TIENDA OTY','1','16.52883576113302','-90.19155334558481','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91992','MAYOREO SAN FRANCISCO.','BARRIO EL CENTRO  SAYAXCHE  PETÉN.','79263230','MAYOREO SAN FRANCISCO.','1','16.529182744409837','-90.18954654308507','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91993','TIENDA LA MONTAÑA.','BARRIO EL CENTRO  SAYAXCHE  PETÉN.','0','TIENDA LA MONTAÑA.','1','17.230240220002592','-90.80618083296937','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91994','TIENDA MARIELOS','BARRIO EL CENTRO SAYAXCHE PETEN','79286215','TIENDA MARIELOS','1','16.529310873751108','-90.18968675596285','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91995','COMERCIALIZADORA FLOR DEL NORTE','CALLE PRINCIPAL SAYAXCHE PETEN','79286177','EVADINA GERRA ESPINA','1','16.52977534124315','-90.18912852975319','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91996','TIENDA EL BUEN PRECIO.','BARRIO EL CENTRO  SAYAXCHE  PETÉN.','0','TIENDA EL BUEN PRECIO.','1','16.97085677692614','-89.91151380142988','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'91998','TIENDA ESMERALDA','ALDEA EL PARAISO LA LIBERTAD PETEN','31607651','TIENDA ESMERALDA','1','16.91765821628529','-89.89577632081482','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92000','TIENDA LA PREFERIDA.','EL NARANJO FRONTERA  LA LIBERTAD  PETÉN.','0','TIENDA LA PREFERIDA.','1','17.23473839876882','-90.80143197175092','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92003','TIENDA JVJ.','EL NARANJO FRONTERA  LA LIBERTAD  PETÉN.','0','TIENDA JVJ.','1','17.23104306602037','-90.80584863728704','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92004','TIENDA LA ESQUINITA.','EL NARANJO FRONTERA  LA LIBERTAD  PETÉN.','0','TIENDA LA ESQUINITA.','1','17.235159099263427','-90.80103564135793','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92033','TIENDA GARCIA','CALLE PRINCIPAL FRENTE A POLICIA NACIONAL DE RAXRUHA','0','TIENDA GARCIA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92034','ABARROTES LA MODERNA','TERMINAL DE BUSES PLAYA GRANDE','0','ABARROTES LA MODERNA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92039','NICOLAS LARIOS','CANTON SANDOVAL SAN MIGUEL CHICAJ','0','NICOLAS LARIOS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92040','DISTRIBUIDORA CHICHOC','CALLE AL CALVARIO ZONA 3 SAN CRISTOBAL A.V','57771289','DISTRIBUIDORA CHICHOC','1','15.365748185440532','-90.48017477786712','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92041','COMERCIAL MONTUFAR','AVENIDA CAJCOJ SAN CRISTOBAL VERAPAZ','0','COMERCIAL MONTUFAR','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92043','LOS PRIMOS','FRENTE A POLLOLANDIA BARRIO CENTRO LA TINTA','0','LOS PRIMOS','1','15.31265','-89.88325333333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92045','TIENDA LA ESQUIPULITAS','BARRIO SAN BENITO ZONA 4 A 2 CUADRAS ATRAS DE LA DESPENSA FAMILIAR LA TINTA ALTA VERAPAZ','45410223','ZOILA ESPERANZA CHOC XOL','1','15.310848333333334','-89.88494999999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92046','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','10 AV. 3-21 ZONA 1 CHIQUIMULA','40414395','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','1','14.800495899392859','-89.54326111742562','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92048','TIENDA LA ECONOMICA','LOCAL 24 INTERIOR MERCADO TERMINAL CHIQUIMULA CHIQUIMULA','30022514','MARINA MARTINEZ','1','14.802747187589743','-89.54056936690432','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92050','JUAN GONZALES','CALLE PRINCIPAL  RAXHUHA','0','JUAN GONZALES','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92051','JOSE MIGUEL MORALES','INTERIOR MERCADO  LA ECONOMICA','0','JOSE MIGUEL MORALES','1','16.013331200670553','-90.45071761810799','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92052','DIEGO US','ATRAS DE LA MUNICIPALIDAD  PLAYA GRANDE','0','DIEGO US','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92053','ASOTECNI','RUTA A PLAYA GRANDE','0','ASOTECNI','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92054','JAIME CHEN','TERMINAL DE BUSES  PLAYA GRANDE','0','JAIME CHEN','1','15.988687690011202','-90.78176169495457','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92057','TIENDA LA NUEVA SURTIDORA','MERCADO CENTRAL PLAYITAS','0','TIENDA LA NUEVA SURTIDORA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92058','TIENDA LA MODERNA','PLAYA GRANDE','0','TIENDA LA MODERNA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92064','ABARROTERIA ELENA','FRENTE AL MERCADO SAN FERNANDO CHAHAL','51507052','ABARROTERIA ELENA','1','15.788731989702313','-89.6021582965398','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92065','TIENDA SAN BARTOLOME','ENTRADA A FRAY BARTOLOME DE LAS CASAS  A.V.','0','TIENDA SAN BARTOLOME','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92066','TIENDA LA FORTUNA','CALLE HACIA EL HOSPITAL FRAY BARTOLOME DE LAS CASAS  A.V.','0','TIENDA LA FORTUNA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92069','DISTRIBUIDOR MAICOL RONAL CUYUCH','BARRIO EL CENTRO MELCHOR DE MENCOS PETEN','5016372896','MAICOL RONAL CUYUCH','1','17.069078333333334','-89.151215','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92071','TIENDA  PRINCIPAL','MERCADO DE SANTA ELENA CALLE DE TELGUA','0','TIENDA  PRINCIPAL','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92072','TIENDA  FLOR  DE  MAYO','MERCADO DE SANTA ELENA ANTES DE LA TRANCA','0','TIENDA  FLOR  DE  MAYO','1','16.919977504502985','-89.89536170289948','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92074','COMERCIALIZADORA YONI','ALDEA LAS POZAS SAYAXCHE PETEN','53055220','COMERICIALIZADORA YONI','1','16.33144293063698','-90.16845673097238','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92076','TIENDA  LA  ECOCOMICA','BARRIO EL CENTRO   LA LIBERTAD  PETEN.','0','TIENDA  LA  ECOCOMICA','1','16.78659014101743','-90.1174232239164','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92089','ADELA RAX','INTERIOR MERCADO TACTIC A.V.','0','ADELA RAX','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92090','EDWIN VEGA','ALDEA CHILASCO  SALAMA  BAJA VERAPAZ','32212484','EDWIN VEGA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92091','SUPER FARMACIA AMERICA','CIUDAD','0','SUPER FARMACIA AMERICA','1','15.474229439264917','-88.83764809647873','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92092','TIENDA EL ENCANTO','BARRIO LA ESTACION  LOS AMATES','79473442','TIENDA EL ENCANTO','1','15.252669405717457','-89.09502156497162','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92103','VARIEDADES MUNDO DE LOS DE A 3','CALLEJON DEL COMERCIO ZACAPA ZACAPA','58847758','CARLOS TUIZ CUXULIC','1','14.972650568101203','-89.53110368893049','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92443','VARIEDADES LA SUPERIOR','FRENTE AL PARQUE DE MORAZAN','0','VARIEDADES LA SUPERIOR','1','14.932884806501415','-90.14348318140196','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92450','TIENDA LA ECONOMICA','5 AV B 4-30 ZONA 1 SALAMÀ B.V','0','TIENDA LA ECONOMICA','1','15.102646096115471','-90.32063590753215','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92490','COMERCIAL LA BENDICION','EXTERIOR DEL MERCADO DE LA REVOLUCIÓN PUERTO BARRIOS','31901271','COMERCIAL LA BENDICION','1','15.733460497084316','-88.5993349702379','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92493','ABARROTERIA LA ESTRELLA','BARRIO EL CENTRO POPTUN PETEN','30963011','SALVADOR VICENTE','1','16.199771666666667','-89.44213833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92495','MARIA GRACIELA','BARRIO SUCHITAN  MELCHOR DE MENCOS','0','MARIA GRACIELA','1','17.069078333333334','-89.15129','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92517','TIENDA MARY','DIAGONAL 1  1-25 ZONA 1 COBAN  A.V.','0','TIENDA MARY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92524','DEPOSITO DE HUEVOS Y JUEGOS PIROTECNICOS ARCHI','BARRIO EL CENTRO SALAMA  ARRIBA TIENDA JANDY','0','DEPOSITO DE HUEVOS Y JUEGOS PIROTECNICOS ARCHI','1','15.100541401325785','-90.32080594090338','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92525','TIENDA ELENITA','BARRIO EL CENTRO FRENTE AL PARQUE CENTRAL SENAHU ALTA VERAPAZ','56123497','MAGDALENA CHUB','1','15.311818333333333','-89.88359','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92530','TIENDA ESMERALDA','EL NARANJO FRONTERA','0','TIENDA ESMERALDA','1','17.230240220002592','-90.80618083296937','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92533','TIENDA LESLY','CALLE HACIA LA PARROQUIA PLAYA GRANDE IXCAN','0','TIENDA LESLY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92534','TIENDA FRANCIS','ZONA 4 PLAYA GRANDE IXCAN','0','TIENDA FRANCIS','1','15.989987120691604','-90.78109451175153','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92535','DISTRIBUIDORA LA NEGRITA','SAN AGUSTIN CHAHAL  A.V.','0','DISTRIBUIDORA LA NEGRITA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92536','TIENDA MAGALI','SAN FERNANDO CHAHAL  A.V.','48165031','TIENDA MAGALI','1','15.78581431932252','-89.60585714445473','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92537','TIENDA ARCA DE NOE','BARRIO EL CENTRO LA TINTA ALTA VERAPAZ','45829046','ROBERTO UZ','1','15.312135000000001','-89.88563500000001','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92541','TIENDA CRISTY','CALLE PRINCIPAL CONCEPCION LAS MINAS CHIQUIMULA','45575715','JAIME SOTO DUARTE','1','14.523233418286594','-89.45788493157532','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92547','DAVID EDUARDO TUL CAAL','CALLE 3 DE MAYO  SANTA CRUZ  VERAPAZ','0','DAVID EDUARDO TUL CAAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92548','DEPOSITO LA PERLA','1 CALLE 8-30 ZONA 1 CHIQUIMULA CHIQUIMULA','42927585','LUIS ROBERTO LOPEZ PINTO','1','14.803062275325','-89.54375835557397','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92550','DEANA ISABEL CORONADO CAAL','COBAN  ALTA VERAPAZ','0','DEANA ISABEL CORONADO CAAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92552','MILKA NINETH DE LEON','FRAY BARTOLOME DE LAS CASAS','0','MILKA NINETH DE LEON','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92560','TIENDA DE TROPA DEL CREOMPAZ','FINCA CHICOYOGÜITO  COBAN  A.V.','30798792','TIENDA DE TROPA DEL CREOMPAZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92564','TIENDA EL AMANECER','BARRIO SAN LORENZO  JOCOTAN CHIQUIMULA','31243742','TIENDA EL AMANECER','1','14.820020889782825','-89.39119963228596','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92587','TIENDA CENTRAL','ALDEA CHILASCO  SALAMA  BAJA VERAPAZ','53571652','TIENDA CENTRAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92588','TIENDA CLAUDIA','INTERIOR MERCADO TACTIC A.V','0','TIENDA CLAUDIA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92589','TIENDA ANDERSON','INTERIOR MERCADO TACTIC A.V','0','TIENDA ANDERSON','1','15.319580763229673','-90.35287837157867','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92599','MULTISERVICIOS ARCA DE NOE','ALDEA CAHABONCITO  PANZOS  A.V.','53402109','MULTISERVICIOS ARCA DE NOE','1','15.453824999999998','-89.55879833333331','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92603','TIENDA EL EXITO','BARRIO EL CENTRO DE LA TINTA FRENTE AL PARQUE','40447938','TIENDA EL EXITO','1','15.311935000000002','-89.8851','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92619','MINI TIENDA LA BENDICION','11 AVENIDA 1 CALLE ESQUINA ZONA 2 TERMINAL DE BUSES CHIQUIMULA CHIQUIMULA','51343141','MINI TIENDA LA BENDICION','1','14.8030169212606','-89.54039276749327','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92633','TIENDA ELIZABETH','TERMINAL MERCADO FRAY BARTOLOME DE LAS CASAS','0','TIENDA ELIZABETH','1','15.801700235361778','-89.86654492558299','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92635','TIENDA GARCIA','RAXRUHA  A.V.','0','TIENDA GARCIA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92638','MINI SURTIDORA HELEN','2DA. CALLE 2-25 ZONA 1 COBAN A.V','31553739','MINI SURTIDORA HELEN','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92639','TIENDA WENDY','BARRIO MORAZAN  PLAYA GRANDE IXCAN QUICHE','48386370','TIENDA WENDY','1','15.806645599732883','-89.8709084529345','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92640','TIENDA MILENY','2DA. CALLE 2-25 ZONA 1 COBAN A.V','0','TIENDA MILENY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92644','TIENDA OKAN ARIN','SAN AGUSTIN CHAHAL','57367622','TIENDA OKAN ARIN','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92651','DISTRIBUIDORA ESMERALDA','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','32382888','ARTURO BA COC','1','15.811900816259476','-90.2907894259171','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92653','SURTIDORA EL CENTRO','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','30106294','MARIA CUCUL POP','1','15.667511810123768','-90.42930599227346','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92654','SUPER MERCADO LA PLAZUELA','3A CALLE 6-25 ZONA 1 SALAMÀ B.V','40112423','SUPER MERCADO LA PLAZUELA','1','15.100571867885437','-90.32076123819687','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92656','ABARROTERIA LA DIVINA PROVIDENCIA','11AV. 6-65 ZONA 1 CARCHA','46601144','ABARROTERIA LA DIVINA PROVIDENCIA','1','15.47590789845581','-90.30807578181388','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92657','TIENDA AYELEN','4 CALLE ZONA 1 BARRIO SAN PEDRO SAN PEDRO CARCHA ALTA VERAPAZ','30627379','MIRIAM CUCUL','1','15.478118440143314','-90.30857188023437','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92660','MINISURTIDORA ALEXANDER','CASERIO NUEVO DAMASCO  RAXHUJA A.V','0','MINISURTIDORA ALEXANDER','1','15.786285494549968','-89.60031064607489','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92665','UNION COBANERA S.A','5TA CALLE 4-82 ZONA 1 SALAMA B. V','41656878Y45938572','UNION COBANERA S.A','1','15.103289509385696','-90.32097194912768','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92667','SUPERTIENDA VERAPAZ','ALDEA LAS POSAS','57717440','SUPERTIENDA VERAPAZ','1','16.908410799846855','-89.88749040232805','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92668','TIENDA SAMARITANA','MERCADO DE SANTA ELENA','55516418','TIENDA SAMARITANA','1','17.235480380387287','-90.80043494746675','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92676','TIENDA EL NIÑO','ENFRENTE DE LA COLONIA ITZA, SAN BENITO PETEN','58222952','TIENDA EL NIÑO','1','16.911712559101662','-89.88277784758219','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92680','ROSALINA PLEITEZ CARPIO','CENTRO DE MELCHOR DE MENCOS','0','ROSALINA PLEITEZ CARPIO','1','17.061890000000002','-89.154955','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92681','TIENDA SHENY ','INTERIOR MERCADO DE TACTIC','46904701','TIENDA SHENY','1','15.319589674378125','-90.35189787580575','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92682','TIENDA SERVANDITA','ATRAS DEL MERCADO TACTIC','44812404','TIENDA SERVANDITA','1','15.319682322473273','-90.35174362583967','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92683','TIENDA ROSY','INTERIOR MERCADO TACTIC A.V','49958696','TIENDA ROSY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92684','TIENDA JONATHAN','ATRAS DEL MERCADO TACTIC','30741097','TIENDA JONATHAN','1','15.319871588841709','-90.35209759432571','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92685','TIENDA ALEX','FRENTE AL COLEGIO BLAIS PASCAL  TACTIC A.V','38769891','TIENDA ALEX','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92689','OSCAR REGINALDO QUEJ ISEM','BARRIO EL CENTRO, PURULHA','57675084','OSCAR REGINALDO QUEJ ISEM','1','15.238012600887','-90.23564275918156','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92690','ALBA CLARIBEL MORENTE SUMPANGO','CANTON SANDOVAL SAN MIGUREL CHICAJ B.V.','44649053','ALBA CLARIBEL MORENTE SUMPANGO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92691','DESPENSA VICKY','SAN FERNANDO CHAHAL','30808510','DESPENSA VICKY','1','15.786271856519404','-89.60030137810024','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92693','TIENDA MARY','ANTIGUA TERMINAL DE BUSES  FRAY','59942535','TIENDA MARY','1','15.802139452094993','-89.86709348770208','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92694','ABARROTERIA MI PUEBLITO','FRAY BARTOLOME DE LAS CASAS','45246244','ABARROTERIA MI PUEBLITO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92695','SUPER WAS','0 AV 1-45 ZONA 2','42202296','SUPER WAS','1','15.42384034235257','-90.32953335430913','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92700','COMERCIAL CHUIMEKENA','2 CALLE ZONA 3 BARRIO SANTO DOMINGO SAN JUAN CHAMELCO ALTA VERAPAZ','49690259','COMERCIAL CHUIMEKENA','1','15.426169415767031','-90.32804418760838','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92701','ABARROTERIA DONA IZABEL','BARRIO EL CENTRO A UN COSTADA DEL MERCADO MUNICIPAL FRENTE AL AGROMERCANTIL LOCAL 21 A LA TINTA ALTA VERAPAZ','46372865','MIISES ICHICH TOT','1','15.31079','-89.88424666666667','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92703','ABARROTERIA LA MEDALLA MILAGROSA','2AV. 1-28 ZONA 3 COBAN A.V','31525480','ABARROTERIA LA MEDALLA MILAGROSA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92704','ABARROTERIA EMANUEL','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','45468085','DANIEL CAAL','1','15.811758861348777','-90.29083842451058','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92709','COMERCIAL LA CONFIANZA','BARRIO EL CENTRO SENAHU ALTA VERAPAZ','0','COMERCIAL LA CONFIANZA','1','15.311798333333336','-89.88358833333332','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92711','ABARROTERIA AZUCENA','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','40310898','ABARROTERIA AZUCENA','1','15.811630805895032','-90.29060824042283','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92712','RICARDO AJIASATAZ PEREZ','4 AV. FINAL ZONA 1 EL CHOL B.V.','49497630','RICARDO AJIASATAZ PEREZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92713','BRIAN AROLDO JUAREZ BETANCURTH','RUTA 3 1-86 ZONA 1 SALAMA B.V.','42589755','BRIAN AROLDO JUAREZ BETANCURTH','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92716','TIENDA ESTELITA','CENTRO DE MELCHOR DE MENCOS','0','TIENDA ESTELITA','1','17.062046666666667','-89.15466999999998','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92718','TIENDA DIVINO MAESTRO ','2 CALLE 3 AV. ZONA 3 RABINAL B.V.','79388293','TIENDA DIVINO MAESTRO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92719','TIENDA LA ESPERANZA ','2 CALLE 3 AV. ZONA 3 RABINAL B.V.','79388258','TIENDA LA ESPERANZA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92720','TIENDA GRISELDA','BARRIO EL CENTRO MELCHOR','0','TIENDA GRISELDA','1','17.063583333333334','-89.15446166666668','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92721','ROSA ALBA MARROQUIN OLIVARES DE LARA','BARRIO EL CENTRO SANTA ANA','0','ROSA ALBA MARROQUIN OLIVARES DE LARA','1','16.80740666666667','-89.824605','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92722','TIENDA TIKAL','BARRIO EL CENTRO CALLE PRINCIPAL MELCHOR DE MENCOS PETEN','58801290','MIGUEL ANGEL SONTAY ORDONIEZ','1','17.062291666666667','-89.15463166666665','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92723','TIENDA Y LACTEOS DONA NATY','ALDEA TAMPO TACTIC A.V.','30332722','TIENDA Y LACTEOS DONA NATY','1','15.318681224887976','-90.35331091021783','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92724','TIENDA MARTITA','BARRIO CHAMCHE TACTIC ALTA VERAPAZ','49189449','TIENDA MARTITA','1','15.31947804781235','-90.35226853616919','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92727','TIENDA JERUSALEN','BARRIO EL PESCADOR SAYAXCHE PETEN','53329835','TIENDA JERUSALEN','1','16.97085677692614','-89.91151380142988','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92728','TIENDA EL QUETZALITO','BARRIO EL CENTRO SAYAXCHE','0','TIENDA EL QUETZALITO','1','16.796355254114854','-90.10178101159292','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92729','TIENDA INGRID','INTERIOR MERCADO DE TACTIC','50681622','TIENDA INGRID','1','15.319548716854014','-90.35182315843859','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92730','TIENDA LA VILLA','BARRIO SAN JOSE JOAQUIN PALMA TAMAHU A.V','0','TIENDA LA VILLA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92731','TIENDA ALCHILAZO','2 AVENIDA 9-46 ZONA 8  CANTON LAS CASAS COBAN A.V','40267658','TIENDA ALCHILAZO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92733','TIENDA SAMARITANA','7A. AV. 15-23 ZONA 1, LOS ALMENDROS','46540755','TIENDA SAMARITANA','1','14.972423300644977','-89.52934639316118','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92734','TIENDA LUPITA','1 CALLE ZONA 1 TERMINAL DE BUSES LOCAL 40 CHIQUIMULA CHIQUIMULA','47960492','TIENDA LUPITA','1','14.802879825583885','-89.54068781314764','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92735','TIENDA LA BENDICION 2 ESTRELLAS','EL CHAL , DOLORES PETEN','0','TIENDA LA BENDICION 2 ESTRELLAS','1','16.642008333333333','-89.64777666666666','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92736','DEPOSITO ABARROTERIA MI MERCADITO','CALLE PRINCIPAL SAN BENITO PETEN','45610572','VICTOR DAMIAN MENDEZ ROSALES','1','16.92046333333333','-89.90932','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92737','TIENDA EL VIAJERO ','SAN AGUSTIN CHAAL','49494716','TIENDA EL VIAJERO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92738','TIENDA EL DIAMANTE','FRENTE AL PARQUE BARRIO EL CENTRO MELCHOR DE MENCOS PETEN','57735463','WALTER PEREZ','1','17.063295','-89.15359166666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92742','ABARROTERIA SARITA','CALLE PRINCIPAL EL CHAL PETEN','49326276','JAIRO CAMPOS','1','16.642258333333334','-89.65080666666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92744','TIENDA Y POLLERIA JACKELINE','BARRIO SANTO TOMAS ZONA 2 SANTA CRUZ A.V','0','TIENDA Y POLLERIA JACKELINE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92745','POLLERIA Y TIENDA IRIS','BARRIO  SANTA CECILIA SANTA CRUZ A.V','0','POLLERIA Y TIENDA IRIS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92749','TIENDA EL ESFUERZO','BARRIO EL CENTRO NARANJO FRONTERA','0','TIENDA EL ESFUERZO','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92750','MUNDO DE 3 CURIOSIDADES REFORMA','TERMINAL DE BUSES CHIQUIMULA','45606666','MUNDO DE 3 CURIOSIDADES REFORMA','1','14.803006610090153','-89.54105574360474','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92751','COMERCIAL ALEJANDRITA ','2 AV. 0-15 ZONA 4 COBAN A.V.','0','COMERCIAL ALEJANDRITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92752','COMERCIAL Y DISTRIBUIDORA MUNDO MAYA','CALLE PRINCIPAL EL CHAL PETEN','58313121','TOMAS LUCAS PANJOJ','1','16.644641666666665','-89.65519','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92757','COMERCIAL PUNTO DE 3','BARRIO EL CENTRO SAYAXCHE PETEN','30015245','COMERCIAL PUNTO DE 3','1','16.528758563077208','-90.18998068562374','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92759','MARIA OLIVIA CHOLOM','RAXHUJA ALTA VERAPAZ','58896993','MARIA OLIVIA CHOLOM','1','15.80431880889172','-89.86804169096773','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92760','COMERCIAL WULAJ WULAJ','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','53502116','ROLANDO TIUL','1','15.81235113191129','-90.29180999419698','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92761','ABARROTERIA TRES FRANCOS','5 CALLE 10-73 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','52021922','EDGAR FRANCISCO CASTRO REQUENA','1','15.477032767107021','-90.30799438660247','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92764','TIENDA INGRID','INTERIOR DE MERCADO DE TACTIC','0','TIENDA INGRID','1','15.319618043275584','-90.35180671751013','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92771','VARIEDADES Y ABARROTES NOEMY','3 CALLE 0-28 ZONA 2 BARRIO EL ARCO TACTIC A.V','41063135','VARIEDADES Y ABARROTES NOEMY','1','15.319272773982213','-90.35333762885756','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92772','CENTRAL CERVECERA','BARRIO EL CENTRO FRENTE DEL PARQUE INFANTIL SENAHU ALTA VERAPAZ','30215877','LUCY LORENA DEL VALLE XO','1','15.311816666666667','-89.88359166666666','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92773','TIENDA REGALITO','BARRIO LA VEGA SENAHU ALTA VERAPAZ','51945499','TIENDA REGALITO','1','15.311803333333334','-89.88359833333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92775','TIENDA EL ARMANDITO ','BO. ASUNCION TACTIC A.V.','0','TIENDA EL ARMANDITO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92778','TIENDA TERESITA','BO. EL CENTRO SAN FERNANDO CHAAL','31048706','TIENDA TERESITA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92779','DEPOSITO GEOVANITA','CALLE PRINCIPAL COL. EL ESFUERZO 1','53348070','DEPOSITO GEOVANITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92781','TIENDA MELISSA ','1 AV. 2 CALLE ZONA 2 RABINAL B.V.','45541961','TIENDA MELISSA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92782','TIENDA LINDA VISTA ','1 AV. 2-012 B ZONA 2 RABINAL B.V.','46202104','TIENDA LINDA VISTA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92784','TIENDA LA ECONOMICA','SAN ANDRES, PETEN','0','TIENDA LA ECONOMICA','1','16.9198423002025','-89.89510413343018','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92786','DISTRIBUIDORA ROSY','COBAN ALTA VERAPAZ ZONA 3','0','DISTRIBUIDORA ROSY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92788','PINATERIA ECOFIESTA','FRENTE A GASOLINERA TEXACO SANTA ELENA PETEN','79260369','ABNER PALMA','1','16.920968333333334','-89.88871333333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92789','MINI COMERCIAL LA CONFIANZA','INTERIOR DEL MERCADO NUEVO CERCA DE LA TERMINAL MELCHOR DE MENCOS PETEN','31594904','ADRIAN ESTEBAN TZUNUN TOLLOM','1','17.06895666666667','-89.15140000000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92790','ABARROTERIA LUPITA','INTERIOR MERCADO MUNICIPAL,ESQUIPULAS','42143517','ABARROTERIA LUPITA','1','14.565284296322687','-89.35188647665423','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92791','TIENDA MI PREFERIDA','3AV. 2 CALLE ZONA 2  RABINAL B.V','30119838','TIENDA MI PREFERIDA','1','15.084571678642032','-90.49344322228897','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92794','TIENDA CANAAN','EXTERIOR MERCADO DE PUERTO BARRIOS','0','TIENDA CANAAN','1','15.733550691982556','-88.59927981071246','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92795','TIENDA BUEN PRECIO','EXTERIOR MERCADO DE PUERTO BARRIOS','0','TIENDA BUEN PRECIO','1','15.733567088362847','-88.59910726013477','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92797','DEPOSITO EL AMANECER','4CALLE 3AV. ZONA 2 RABINAL B.V','45189024','DEPOSITO EL AMANECER','1','15.082384364282621','-90.49365381452058','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92804','DISTRIBUIDORA EL PACIFICO','7 AV. 6-55 ZONA 1 RABINAL','55604563','DISTRIBUIDORA EL PACIFICO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92805','TIENDA MARGA','CALLE CALVARIO PURULHA BAJA VERAPAZ','46101403','TIENDA MARGA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92806','COMERCIAL PATZITECA','A UN COSTADDO DE LA IGLESIA PARROQUIAL DE RABINAL B.V.','59989879','COMERCIAL PATZITECA','1','15.085016465710941','-90.49147284294338','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92807','EDITH MARLENY RAMIREZ FELICIANO','BARRIO SAN MARCOS COBAN A.V','46480318','EDITH MARLENY RAMIREZ FELICIANO','1','15.23857440944731','-90.23554236923638','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92813','TIENDA Y DEPOSITO ANNY','BARRRIO EL CENTRO, EL ESTOR','52023835','TIENDA Y DEPOSITO ANNY','1','15.375328467090064','-88.92714385713569','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92814','DISTRIBUIDORA LAS AMERICAS','2 CALLE 1-90 ZONA 3 SAN CRISTOBAL A.V','0','DISTRIBUIDORA LAS AMERICAS','1','15.364986170728857','-90.48146948773598','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92818','TIENDA LA MOMOSTECA NO. 1','NARANJO FRONTERA CASERIO SANTA MARTA, PETEN','40571975','TIENDA LA MOMOSTECA NO. 1','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92819','TIENDA JACKELINE','BARRIO SANTA CECILIA SANTA CRUZ','31615322','TIENDA JACKELINE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92820','TIENDA MAYRITA','ALDEA RIO DULCE, LIVINGSTON ','41458062','TIENDA MAYRITA','1','15.660396124577275','-89.00548645384431','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92823','TIENDA MERCEDES','SAN AGUSTIN CHAHAL','40466583','TIENDA MERCEDES','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92825','TIENDA SUPER PRECIO','CHACTE, FRENTE A TIENDA EL REGALITO','30962240','TIENDA SUPER PRECIO','1','16.104969999999998','-89.36139333333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92827','TIENDA MIS PASITOS','BARRIO EL CALVARIO SAN JUAN CHAMELCO ','56132210','TIENDA MIS PASITOS','1','15.422999141998176','-90.32939083954271','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92828','ABARROTERIA EL SEMBRADOR ','BARRIO EL CENTRO CHISEC','30192475','ABARROTERIA EL SEMBRADOR','1','15.812302897570202','-90.29184808715324','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92829','TIENDA ZURY','CALLE PRINCIPAL FRAY BARTOLOME DE LAS CASAS','45015302','TIENDA ZURY','1','15.808814572148211','-89.87383204732038','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92836','TIENDA EL REGALO DE DIOS','7 AVENIDA CALLE 16-32 ZONA 1 ZACAPA ZACAPA','79412637','TIENDA EL REGALO DE DIOS','1','14.972589879354652','-89.52821879210802','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92838','ABARROTERIA LA MEDALLA','8AV. 4-50 ZONA 1 CARCHA A.V','46000030','ABARROTERIA LA MEDALLA','1','15.477922521123899','-90.30936844907298','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92840','TIENDA JULIANA','PUESTO 84 INTERIOR DE MERCADO LA TERMINAL','0','TIENDA JULIANA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92841','TIENDA KATY','MERCADO, MUNICIPAL N.1, EL ESTOR','35004730','TIENDA KATY','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92843','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','10 CALLE ENTRE 10 Y 11 AVENIDA, ZONA 1, BARRIO LA LAGUNA','79426698','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','1','14.972820438104591','-89.52961111281365','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92844','TIENDA CEBALLOS','BARRIO SAN MIGUEL  CUBULCO B.V','0','TIENDA CEBALLOS','1','15.102735023922728','-90.629071984857','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92846','TIENDA LA BENDICION','CALLE PRINCIPAL FRENTE AL PARQUEO DE TAXIS MELCHOR DE MENCOS PETEN','53183688','SARAIL ELIAS PEREZ','1','17.06304','-89.15453000000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92847','TIENDA LOS 3 ANGELITOS','BARRIO SAN LORENZO JOCOTAN CHIQUIMULA','53798645','OSCAR VASQUEZ DIAZ','1','14.819976135148707','-89.39152240501825','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92848','TIENDA GARCIA','CALLE PRINCIPAL, JOCOTAN','53667505','TIENDA GARCIA','1','14.816826661107966','-89.38947819721149','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92852','TIENDA JERUSALEN','MERCADO DE SANTA ELENA PETEN.','30013385','TIENDA JERUSALEN','1','16.786915023823372','-90.1154573605526','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92854','TIENDA SAN MIGUEL','ENTRADA CARRETON DE BASURA MERCADO STA ELENA','0','TIENDA SAN MIGUEL','1','16.519980117849038','-90.17628811113289','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92858','MEGA FRONTERA DE A 3','FRENTE A GASOLINERA TEXACO  EL NARANJO','32973873','MEGA FRONTERA DE A 3','1','17.230240220002592','-90.80618083296937','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92865','ABARROTERIA MIGUEL ANGEL','BARRIO PLAYA BLANCA A UN COSTADO DEL ARTICO SAN BENITO PETEN','49913061','MARIELA MAGDALENA CIPRIAN MEJIA','1','16.924716666666665','-89.903905','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92867','DEPOSITO LA BARATA','A UN COSTADO DEL PARQUE DE SAN CRISTOBAL A V','30130807','DEPOSITO LA BARATA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92868','TIENDA SANTO TOMAS','FRENTE AGENCIAS WAY LAS CRUCES','55289424','TIENDA SANTO TOMAS','1','16.786932542975215','-90.11542557481353','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92874','TIENDA QUICHE','CENTRO CHACTE FRENTE A RIOS DE AGUA VIVA','43944738','TIENDA QUICHE','1','16.104173333333332','-89.36025833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92899','COMERCIALIZADORA LAS DANIELITAS','BARRIO NORTE SAN ANDRES PETEN','57626281','COMERCIALIZADORA LAS DANIELITAS','1','16.795606355888843','-90.10249368893393','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92901','TIENDA LA BUENA FE','A UN COSTADO DE TDA ECONOMICA SAN ANDRES','30195000','TIENDA LA BUENA FE','1','16.92025125587272','-89.89395485735503','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92903','ABARROTERIA SHALOM','BARRIO SAN FELIPE  SAN CRISTOBAL A.V','31128757','ABARROTERIA SHALOM','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92904','VARIEDADES Y TIENDA EL MUNDO DEL AHORRO','17 AVENIDA SELMA ALABAMA 7-06 ZONA 3 ZACAPA ZACAPA','51666746','VARIEDADES Y TIENDA EL MUNDO DEL AHORRO','1','14.972251528914182','-89.52931628152714','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92905','TIENDA KARLITA','7 CALLE 15-23 ZONA 1 MERCADO MUNICIPAL ZACAPA ZACAPA','77928067','VICENTE CARRILLO VELAZQUEZ','1','14.972373368390281','-89.52946588471019','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92906','TIENDA EL AHORRO','BARRIO EL CENTRO MORAZAN, ','45070513','TIENDA EL AHORRO','1','14.944423139334237','-89.9694587568429','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92911','TIENDA LAS VEGAS','SAN BENITO PETEN','49937790','JOSE GARCIA','1','16.912808685083824','-89.89250524469746','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92920','DISTRIBUIDORA SANTIAGO','BARRIO SAN SEBASTIAN ZONA 3 SAN CRISTOBAL A.V','30858552','DISTRIBUIDORA SANTIAGO','1','15.36475013597821','-90.48005966613056','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92923','TIENDA SAN PABLO','PARQUE DE BUSES QUE VAN A LAS PACAYAS SAN CRISTOBAL','32860967','TIENDA SAN PABLO','1','15.366101365056371','-90.47863341087908','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92924','PIÑATERIA D FIESTA ','11 AV. 2-10 A ZONA 1 CHIQUIMULA','59654171','PIÑATERIA D FIESTA','1','14.800792032745347','-89.54059483065996','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92926','TIENDA LA NUEVA','7 CALLE 15-16 ZONA 1 ZACAPA ZACAPA','79410826','CANDELARIA CASTRO ALVAREZ','1','14.9724764984926','-89.52936551356665','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'92929','TIENDA LA FAVORITA','CALLE PRINCIPAL, ALDEA RIO DULCE, LIVINGTON','79305116','TIENDA LA FAVORITA','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92930','TIENDA LA OCCIDENTAL','COMERCIAL LAS TRES VIRTUDES, RIO DULCE, LIVINGTON','46180022','TIENDA LA OCCIDENTAL','1','15.659050708523006','-89.00274015822103','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92937','TIENDA RUTHY','ALDEA CANLECH  RAXUHA','58197055','TIENDA RUTHY','1','15.786574959044195','-89.60400113377075','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92943','SUPER MASS ECONOMICO','EL CHAL FRENTE A LA GASOLINERA','90534352','SUPER MASS ECONOMICO','1','16.642306666666666','-89.65136666666668','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92945','SUPER VARIEDADES EL TRIUNFO','BARRIO EL CENTRO  PURULHA B.V','0','SUPER VARIEDADES EL TRIUNFO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92949','SUPER TIENDA QUIKE S','CALLE REAL ZONA 0 BARRIO ARRIBA SAN JERONIMO B.V','79402706','SUPER TIENDA QUIKE S','1','15.06129515979123','-90.23951484343083','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92950','ABARROTERIA EBEN EZER','BARRIO EL CENTRO CHISEC A.V','30674837','ABARROTERIA EBEN EZER','1','15.812424213689214','-90.29210446717161','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92951','TIENDA GENESIS','CALLE PRINCIPAL DE PARQUEO PARA SANTA CRUZ CHACTE PETEN','48257692','TOMAS RIGOBERTO JEATAS XIQUIN','1','16.105103333333332','-89.36100166666665','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92954','TIENDA LA BENDICION','CENTRO COMERCIAL LAS TRES VIRTUDES RIO DULCE IZABAL','31314939','TIENDA LA BENDICION','1','15.659360867471902','-89.0029167788357','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92958','TIENDA NATALY','INTERIOR MERCADO TACTIC  A UN COSTADO DE LA IMAGEN SANTO DOMINGO','53285651','TIENDA NATALY','1','15.319547810029185','-90.35187743471663','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92959','TIENDA SANTA ELENA','CALLE PRINCIPAL FRENTE A POLLO PINULITO DOLORES PETEN','46183218','JUAN MEJIA','1','16.514345','-89.41713833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'92960','TIENDA MICHELL','INTERIOR MERCADO MUNICIPAL LOCAL 156 CHIQUIMULA CHIQUIMULA','51824479','SANTIAGO ORTIZ','1','14.800402757291023','-89.5447471821787','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92963','EL AHORRO FAMILIAR','2DA CALLE BARRIO SANTIAGO A UN COSTADO DE CENTRO DE SALUD  CUBULCO','53879502','EL AHORRO FAMILIAR','1','15.103653682302445','-90.6291636591475','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92965','TIENDA MARIBEL','ESQUINA DE MERCADO MUNICIPAL FRAY','40595151','TIENDA MARIBEL','1','15.802177626929808','-89.86707827436055','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92966','MINI BODEGA SHALITOS','AFUERAS DE MERCADO DE FRAY BARTOLOME DE LAS CASAS','53879430','MINI BODEGA SHALITOS','1','15.805517653875423','-89.86703904233859','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92969','TIENDA ANIBAL','A UN COSTADO DE TIENDA INGRID TACTIC A.V','53474779','TIENDA ANIBAL','1','15.31972951806645','-90.35231588945561','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92975','SURTIDORA LA ESQUINA','CENTRO DE SAYAXCHE A UN COSTA DE REST. CAFÉ MAYA','40940587','SURTIDORA LA ESQUINA','1','16.52839387384298','-90.18972331008521','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92976','TIENDA LA ESQUINITA','CALLE PRINCIPAL, FRONTERAS RIO DULCE, LIVISGTON','46025336','TIENDA LA ESQUINITA','1','15.65975649042901','-89.00474084781968','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92977','OLBIN GEOVANY VEGA GABRIEL','MORALES, IZABAL','46299742','OLBIN GEOVANY VEGA GABRIEL','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92978','TIENDA QUICHELENSE','INTERIOR DEL MERCADO N.1 MORALES, IZABAL','57219264','TIENDA QUICHELENSE','1','15.43717032134226','-88.96486822462877','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92979','EDITO ANTONIO LOPEZ GIRON','ATRÁS DE GASOLINERA ESSO SAN BENITO ESCUELA SHADAY','0','EDITO ANTONIO LOPEZ GIRON','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'92982','TIENDA ILOTENSE','CENTRO COMERCIAL LAS TRES VIRTUDES  RIO DULCE  LIVINGSTON ','53357264','TIENDA ILOTENSE','1','15.659305025480856','-89.00314047920395','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92984','TIENDA MARY NO. 2','COLONIA MUNICIPAL PETET  COBAN A.V','30148436','TIENDA MARY NO. 2','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'92988','CARLOS ARTURO CHON CAHUEC','FRAY BARTOLOME DE LAS CASAS','54106022','CARLOS ARTURO CHON CAHUEC','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92992','TIENDA CHAMELQUENA','ALDEA POCOLA SAN PEDRO CARCHA ALTA VERAPAZ','49771334','ANA MARIA TZUL CUZ','1','15.478903282080985','-90.30953231863465','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92993','TIENDA NELSON','7 AVENIDA ZONA 1 CARCHA ALTA VERAPAZ','49144919','NELSON POP GARCIA','1','15.479368875497837','-90.30905322787191','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'92994','LA ECONOMICA','A LA PAR IGLESIA NAZARENO LA TINTA','0','LA ECONOMICA','1','15.311689999999999','-89.88427500000002','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92995','TIENDA MARY 2','MERCADO CENTRAL A UN COSTADO DE LA IGLESIA CATOLICA LADO NORTE CHIQUIMULA CHIQUIMULA','41036264','TIENDA MARY 2','1','14.800435873482112','-89.54491582450434','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'92996','TIENDA LA BENDICION','BARRIO EL CENTRO LA TINTA  A UN COSTADO SALON SOCIAL','46366576','TIENDA LA BENDICION','1','15.338193926296881','-89.74209437125128','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'92997','LUCIANO CLEMENTE TZUL BAQUIX','ZONA 1 IXCAN','0','LUCIANO CLEMENTE TZUL BAQUIX','1','15.988224989066705','-90.78139502449889','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'92998','COMERCIAL EL BUEN PRECIO','9A  CALLE 6A Y 7A AV. FRENTE AL MERCADO MUNICIPAL','46361148','COMERCIAL EL BUEN PRECIO','1','15.732678167454315','-88.59914050083354','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92999','TIENDA EL BUEN PRECIO','FRENTE A POLLO LANDIA CENTRO DE SAN ANDRES','40061388','TIENDA EL BUEN PRECIO','1','16.919167105064346','-89.894427374106','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93000','TIENDA SAN ANDRES','BARRIO EL CENTRO SAN ANDRES','59059194','TIENDA SAN ANDRES','1','16.91883703405796','-89.8935568619054','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93001','SUPER MARKET EL PUNTO','BARRIO SANTA ELENA ZONA 1 SANTA CRUZ A.V','31912788','SUPER MARKET EL PUNTO','1','15.374898796377584','-90.42914076907148','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93003','TIENDA IXMUCANE','SAN FERNANDO CHAHAL','49488456','TIENDA IXMUCANE','1','15.786313522058201','-89.60027289949403','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93004','TIENDA SHALON','BARRIO REYNA  IXCAN QUICHE','53245618','TIENDA SHALON','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93005','ABARROTERIA JOSESITO','2AV. 1-22 ZONA 3 COBAN A.V EXTERIOR MERCADO','57911512','ABARROTERIA JOSESITO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93008','DISTRIBUIDORA MELANY','A UN COSTADO DE RENAP  SAN FERNANDO CHAHAL','30234537','DISTRIBUIDORA MELANY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93009','ABARTOTERIA ANITA','12 AV  EL ESFUERZO 2','49161304','ABARTOTERIA ANITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93011','DISTRIBUIDORA POQONCHI','BARRIO EL CENTRO TUCURU A.V','30810929','DISTRIBUIDORA POQONCHI','1','15.294076666666667','-90.11903','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93013','FARMACIA GUADALUPE','1 AVENIDA 1-84 ZONA 2 QUEZALTEPEQUE CHIQUIMULA','79440510','JUAN CORONADO CORONADO','1','14.63544919491754','-89.44488344998241','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93014','ABARROTERIA EMANUEL','INTERIOR MERCADO MUNICIPAL  CHIQUIMULA','40556139','ABARROTERIA EMANUEL','1','14.799892533984428','-89.54457954262463','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93015','MUNDO DE 3 EL CHAL','ALDEA EL CHAL ZONA 0 EL CHAL PETEN','31475209','EDGAR ALFREDO CHUMIL SAQUIC','1','16.642113333333334','-89.65086833333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93016','TIENDA LA BENDICION','BARRIO INDECA SEGUNDA LOTIFICACION FRENTE AL MONTE SINAI SANTA ELENA PETEN','58403770','TIENDA LA BENDICION.','1','16.970811646314974','-89.91166833466825','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93019','VARIEDADES MUNDO DE 3','CALLE PRINCIPAL FRENTE AL PARQUE MELCHOR DE MENCOS PETEN','33052310','HECTOR TAU TIU','1','17.063713333333332','-89.15368500000001','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93020','COMERCIAL HENRY','BARRIO NUEVA LIBERTAD  FRAN BARTOLOME DE LAS CASAS','40459797','COMERCIAL HENRY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93022','TIENDA EL BUEN PRECIO','FRENTE AL PIRATA SANTA ELENA PETEN','47061773','TIENDA EL BUEN PRECIO','1','16.78712002250323','-90.11528035940829','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93025','FREDY RAMIREZ','MERCADO DE SANTA ELENA A UN COSTA DE LA TRANCA','47396496','FREDY RAMIREZ','1','16.919879718983186','-89.89506050022077','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93028','TIENDA MARISOL','1 CALLE A 0-117 ZONA BARRIO SAN JUAN SAN JUAN CHAMELCO ALTA VERAPAZ','48830126','ZOILA MARINA CHO CHOC','1','15.423473534380852','-90.33010211712757','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91734','TIENDA SAN ANTONIO','8 AVENIDA 3-34 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','55223137','OLGA DIAZ','1','15.478496898966316','-90.3091906320087','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93032','COMERCIALIZADORA RIVERA','8. AV. 2-00 ZONA 1. CHIQUIMULA','79422089','COMERCIALIZADORA RIVERA','1','14.80159266101365','-89.54437705230367','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93034','TIENDA ELIZA','CALLE AL CALVARIO PURULHA B.V','40779158','TIENDA ELIZA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93035','BODEGA FAMILIAR','BARRIO EL CENTRO DE LAS CRUCES  PETEN','32642328','BODEGA FAMILIAR','1','16.65927001135951','-90.2915230135875','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93041','COMERCIAL RIO DE AGUA VIVA','BARRIO EL CENTRO PURULHA B.V','51769842','COMERCIAL RIO DE AGUA VIVA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93042','DISTRIBUIDORA KANA TERESA','BARRIO EL CENTRO TUCURU ALTA VERAPAZ','45888900','RAMON CO CHOCOOJ','1','15.293826666666666','-90.11879166666668','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93044','TIENDA DABIAN','FRENTE AL PARQUE  QUEZALTEPEQUE','79440299','TIENDA DABIAN','1','14.634945202278942','-89.44378904494226','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93045','TIENDA ELIZABETH','BARRIO CONCEPCION RAXHUJA','51720490','TIENDA ELIZABETH','1','15.801477156311869','-89.86523738689039','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93046','TIENDA ESMERALDA','BARRIO SAN LUCAS  CHAHAL A.V','40327768','TIENDA ESMERALDA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93047','TIENDA LA BENDICION','A UN COSTADO DE LA NEVERIA BARRIO EL CENTRO TUCURU ALTA VERAPAZ','31598675','ELVIRA SAGUI CHEN','1','15.293698333333335','-90.11959999999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93048','TIENDA LA CEIBA','BARRIO EL CENTRO TUCURU A.V, SALIDA A LA TINTA','57702617','TIENDA LA CEIBA','1','15.294078333333335','-90.11897499999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93050','TIENDA Y LICORES LA TERMINAL','7 AVENIDA 3-089 ZONA 5 SAN PEDRO CARCHA ALTA VERAPAZ','58083810','TIENDA Y LICORES LA TERMINAL','1','15.481670600533484','-90.30863823026971','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93051','DISTRIBUIDORA EL MARCHANTE','3 CALLE A 3-45 ZONA 4 BARRIO SANTO TOMAS  COBAN A.V','57457126','DISTRIBUIDORA EL MARCHANTE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93052','TIENDA LA VUELTECITA ','INTERIOR DEL MERCADO N.2  MORALES  IZABAL','42141174','TIENDA LA VUELTECITA','1','15.47363901204335','-88.8368463072156','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93053','TIENDA MORALES NO.2','COMERCIAL LAS TRES VIRTUDES  RIO DULCE  LIVINGTON','30528295','TIENDA MORALES NO.2','1','15.659710934574544','-89.00302969940017','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93054','TIENDA LA ECONOMICA','BARRIO EL CENTRO SAN AGUSTIN CHAHAL','51969352','TIENDA LA ECONOMICA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93057','TIENDA ALISSON','BARRIO SANTIAGO ZONA 1 CUBULCO','30109155','TIENDA ALISSON','1','15.085508807279446','-90.49256000363222','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93058','TIENDA Y VARIEDADES LAS ROSAS','A UNA CUADRA COOSAMA SALIDA A PURUHLA','58945919','TIENDA Y VARIEDADES LAS ROSAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93060','TIENDA PERLA DE OCCIDENTE N.2','CALLE PRINCIPAL  RIO DULCE LIVINGSTON  IZABAL','30219646','TIENDA PERLA DE OCCIDENTE N.2','1','15.478357283447995','-88.84894484918321','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93061','COMERCIAL MUNDO MAYA','BARRIO EL CENTRO LA LIBERTAD PETEN','45254687','COMERCIAL MUDO MAYA','1','16.91765821628529','-89.89577632081482','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93063','PROVIDENCIA #1','LAS CRUCES FRENTE A CALLE PRINCIPAL','30107612','PROVIDENCIA #1','1','16.65941884641285','-90.29361974146369','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93064','TIENDA LIZZETH','MERCADO MUNICIPAL BARRIO EL CENTRO GUALAN ZACAPA','51670210','TIENDA LIZZETH','1','15.113417937425803','-89.36137341812804','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93065','TIENDA LA GUADALUPE','2DA AVE. 2-21 ZONA 1 SAN CRISTOBAL A.V.','47683014','TIENDA LA GUADALUPE','1','15.366403394861795','-90.47799626289044','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93066','TIENDA ELENITA','BARRIO SAN ANTONIO TAMAHU A.V','31789277','TIENDA ELENITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93067','ABARROTERIA ALFONZO','BARRIO SAN JACINTO TACTIC A.V FRENTE A TIENDA ESTRELLITA','45324246','ABARROTERIA ALFONZO','1','15.319194880299447','-90.35302897549923','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93068','PLAZA NORTE MUNDO DE 3','CALLE PRINCIPAL FRENTE A DISTRIBUIDORA LA ECONOMICA SAN LUIS PETEN','33540054','YOVANY CALGUA','1','16.199865','-89.44035333333335','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93069','TIENDA J.C.','MERCADO CENTRAL PLAYA GRANDE  IXCAN  QUICHE','53738068','TIENDA J.C.','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93070','COMERCIAL UNIVERSAL','BARRIO EL CENTRO SAYAXCHE PETEN','47613436','COMERCIAL UNIVERSAL','1','16.786924387857535','-90.11544701597134','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93071','TIENDA SURTI MAYOREO','BARRIO EL CENTRO FRENTE AL CAFE MAYA SAYAXCHE PETEN','48074564','TIENDA SURTI MAYOREO','1','16.528559212058315','-90.18982618367953','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93072','TIENDA LA TERMINAL','FRENTE A TERMINAL DE BUSES LAS CRUCES PETEN','30676254','TIENDA LA TERMINAL','1','16.786924388174395','-90.11544701585804','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93073','TIENDA SANTO TOMAS 2','CALLE PRINCIPAL FRENTE A TERMINAL DE BUSES LAS CRUCES PETEN','0','TIENDA SANTO TOMAS 2','1','16.786896801353254','-90.11545742791975','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93074','DISTRIBUIDORA LAS MARIAS','CANTON LAS CASAS Z. 8 COBAN','46853050','DISTRIBUIDORA LAS MARIAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93075','PINATERIA MAR Y SOL','BARRIO SANTA ANA  SAN CRISTOBAL A.V','41147661','PINATERIA MAR Y SOL','1','15.368027424424323','-90.47591707695938','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93076','TIENDA J.C','TERMINAL DE BUSES PLAYA GRANDE','53738068','TIENDA J.C','1','15.990543121640492','-90.78117862235578','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93077','DISTRIBUIDORA LAS MARIAS','CANTON LAS CASAS  ZONA 8 COBAN A.V','46853050','DISTRIBUIDORA LAS MARIAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93078','LIBRERIA Y MANUALIDADES SHADAI','EXTERIOR DEL MERCADO NUEVO BARRIO EL CENTRO MELCHOR DE MENCOS PETEN','30334056','BRENDA YANETH PLEITEZ AGUSTIN','1','17.069078333333334','-89.151215','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93079','MERCALITO','BO.EL CENTRO  OLOPA  CHIQUIMULA','42681812','MERCALITO','1','14.691852087241953','-89.35000380718614','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93080','BODEGA ECONOMARKET SAN ANTONIO','6 CALLE 8-23 ZONA 3 RESIDENCIALES DEL VALLE ESQUIPULAS CHIQUIMULA','42962377','MARIA ORBELINA PERALTA HERNANDEZ','1','14.566237962229296','-89.35178862055065','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93082','SUPER TIENDA QUIKES 2','5TA. AV. "A" CALLE PRINCIPAL ZONA 1 CAMINO HACIA EL ESTADIO LAS ROSAS','41706500','SUPER TIENDA QUIKES 2','1','15.1008886451874','-90.32240479848487','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93083','TIENDA JONATHAN','ALDEA SANTA BARBARA  SAN JERONIMO B.V','32862114','TIENDA JONATHAN','1','15.070512700146407','-90.1810420413905','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93086','PLAZA NORTE CHISEC','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','40899388','PLAZA NORTE CHISEC','1','15.812006722313606','-90.29171512718283','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93087','DELFINA ROSIBEL VELIZ MILIAN','PURUHLA BAJA VERAPAZ','52009998','DELFINA ROSIBEL VELIZ MILIAN','1','15.237141578016066','-90.23495409238085','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93088','COMERCIAL EBEN-EZER','CALLE PRINCIPAL BARRIO EL CENTRO PANZOS A.V','51670681','COMERCIAL EBEN-EZER','1','15.341476666666665','-89.72464166666666','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93089','TIENDA MARIA JOSE','BARRIO LA LINEA ALDEA TELEMAN PANZOS ALTA VERAPAZ','46543400','ROSMERI CHUB','1','15.338145','-89.74056833333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93093','DEPOSITO FLOR DE ORIENTE','7 CALLE 15-23 ZONA 1 ZACAPA ZACAPA','45384419','VICENTE MEDRANO LOPEZ','1','14.972474850706394','-89.52924391959947','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93094','TIENDA LA SURTIDORA','BARRIO EL CENTRO GUALAN ZACAPA','31230160','MARIA ISABEL LUX ITZEP','1','15.113328146411048','-89.36293798762351','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93095','COMERCIAL SAN AGUSTIN','BO. CENTRO  SAN AGUSTIN  EL PROGRESO','79360693','COMERCIAL SAN AGUSTIN','1','14.944134291777413','-89.96860760230193','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93096','TIENDA RIO DULCE','EXTERIOR MERCADO CANTONAL  STO. TOMAS DE CASTILLA','0','TIENDA RIO DULCE','1','15.685519614185695','-88.61625956624692','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93097','TIENDA LA BENDICION MUNDO DE 3','BARRIO SAN AGUSTIN LANQUIN ALTA VERAPAZ','30124209','ELIAS TUY','1','15.573954440856767','-89.98096141268603','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93098','ABARROTERIA SHALOM','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','30514365','SILVIA EUGENUA AZUCENA HUB RAX','1','15.812314182930901','-90.29056726397181','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93100','TIENDA EL SUPER AHORRO','BARRIO EL CENTRO POPTUN PETEN','55162347','AGUSTIN CAAL','1','16.199650000000002','-89.442395','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93102','VARIEDADES MUNDO DE A 3','BARRIO EL CENTRO LA UNION ZACAPA','40962152','JAIME ROCAEL PEREZ','1','14.965465684826588','-89.29126983540318','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93104','MUNDO DE 3 TORRE FUERTE','BARRIO EL CENTRO GUALAN ZACAPA','30409817','EDGAR FAUSTINO GOMEZ GOMEZ','1','15.113447538911137','-89.36115587164437','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93105','MINI MARKET CASTRO','BARRIO EL CENTRO GUALAN ZACAPA','79331721','ANGEL CASTRO','1','15.113801981526883','-89.36265540034269','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93107','TIENDA JYL','15 AVENIDA CALLE 7-27 ZONA 1 ZACAPA ZACAPA','79410170','TIENDA JYL','1','14.972230297133132','-89.52926809915269','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93108','TIENDA MISHELL','BARRIO EL CENTRO MORAZAN','31899015','TIENDA MISHELL','1','14.933312071525545','-90.14231257676762','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93109','ABARROTERIA LUCERO','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','32354501','ERVIN JOEL BAC BOL','1','15.811712016518007','-90.290666758364','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93110','ABASTOS VARGAS','BARRIO LAS JOYAS POPTUN PETEN','47139847','NELSON VARGAS','1','16.199771666666667','-89.44213833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93113','TIENDA EL BUEN PRECIO','FRENTE AL PARQUE DE MORAZAN','53827471','TIENDA EL BUEN PRECIO','1','14.932682228361415','-90.14416513403586','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93114','TIENDA LEVY','INTERIOR MERCADO TACTIC A.V','48909563','TIENDA LEVY','1','15.319612348363217','-90.35287895516414','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93115','TIENDA EL EXITO','POPTUN','30030405','TIENDA EL EXITO','1','16.332531666666668','-89.42155333333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93116','ABARROTERIA LOS GONZALEZ','5TA. CALLE 1-12 ZONA 4 COBAN A.V','57791192','ABARROTERIA LOS GONZALEZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93117','TIENDA ITATY','CALLE PRINCIPAL  ALDEA TAMAGAS  LIVINGSTON','53789243','TIENDA ITATY','1','14.842798886127854','-89.51684204982503','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93118','SURTIDORA MAHANAHIM','7 AVENIDA 1-061 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','48614022','ANA FLORICELDA POP','1','15.479503248945914','-90.30940402958868','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93119','MARIA ELENA LOPEZ LOPEZ','MERCADO DE SAN B ENITO','30520822','MARIA ELENA LOPEZ LOPEZ','1','16.92064','-89.90791833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93121','TIENDA Y LIBRERIA MARY ','ALDEA NUEVO SAN JUAN  SALAMA BAJA VERAPAZ','32976375','TIENDA Y LIBRERIA MARY','1','15.103282910944218','-90.32009993590287','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93122','TIENDA R Y W ','BARRIO SAN MIGUEL  CUBULCO BAJA VERAPAZ','48030083','TIENDA R Y W','1','15.102374696451067','-90.62854342786444','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93123','MUNDO DE 3 AHORRO FAMILIAR','A UN COSTADO DE SUPER MARIA CELESTE  CUBULCO BAJA VERAPAZ','31234609','MUNDO DE 3 AHORRO FAMILIAR','1','15.104009066372505','-90.63013908244008','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93124','TIENDA EMANUEL','A UN COSTADO DE MULTISERVICIOS LA FLOR BARRIO EL CENTRO TUCURU ALTA VERAPAZ','57231195','ARTURO CU CU','1','15.293788333333335','-90.11955833333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93125','TIENDA LA ESQUINITA','BARRIO NINO PERDIDO ALDEA TELEMAN SALIDA PANZOS ALTA VERAPAZ','30010106','OSCAR RENE TUN MAQUIM','1','15.339433333333334','-89.73453333333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'93127','TIENDA RONALDO ','SAN CRISTOBAL ALTA VERAPAZ','0','TIENDA RONALDO','1','15.363931873078045','-90.47909424606334','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93129','SUPER DISTRIBUIDORA LA ECONOMICA','MERCADO MUNICIPAL  LOS AMATES','54105736','SUPER DISTRIBUIDORA LA ECONOMICA','1','15.478362675974465','-88.84901809776596','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93133','MINI DISTRIBUIDORA SANTIAGO','8 AVENIDA 2-17 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','40864627','LUCILA ALEJANDRINA PAAU PAREDES','1','15.479154002178484','-90.3090067093076','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93134','COMERCIAL EL REGALITO','0 AV. 2-47 ZONA 3  BARRIO SAN SEBASTIAN SAN CRISTOBAL A.V','59155330','COMERCIAL EL REGALITO','1','15.364302263661441','-90.47973883837174','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93135','TIENDA ALVAREZ','BARRIO SANTIAGO  CUBULCO B.V','53527500','TIENDA ALVAREZ','1','15.10349414835719','-90.62920118924829','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93138','TIENDA EL BUEN PRECIO','SANSARE  EL PROGRESO','0','TIENDA EL BUEN PRECIO','1','14.748798197415455','-90.11601143946203','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93139','TIENDA LA SURTIDORA ','SANSARE  EL PROGRESO','45144222','TIENDA LA SURTIDORA','1','14.747468362773427','-90.11597295617335','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93141','SURTIDORA LUISA','DIAGONAL 1  1-40 ZONA 1 COBAN A.V','50080044','SURTIDORA LUISA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93142','MINI ABARROTERIA RUTY','A UN COSTADO DEL PARQUE CENTRAL FRENTE A NEVERIA','31539975','MINI ABARROTERIA RUTY','1','15.365014136577992','-90.47958679851044','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93144','SUPER TIENDA GABY','FRENTE A BIENESTAR SOCIAL SALAMA B.V','33420811','SUPER TIENDA GABY','1','15.103405042547033','-90.32143303502927','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93146','DISTRIBUIDORA FEVA','3 CALLE ZONA 4 FRENTE A DISTRIBUIDORA SANTIAGO','59499539','DISTRIBUIDORA FEVA','1','15.364090726130911','-90.47982018103401','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93148','YOLHER S.A','6TA. AVENIDA 5-15 ZONA 1 SALAMA BAJA VERAPAZ','79400919','YOLHER S.A','1','15.1039480122805','-90.32058155962929','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93149','LAS CANAS SUPER MARKET','CASERIO CANAS VIEJAS KM 145.9 SAN JERONIMO BAJA VERAPAZ','46327732','LAS CANAS SUPER MARKET','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93150','DISTRIBUIDORA EL SUPREMO S.A','LAS CHAMPAS, EL RANCHO','79288575','DISTRIBUIDORA EL SUPREMO S.A','1','14.926548989280183','-90.00980131032554','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93151','SUPER COMERCIAL DE 3 TORRE FUERTE','LA UNION, ZACAPA','53017532','SUPER COMERCIAL DE 3 TORRE FUERTE','1','14.965637929590816','-89.29142485757257','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93154','COMERCIAL LOS HERMANOS','7. CALLE 17-07 Z.3  ZACAPA','79413725','COMERCIAL LOS HERMANOS','1','14.971692110699276','-89.52847606268362','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'93159','SUPER FARMACIA AMERICA  ESQUIPULAS','8A. CALLE 4-45 ZONA 1 ESQUIPULAS','79434842','SUPER FARMACIA AMERICA  ESQUIPULAS','1','14.566122201359097','-89.35183559008448','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93160','TIENDA Y FARMACIA AMERICA','10 AVENIDA LOCAL 1 2-01 ZONA 1 CHIQUIMULA CHIQUIMULA','42138119','LUIS ENRIQUE SAMAYOA','1','14.801037994094564','-89.5416947348003','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93161','TDA. LA BUENA ESPERANZA','BARRIO EL CALVARIO JOCOTAN','46743217','TDA. LA BUENA ESPERANZA','1','14.821350007375724','-89.38992978060632','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93163','TIENDA COBANERA','INTERIOR DEL MERCADO CENTRAL SALAMA B.V','41512868','TIENDA COBANERA','1','15.102427721388866','-90.32065915223473','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93164','ABARROTES LORENA','4 AVENIDA 3-38 ZONA 3 COBAN A.V','53515471','ABARROTES LORENA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'93165','TIENDA LA PRINCIPAL','ZONA 1 AVENIDA TELGUA SANTA ELENA  PETEN.','46417350','TIENDA LA PRINCIPAL','1','16.762880320063225','-90.12967036944','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93166','VARIEDADES LA OCCIDENTAL','INTERIOR DEL MERCADO DE SANTA ELENA PETEN','30733712','VARIEDADES LA OCCIDENTAL','1','16.919745469314023','-89.89415115008038','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93168','TIENDA LA SAGRADA FAMILIA','CALLE HACIA LA TERMINAL ZONA 1 IXCAN PLAYA GRANDE','59057929','TIENDA LA SAGRADA FAMILIA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93169','ABARROTERIA  MARLENY','CALLE HACIA EL CEMENTERIO  FRAY','57632060','ABARROTERIA  MARLENY','1','15.801239266416736','-89.83366782849953','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93170','TIENDA EL REGALITO 2','TERMINAL DE BUSES ZONA 1 IXCAN PLAYA GRANDE','53017767','TIENDA EL REGALITO 2','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93177','TIENDA EMELY','BARRIO SANTA ROSA  FRAY BARTOLOME DE LAS CASAS','50416874','TIENDA EMELY','1','15.808720069407718','-89.87395040500897','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93182','TIENDA ELIZABETH SUCURSAL 2','8 AVENIDA 5-65 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','46886126','LIDIA ELIZABETH CHAVEZ','1','15.477035456620069','-90.30799572972545','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93184','MAXI MUNDO DE A 3','INTERIOR MERCADO CENTRAL RAXHUJA A.V','0','MAXI MUNDO DE A 3','1','15.808810616326722','-89.87378453124008','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'93192','TIENDA MARLEN','CALLE PRINCIPAL BO. EL CENTRO  OLOPA','30354855','TIENDA MARLEN','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93193','DISTRIBUIDORA DANI','BARRIO EL CENTRO CALLE PRINCIPAL MELCHOR DE MENCOS PETEN','50066509','EDGAR URRUTIA','1','17.062725','-89.15470166666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93197','SUPERMECADO LA NUEVA','8A AV. 3-61 ZONA 1  CHIQUIMULA','79420154','SUPERMECADO LA NUEVA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93198','TIENDA FRANCELY SUCURSAL 2','CALLE PRINCIPAL BARRIO SAN JOSE ZONA 1 A LA PAR DE BANRURAL 2 EL CHAL PETEN','33014794','FRANCISCO ZAPETA LUX','1','16.641756666666666','-89.64832','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93199','TIENDA LA BENDICION SUCURSAL 2','CALLE PRINCIPAL A UN COSTADO DEL PARQUEO DE MICROBUS SAN LUIS PETEN','45377299','MAURICIO CUIN','1','16.19985','-89.44221666666665','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93200','TIENDA LA BENDICION SUCURSAL 1','CALLE PRINCIPAL BARRIO EL CENTRO FRENTE A TIENDA LA BENDICION SAN LUIS PETEN','45377299','MAURICIO CUIN','1','16.199878333333334','-89.44214833333332','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93201','TIENDA SANTA CRUZ SUCURSAL 2','CALLE PRINCIPAL A UN COSTADO DE FARMACIA MODERNA SAN LUIS PETEN','302175605','ALEJANDRO VICENTE LOPEZ','1','16.19922','-89.44135999999999','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93202','TIENDA FLOR DEL QUICHE SUCURSAL 2','6 AVENIDA EXTERIOR DEL MERCADO DE POPTUN PETEN','30822674','MANUELA XIQUIN ZACARIAS','1','16.199771666666667','-89.44213833333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'93203','ABARROTERIA EL PRIMO','9A. AV. 1-21 ZONA 1  CHIQUIMULA','30353245','ABARROTERIA EL PRIMO','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'93211','MEGA MUNDO LA SURTIDORA','LAS CRUCES PETEN','30040438','MEGA MUNDO LA SURTIDORA','1','16.786896801353254','-90.11545742791975','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'93221','CERERIA Y DISTRIBUIDORA DIVINO MAESTRO','3A.CALLE 11-41 ZONA. 1  CHIQUIMULA','79420156','CERERIA Y DISTRIBUIDORA DIVINO MAESTRO','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'94215','COMERCIAL EL SURTIDOR','BARRIO EL CENTRO FRENTE DEL PARQUE DE SANTA CATALINA LA TINTA ALTA VERAPAZ','46611482','HUGO ROLANDO COC CUZ','1','15.31181','-89.88357333333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'94217','TIENDA LA ESQUINITA','BARRIO EL CENTRO GUALAN ZACAPA','48246425','TIENDA LA ESQUINITA','1','15.113460428753834','-89.3619809658861','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'94218','CARLOS GONZALES','BARRIO EL CENTRO SAN AGUSTIN  ACASAGUASTLAN  EL PROGRESO','0','CARLOS GONZALES','1','14.94433960247434','-89.97042310025329','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'95526','SURTIDORA POLOCHIC','BARRIO EL CENTRO TUCURU ALTA VERAPAZ FRENTE FARMACIA SAN FRANCISCO','30672164','HAROLDOCOY CHEN','1','15.293753333333333','-90.11925000000001','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'95527','ABARRO SAN CARLOS','BARRIO EL CENTRO A UN COSTADO DE AGROFERRETERIA AMACER CALLE AL CEMENTERIO LA TINTA ALTA VERAPAZ','30903302','MARCOS CAAL','1','15.293683333333336','-90.11892333333331','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'95539','TIENDA CINCO ESTRELLAS','CALLE PRINCIPAL PURUHLA B.V  FRENTE A MIS PASITOS','48070696','TIENDA CINCO ESTRELLAS','1','15.238121941052515','-90.2347028121741','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'95541','DISTRIBUIDORA COMERCIAL YASMIN SOCIEDAD ANONIMA','4 CALLE 8-78 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','79515287','FROILAN BARRIENTOS','1','15.478142668612739','-90.30871909761989','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91738','TIENDA LAS TRES MARIAS','7 AVENIDA 1-10 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','31103388','JULIAN QUINILLO','1','15.478068091757606','-90.30932367127598','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'95719','DIVINA PROVIDENCIA','BARRIO SAN FELIPE SAN CRISTOBAL A.V','79504518','DIVINA PROVIDENCIA','1','15.36494471955077','-90.47770128032778','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'95720','TIENDA JIRHE DOS','BARRIO SAN MIGUEL CUBULCO B.V','30505079','TIENDA JIRHE DOS','1','15.103388165923848','-90.62910445993217','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'95898','ABARROTERIA ARAGON','ALDEA EL CACAO SAN JERONIMO B.V','0','ABARROTERIA ARAGON','1','15.072756639698973','-90.27963485664762','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'95899','TIENDA EMANUEL','BARRIO SANTA ANA SAN CRISTOBAL A.V','33394304','TIENDA EMANUEL','1','15.366126348292497','-90.47857740315187','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'95902','SUPER FARMACIA AMERICA # 1','BO. EL CENTRO FRENTE A MI COPE ZONA 1 GUALAN','79332175','SUPER FARMACIA AMERICA # 1','1','15.113452483728512','-89.36144132768423','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'95903','SUPER FARMACIA AMERICA # 2','BO. EL CENTRO FRENTE A FERRETERIA ARELLANOS ZONA 1 GUALAN','55750987','SUPER FARMACIA AMERICA # 2','1','15.113810485075872','-89.36096936594846','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'95909','COMERCIAL BETHEL','MERCADO MUNICIPAL DE GUALAN  ZACAPA','31110255','COMERCIAL BETHEL','1','15.11331709898046','-89.36194416165479','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'95911','TIENDA Y VERDURA SHALOM','A UN COSTADO DE LA TERMINAL  FRAY BARTOLOME DE LAS CASAS','33525043','TIENDA Y VERDURA SHALOM','1','15.802798883408151','-89.86740051241631','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'95912','MUNDO DE A 3','INTERIOR MERCADO CENTRAL RAXHUJA A.V','31271407','MUNDO DE A 3','1','15.80307303936404','-89.86641345463084','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'96054','EL MUNDO DE LOS DE A 3','7 AVENIDA ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','58063105','EL MUNDO DE LOS DE A 3','1','15.479533777844132','-90.30945284041783','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96056','TIENDAS DE ORIENTE SOCIEDAD ANONIMA','KM 195 RUTA EL FLORIDO JOCOTAN CHIQUIMULA','59663758','TIENDAS DE ORIENTE, SOCIEDAD ANONIMA','1','14.814313629501251','-89.38363348751528','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'96060','TIENDA DON FERNANDO','BARRIO SAN SEBASTIAN  RABINAL B.V','45648890','TIENDA DON FERNANDO','1','15.08618340808009','-90.49329347758308','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96061','MUNDO DE 3 LA BENDICION','BARRIO SAN JACINTO  TACTIC A.V','46148324','MUNDO DE 3 LA BENDICION','1','15.319714433635585','-90.35281443860333','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96063','MILSON ALEXANDER LOPEZ TRINIDAD','BARRIO EL CENTRO SANTA ANA','48039127','MILSON ALEXANDER LOPEZ TRINIDAD','1','16.806696666666667','-89.82849','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'96064','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','KM 121.5 CARRETERA AL ATLANTICO  TECULUTAN  ZACAPA','59663758','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','1','14.990102996802182','-89.7186618328452','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'96065','TIENDA LA BENDICION','BARRIO LA LINEA TELEMAN PANZOS ALTA VERAPAZ','44765585','TIENDA LA BENDICION','1','15.338853333333335','-89.73970333333334','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'96067','TIENDA EMANUEL','CALLE PRINCIPAL B. EL CENTRO  EL ESTOR','31486740','TIENDA EMANUEL','1','15.530015222425288','-89.33554344074187','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'96068','TIENDA EMANUEL','INTERIOR MERCADO LA ECONOMICA   PLAYA GRANDE  IXCAN','30851340','TIENDA EMANUEL','1','15.990703886396444','-90.78086697348255','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'96069','TIENDA YORDIN','CALLE LA LINEA TELEMAN ALTA VERAPAZ AUN COSTADO DEL AUTO BANCO BANRURAL','53410246','TIENDA YORDIN','1','15.338951666666667','-89.73949499999999','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'96070','ABARROTERIA LA ECONOMICA','BARRIO EL CENTRO SANTA CATALINA LA ALTA VERAPAZ FRENTE DISTRIBUIDORA ROBERT','30638039','ABARROTERIA LA ECONOMICA','1','15.31181','-89.88357833333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'96071','TIENDA EL MANANTHIAL','LAS CRUCES Z. 1 A UN COSTADO DE LAS DISTRIBUIDORA LA ECONOMICA','57009189','TIENDA EL MANANTHIAL','1','16.659326327047474','-90.29110324684046','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'96076','SUPER ABARROTERIA FLOR DE MAYO','BARRIO EL CENTRO CHISEC ALTA VERAPAZ','50487501','SUPER ABARROTERIA FLOR DE MAYO','1','15.812993335026942','-90.29190619396036','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96081','HARY HERNANDEZ','BARRIO LA ERMITA   SAN BENITO PETEN','45912751','HARY HERNANDEZ','1','16.924806666666665','-89.90385333333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'96083','TIENDA LA BARATA','FRENTE MERCADO SAN AGUSTIN  ACASAGUASTLAN','572192640','TIENDA LA BARATA','1','14.945145369786282','-89.96968540941224','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'96084','TIENDA SAN MIGUEL ARCANGEL','BO. HATO SAN AGUSTIN  ACASAGUASTLAN','57391086','TIENDA SAN MIGUEL ARCANGEL','1','14.944134291777413','-89.96860760230193','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'96276','MARIO ALONSO CASTILLO COREA','BARRIO LA ERMITA   SAN BENITO PETEN','58288702','MARIO ALONSO CASTILLO COREA','1','16.924806666666665','-89.90385333333333','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'96415','MINI MARKET ADRIANA','BARRIO MAGDALENA  ESTACION CUBULCO B.V','57556491','MINI MARKET ADRIANA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96416','TIENDA VIRGINIA','BARRIO SANTIAGO  CUBULCO B.V  ENFRENTE DE AGENCIA WAY','45630643','TIENDA VIRGINIA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96417','TIENDA ANITA','BARRIO SAN MIGUEL CUBULCO B.V  ABAJO DE POLLO EXPRES','45645207','TIENDA ANITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96418','MINI MARKET EL AMATE','SAN MIGUEL CHICAJ BARRIO SANDOVAL  GASOLINERA EL AMATE','46009532','MINI MARKET EL AMATE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96419','SAN PEDRO MARTIR','3RA. CALLE 2-47  ZONA 4 RABINAL B.V','0','SAN PEDRO MARTIR','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96420','AUTO MARKET EL REY SALOMON','KM 138  SANTA BARBARA B.V','46270401','AUTO MARKET EL REY SALOMON','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96421','MUNDO DE A 3','6 AV. 2-37 ZONA 1  SALAMA B.V','57596565','MUNDO DE A 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96422','SUPER ESTACION SAN NICOLAS','RUTA 4  3-89 ZONA 3 BARRIO AGUA CALIENTE  SALAMA B.V','57177857','SUPER ESTACION SAN NICOLAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96423','TIENDA SANTA ELENA','BARRIO ALCANTARIA  GASOLINERA DON PACO','43201705','TIENDA SANTA ELENA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96424','SUPER 24 SAN NICOLAS','DIAGONAL 4  08-28 ZONA 2  SALAMA B.V','44692810','SUPER 24 SAN NICOLAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96425','TIENDA LA BENDICION','ALDEA VISTA HERMOSA  KM. 121.7 RUTA A LAS VERAPACES','49923610','TIENDA LA BENDICION','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96426','SUPER TIENDA LUCKYS','KM 146  ALDEA LOS PINOS  SALAMA B.V','58047134','SUPER TIENDA LUCKYS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96427','MARKET LOS COMPAS','BARRIO LA CRUZ  PURULHA B.V','7941750046669710','MARKET LOS COMPAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96428','TIENDA LESLI','ALDEA PASMOLON KM 175.5  RUTA A COBAN A.V','46147969','TIENDA LESLI','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96429','FOOD MART','FINCA LAS NARANJAS  TAMAHU A.V','51672308','FOOD MART','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96430','STAR PLACE','CASERIO SAN JULIAN  TACTIC A.V','0','STAR PLACE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96431','GRUPO COMERCIAL MI CASITA S.A','KM. 186.2 ALDEA TAMPO  TACTIC A.V','50004932','GRUPO COMERCIAL MI CASITA S.A','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96433','STAR PLACE','RESIDENCIALES MILANO  SANTA CRUZ A.V KM 196.5','50394050','STAR PLACE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96434','STAR PLACE SAN CRISTOBAL A.V','ENTRADA SAN CRISTOBAL GASOLINERA TEXACO','45999502','STAR PLACE SAN CRISTOBAL A.V','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96435','AUTO MARKET SAN CARLOS','KM 198.5 RUTA A LAS VERAPACES  ANTES ECOCENTRO HOLANDA','31076034','AUTO MARKET SAN CARLOS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96436','SUPER MERCADO RINO CHICHAIC','KM 207  RUTA A GUATEMALA-COBAN','49022205','SUPER MERCADO RINO CHICHAIC','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96437','FOOD MART ESTRELLAS DEL NORTE','KM 208.9 RUTA CA-14 NORTE COBAN ALTA VERAPAZ','55142964','FOOD MART ESTRELLAS DEL NORTE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96439','FOOT MART GUALOM','DIAGONAL 16  8-02 ZONA 11 COBAN A.V','79513968','FOOT MART GUALOM','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96440','VARIEDADES YANEYLI','CHAMELCO ZONA 1  A UN COSTADO DE IGLESIA CATOLICA','46552610','VARIEDADES YANEYLI','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96441','SERVICIO CON ENERGIA S.A','1RA CALLE 15-11  ZONA 1 COBAN A.V','79111118','SERVICIO CON ENERGIA S.A','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96442','CV CAFE TALPETATE','11 AV. 5-95 ZONA 6  COBAN A.V','79529820','CV CAFE TALPETATE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96443','TIENDA ELIZABETH','7 AV. 3-15 ZONA 1 BARRIO SAN JACINTO TACTIC','40268530','TIENDA ELIZABETH','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96444','MI SUPER','CANTON SAN PEDRO  SAN MIGUEL CHICAJ','42236867','MI SUPER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96445','SUPER VARIEDADES MUNDE DE A 3','2AV. ZONA 3  FRENTE A ESCUELA DE PARVULOS. RABINAL B.V','57844293','SUPER VARIEDADES MUNDE DE A 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96446','TIENDA RABINAL ACHI','3AV. 2 CALLE ZONA 3  FRENTE HOLANDESA RABINAL B.V','31889231','TIENDA RABINAL ACHI','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96447','TIENDA Y PANADERIA MISHEL','BARRIO SANTIAGO CUBULCO B.V','30486276','TIENDA Y PANADERIA MISHEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96448','MICAELA SET','BARRIO SANTIAGO CUBULCO B.V  ENTRADA AL MERCADO','0','MICAELA SET','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96449','SUPER MUNDO DE A 3','BARRIO SANTIAGO CUBULCO B.V','48052862','SUPER MUNDO DE A 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96450','TIENDA EL BUEN PRECIO','BARRIO SANTIAGO CUBULCO B.V ABAJO DE RENAP','49156688','TIENDA EL BUEN PRECIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96451','TIENDA KARI','BARRIO MAGDALENA  CUBULCO B.V','0','TIENDA KARI','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96452','TIENDA SANTA CRUZ','BARRIO MAGDALENA  CUBULCO B.V','53997093','TIENDA SANTA CRUZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96454','INVERSIONES EL BUEN PRECIO S.A','1RA CALLE 10-13  ZONA 1  COBAN A.V','79512321','INVERSIONES EL BUEN PRECIO S.A','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96455','NEGOCIOS Y SERVICIOS SAGRADA FAMILIA','7AV. 1-31 SAN PEDRO CARCHA ZONA 1','79516737','NEGOCIOS Y SERVICIOS SAGRADA FAMILIA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96456','TIENDA BELEN','ZONA 5 CHIXTUN  BARRIO SANTIAGO CARCHA A.V','48758987','TIENDA BELEN','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96457','ABARROTERIA SAN PEDRO','5 CALLE ZONA 1  A UN COSTADO DE COLEGIO DON BOSTO  CARCHA A.V','52691216','ABARROTERIA SAN PEDRO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96458','TIENDA Y COMEDOR EL BUEN SAMARITANO','CUMBRE SANTA ELENA  SAN JERONIMO B.V','47963008','TIENDA Y COMEDOR EL BUEN SAMARITANO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96459','TIENDA Y VARIEDADES FATIMA','ALDEA SAN JUAN KM 145 SALAMA B.V','57880130','TIENDA Y VARIEDADES FATIMA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96460','TIENDA SUPER MUNDO','5 CALLE 5-65 ZONA 1  BARRIO EL CENTRO SALAMA B.V','46067132','TIENDA SUPER MUNDO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96461','COMERCIAL MISHEL ','5 AV. 5-87 ZONA 1  BARRIO AGUA CALIENTE  SALAMA B.V','49491017','COMERCIAL MISHEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96462','M&L INVERSIONES Y MULTISERVICIOS S.A','KM 166.3 CARRETERA A COBAN  CALLE AL CEMENTERIO  CACERIO EL PORTESUELO PURUHLA B.V','46029739','M&L INVERSIONES Y MULTISERVICIOS S.A','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96463','TIENDA LOS ABUELOS 1','ALDEA MOCUAN  PURULHA B.V','42026023','TIENDA LOS ABUELOS 1','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96464','TIENDA ESTRELLITA','ALDEA MOCUAN  PURULHA B.V','30460841','TIENDA ESTRELLITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96465','TIENDA MARY ','ALDEA MOCUAN  PURULHA B.V','46999287','TIENDA MARY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96466','NORTH WEST','KM. 202  RUTA LAS VERAPACES','40600021','NORTH WEST','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96469','TIENDA GLORIBEL','BO. EL MIRADOR  EL ESTOR IZABAL','30271015','TIENDA GLORIBEL','1','15.530853756578768','-89.33582191910888','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'96471','TIENDA ANGELITO','INTERIOR DEL MERCADO TACTIC A.VINTERIOR DEL MERCADO TACTIC A.V','49034400','TIENDA ANGELITO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96472','DESPENSA SUPER MA','1RA CALLE 10-28  ZONA 2  COBAN A.V','79514262','DESPENSA SUPER MA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96473','TIENDA REGALO DE DIOS','CARCHA A.V','48761624','TIENDA REGALO DE DIOS','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96474','TIENDA JEFFREN','BARRIO MAGDALENA  CUBULCO B.V  FRENTE A ESCUELA URBANA','32218302','TIENDA JEFFREN','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96475','TIENDA LA NUEVA','CALLE 3 DE MAYO A LA PAR DE POLLO LANDIA  SANTA CRUZ A.V','45097680','TIENDA LA NUEVA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96476','TIENDA DAFNY','CALLE 3 DE MAYO  SANTA CRUZ  A.V','54383132','TIENDA DAFNY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96477','BETI MAAZ','CASERIO LA CRUZ 2  PURUHLA B.V','79417537','BETI MAAZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96478','MINI MARKET','BARRIO EL ARCO  TACTIC A.V','42170055','MINI MARKET','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96479','BLANQUITA','LOCAL 11  PLAZA LOS PINOS QUETZALTEPEQUE  CHIQUIMULA','42630718','BLANQUITA','1','14.6048583391721','-89.45262120486589','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'96480','FARMACIA AMERICA','3 CALLE 1-70 ZONA 3 COBAN ALTA VERAPAZ','55155024','FARMACIA AMERICA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96481','TIENDA SUPER MUNDO 2','5 CALLE 5-65 ZONA 1 BARRIO EL CENTRO SALAMA B.V','46067132','TIENDA SUPER MUNDO 2','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96482','VARIEDADES LA MOMOSTECA','5 AV. ZONA 1 BARRIO AGUA CALIENTE SALAMA B.V','31088120','VARIEDADES LA MOMOSTECA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96483','COMERCIALIZADORA TURCIOS','CALLE PRINCIPAL ZONA 0  DESPUES DEL PUENTE SAN JERONIMO B.V','0','COMERCIALIZADORA TURCIOS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96484','TIENDA RODRIGUEZ','CALLE RUTA AL CEMENTERIO RABINAL B.V','47983458','TIENDA RODRIGUEZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96485','QUICK LUNCH 24','KM 132  CUMBRE DE SANTA ELENA  SAN JERONIMO B.V','53483184','QUICK LUNCH 24','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96486','MARKET Y RESTAURANTE LOS PRIMOS','KM 151.3 RUTA A GUATEMALA  ALDEA LA UNION BARRIOS','56992056','MARKET Y RESTAURANTE LOS PRIMOS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96487','VARIEDADES MELENDEZ','ALDEA SANTA BARBARA  A LA PAR DE BANRURAL','31176467','VARIEDADES MELENDEZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96489','SERVICENTRO EL SUBIN','ALDEA EL SUBIN SAYAXCHE PETEN','31819104','SERVICENTRO EL SUBIN','1','16.639759057597935','-90.18146816697107','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'96492','TIENDA EL CAMPEON','BARRIO EL CALVARIO  TACTIC A.V','41783207','TIENDA EL CAMPEON','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96493','ABARROTES Y POLLERIA PECHO','TERMINAL DE BUSES ZONA 1  IXCAN PLAYA GRANDE','57635253','ABARROTES Y POLLERIA PECHO','1','15.988377556272525','-90.78274439501318','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'96495','TIENDA LA BENDICION','BARRIO EL CENTRO  FRENTE A IGLESIA  RABINAL B.V','45929986','TIENDA LA BENDICION','1','15.085049077184497','-90.49164631426221','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96496','TIENDA REGALO DE DIOS','ALDEA SANTA BARBARA  SAN JERONIMO  B.V','33387671','TIENDA REGALO DE DIOS','1','15.070500729423852','-90.18104846482363','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96497','MUNDO DE 3','CANTON SAN JUAN SAN MIGUEL CHICAJ B.V','0','MUNDO DE 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96498','AUTO MARKET PAIZ','CALLE PRINCIPAL  BARRIO HACIENDA LA VIRGEN','0','AUTO MARKET PAIZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96499','VARIEDADES 3 X 10','BARRIO EL CENTRO MELCHOR DE MENCOS PETEN','53157519','VARIEDADES 3 X 10','1','17.062073333333334','-89.15473166666668','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'96503','TIENDA CONSUMO DIARIO','BARRIO SANTIAGO  CUBULCO B.V  FRENTE A MERCADO','32289974','TIENDA CONSUMO DIARIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96504','TIENDA LUZ','BARRIO EL CENTRO TUCURU AV','48814036','TIENDA LUZ','1','15.294081666666667','-90.11886666666666','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'96505','ABARROTERIA DON FLAVIO','CALZADA ALVARO COLOM  ZONA 1 IXCAN EL QUICHE','40385044','ABARROTERIA DON FLAVIO','1','15.98834316363632','-90.78251212044589','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'96509','TIENDA ELENA','BARRIO SANTIAGO  CUBULCA B.V  ABAJO DEL PARQUE','33219446','TIENDA ELENA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96510','TIENDA LA NUEVA','6 AV. 2 CALLE ZONA 1  BARRIO EL CALVARIO  SALAMA B.V','48473901','TIENDA LA NUEVA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96511','TIENDA MARY','ZONA 2  SALIDA AL CHOL  RABINAL B.V','79401616','TIENDA MARY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96512','TIENDA CRISTINITA','BARRIO SAN FELIPE  ATRAS IGLESIA SAN CRISTOBAL A.V','48703657','TIENDA CRISTINITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96513','TIENDA VICTORIA','SAN FERNANDO CHAHAL','30808510','TIENDA VICTORIA','1','15.787282802352063','-89.60214771174083','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'96514','TIENDA Y PANADERIA EL SOL','CALLE PRINCIPAL CUBULCO B.V.','0','TIENDA Y PANADERIA EL SOL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96787','TIENDA YAMILETH NO. 2','BARRIO EL CENTRO DOLORES  PETEN','32241252','TIENDA YAMILETH NO. 2','1','16.514495','-89.41698666666667','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'96791','SUPER EXPRESS','TACTIC  A.V ABAJO DEL MERCADO  A LA PAR DE GUATE EMPENO','53267039','SUPER EXPRESS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96792','TIENDA MOMOSTECA','FRENTE A CANTINA EL ROBLE  BARRIO EL CENTRO TELEMAN AV','40223951','TIENDA MOMOSTECA','1','15.338566666666669','-89.74129833333333','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'96793','TIENDA SANDRITA','CALLE PRINCIPAL  ENTRADA A PURULHA B.V','57269657','TIENDA SANDRITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96794','TIENDA LA FE','EL ARCO  CALLE PRINCIPAL ADELANTE DE CAMINOS  SANTA CRUZ A.V','48258969','TIENDA LA FE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96795','SUPER MARKET KARLA YUDI','1RA CALLE  5TA AV. 1-01 ZONA 4 RABINAL B.V','56149546','SUPER MARKET KARLA YUDI','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96796','TIENDA TRES REYES','1RA CALLE  4-40 ZONA 1 RABINAL B.V','45661974','TIENDA TRES REYES','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96797','TIENDA ELIAS','1RA CALLE  2-73 ZONA 4 RABINAL B.V','41223039','TIENDA ELIAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96798','TIENDA ELY','1RA CALLE 3-19 ZONA 4 RABINAL B.V','57104252','TIENDA ELY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96799','FLORIDALMA OSORIO',' SANTA ELENA  PETEN.','54106383','FLORIDALMA OSORIO','1','16.920061008689444','-89.89397797150819','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'96801','COMERCIAL JIREH','ENTRADA A TERMINAL DE BUSES MORALES  IZABAL','40026649','COMERCIAL JIREH','1','15.43717032134226','-88.96486822462877','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'96802','TIENDA JULITOS','BARRIO SAN VICENTE LANQUIN ALTA VERAPAZ','40672012','TIENDA JULITOS','1','15.574757438719082','-89.98054601240403','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96803','TIENDA HERMELINDA','ZONA 3  BARRIO SANTA CECILIA  SANTA CRUZ A.V','49421189','TIENDA HERMELINDA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96804','TIENDA AMANDA','1RA  CALLE 1-60 ZONA 1  BARRIO AGUA CALIENTE SLAMA B.V','52679360','TIENDA AMANDA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96805','TIENDA EL EXITO','3RA. AV. 2DA CALLE ZONA 4 A UNA CUADRA DEL MP  RABINAL','30067368','TIENDA EL EXITO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96806','TIENDA CAAZ','BARRIO SANTIAGO  DEBAJO DE RENAP  CUBULCO B.V','57767130','TIENDA CAAZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96807','DEPOSITO MAGALY','INTERIOR MERCADO LA TERMINAL  COBAN A.V','55652190','DEPOSITO MAGALY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96808','LUCAS ROSALES','BARRIO SAN MIGUEL CUBULCO B.V','31948533','LUCAS ROSALES','1','15.102832442134764','-90.62849255296612','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96809','COMERCIAL DAILY ','BARRIO SANTA ANA  SAN CRISTOBAL A.V','44777254','COMERCIAL DAILY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96811','TIENDA MORALES','BARRIO EL CENTRO NARANJO LA LIBERTAD  PETEN','30008825','TIENDA MORALES','1','17.23458899001037','-90.80159151315439','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'96815','TIENDA MALANY','BARRIO SANTIAGO  CUBULCO B.V','45215980','TIENDA MALANY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96816','TIENDA CRP','BARRIO MAGDALENA  CUBULCO B.V','47962305','TIENDA CRP','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96817','TIENDA EL MANANTIAL','BARRIO EL CENTRO ZONA 1  RABINAL B.V','59059864','TIENDA EL MANANTIAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96818','TIENDA EL AMIGO','BARRIO SAN MIGUEL  CALLE PRINCIPAL  CUBULCO B.V','0','TIENDA EL AMIGO','1','15.102156427093112','-90.62906712834076','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96819','TIENDA PERLA DE OCCIDENTE NO. 1','CALLE PRINCIPAL RIO DULCE LIVINGSTON  IZABAL','79305183','TIENDA PERLA DE OCCIDENTE NO. 1','1','15.659398157637797','-89.00365832577342','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'96820','DISTRIBUIDORA ELIZA','3AV. 4-17 ZONA 4 COBAN A.V','43844774','DISTRIBUIDORA ELIZA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96821','TIENDA EL QUETZAL','BARRIO MAGDALENA  CALLE PRINCIPAL  CUBULCO B.V','45696790','TIENDA EL QUETZAL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96822','TIENDA WILMER','SAN MIGUEL CHICAJ','58187313','TIENDA WILMER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96823','TIENDA EMANUEL','BARRIO SAN JUAN CUBULCO B.V','30402067','TIENDA EMANUEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96824','TIENDA Y DEPOSITO PATY','6TA. AV. 6.26 ZONA 1  SALAMA B.V','34954241','TIENDA Y DEPOSITO PATY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96827','EL MUNDO DE LOS DE A 3','01 AV. 03-28 ZONA 1 COBAN A.V','40425810','EL MUNDO DE LOS DE A 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96829','ABARROTERIA LA AMISTAD ','CALLEJON MUELLE VIEJO RIO DULCE LIVINGSTON IZABAL','49446420','ABARROTERIA LA AMISTAD','1','15.65966977196869','-89.00309812840942','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'96830','SUPER MARKET DON ARTURO','KM. 171 PANTIN  PURULHA B.V','40600021','SUPER MARKET DON ARTURO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96831','TIENDA CHINITA','KM 203 ALDEA TOMTEM  COBAN A.V','49669121','TIENDA CHINITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96832','TIENDA MARISOL','BARRIO MAGDALENA  ZONA 4  ARRIBA ESCUELA URBANA  CUBULCO B.V','30640723','TIENDA MARISOL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96833','TIENDA TITO','2DA. CALLE 8-31  ZONA 5 CARCHA A.V','44952590','TIENDA TITO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96834','K-Z COCA COLA','BARRIO MAGDALENA  JUZGADO DE PAZ  CUBULCO B.V','40909790','K-Z COCA COLA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'96835','TIENDA MARY','BARRIO SANTIAGO  ZONA 1  CARCHA A.V','34545622','TIENDA MARY','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'96836','TIENDA EL AMIGO','3RA. CALLE ZONA 1  SALAMA B.V','34936640','TIENDA EL AMIGO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97883','ABARROTERIA ELIZABETH','CALLE PRINCIPAL  MERCADO MUNICIPAL FRAY','32518429','ABARROTERIA ELIZABETH','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'97884','DISTRIBUIDORA GALBANO','ZONA 1  BARRIO EL CENTRO  SALAMA B.V','79401726','DISTRIBUIDORA GALBANO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97885','TIENDA DANIEL','ALDEA CHIYUC  SAN CRISTOBAL A.V','46174630','TIENDA DANIEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97886','STAR PLACE SAN CRISTOBAL A.V','ENTRADA SAN CRISTOBAL GASOLINERA TEXACO','45999502','STAR PLACE SAN CRISTOBAL A.V','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97892','TIENDA VICTORIA','ZONA 1  TACTIC A.V  A LA PAR DE PENSION CENTRAL','45750816','TIENDA VICTORIA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97893','VARIEDADES Y DETALLES KIARA','1RA. AV. 2DA CALLE ZONA 1  FRENTE TIENDA EL EXITO RABINAL B.V','48117467','VARIEDADES Y DETALLES KIARA','1','15.084355256806395','-90.49266305324075','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97894','SUCURSAL DOMINGA','BARRIO EL CENTRO ZONA 1  LA TINTA','30009438','SUCURSAL DOMINGA','1','15.311053333333332','-89.88498166666668','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'97896','TIENDA GETSEMANY','BARRIO MAGDALENA  CALLE PRINCIPAL CUBULCO B.V','49123386','TIENDA GETSEMANY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97897','DISTRIBUIDORA NICOLL','6 AV. 2 CALLE ZONA 1  BARRIO EL CALVARIO SALAMA B.V','42245974','DISTRIBUIDORA NICOLL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97899','MINI MARKETH MISHELL','EL CHAL FRENTE A LA GASOLINERA','30069949','MINI MARKETH MISHELL','1','16.641773333333333','-89.64492833333334','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'97900','MINI BODEGA NUEVO AMANECER','ALDEA CUBILGUITZ  COBAN A.V','46308454','MINI BODEGA NUEVO AMANECER','1','15.647848279849676','-90.42755751297598','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97901','ABARROTERIA Y POLLERIA MAGDA','ALDEA CUBILGUITZ  COBAN A.V','52000205','ABARROTERIA Y POLLERIA MAGDA','1','15.667745711518423','-90.42945404863809','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97902','TIENDA SANTA CRUZ 3','BARRIO SANTIAGO  CUBULCO B.V','58913637','TIENDA SANTA CRUZ 3','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97903','TIENDA LA BENDICION','FRENTE PARADA DE BUSES CAMPUR  CARCHA A.V','58826270','TIENDA LA BENDICION','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97906','DEPOSITO CAMPESINO 2','LA UNION  ZACAPA','41781897','DEPOSITO CAMPESINO 2','1','14.965865301860058','-89.29218589256085','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'97907','TIENDA DIVINO MAESTRO','ZONA 3  FRENTE HOLANDESA  RABINAL B.V','0','TIENDA DIVINO MAESTRO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97909','LUNITAS  SOCIEDAD ANONIMA','5TA. CALLE 11-35 ZONA 1  SAN PEDRO CARCHA','79515493','LUNITAS  SOCIEDAD ANONIMA','1','15.47620883548749','-90.30738721420586','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97911','TIENDAS DE ORIENTE S A','COLONIA TIKAL ZONA 4 ESQUIPULAS  CHIQUIMULA','53273170','TIENDAS DE ORIENTE S A','1','14.562911644435673','-89.35255706551045','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'97912','SURTIDORA SHALOM','8AV. CALLE 0-10 ZONA 8  COBAN A.V','41712537','SURTIDORA SHALOM','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97914','COMERCIAL BETHEL','MERCADO MUNICIPAL DE GUALAN  ZACAPA','31110255','COMERCIAL BETHEL','1','15.113205029972745','-89.36183191734148','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'97916','ABARROTERIA LA BENDICION.','LAS CRUCES BARRIO EL CENTRO','46777501','ABARROTERIA LA BENDICION.','1','16.659378119722266','-90.29043252458877','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'97919','DISTRIUIDORA EL AHORRO','A UN COSTADO DE LA PASARELA LOS AMATES  IZABAL','79473429','DISTRIUIDORA EL AHORRO','1','15.437079839287145','-88.96487510213993','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'91745','ABARROTERIA THELMITA','4 CALLE 8-42 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','79516569','MANUEL CUCUL','1','15.477858840616985','-90.3093786191073','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97922','TIENDA COBANERA SUCURSAL','ZONA 0  MERCADO TEMPORAL PB LOCAL DE ZONA 0  SALMA B.V','59302742','TIENDA COBANERA SUCURSAL','1','15.102328768492272','-90.32079375126708','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97923','EL AHORRO FAMILIAR','FRENTE MERCADO MUNICIPAL  CUBULCO B.V','32204112','EL AHORRO FAMILIAR','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97924','MEGA SUPER 2.99','CALLE PRINCIPAL FRENTE AL MERCADO ZONA 1  SALAMA B.V','58007128','MEGA SUPER 2.99','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97925','DISTRIBUIDORA DEL PUEBLO NO.1','BO. EL CENTRO  SAN DIEGO  ZACAPA','51942755','DISTRIBUIDORA DEL PUEBLO NO.1','1','14.78534491503345','-90.19935550150106','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'97926','MULTINEGOCIOS LA ESPERANZA','CALLEJON DEL MUELLE  ALDEA RIO DULCE  LIVINGSTON','0','MULTINEGOCIOS LA ESPERANZA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'97927','TIENDA LA NUEVA','BO. EL CENTRO  EL RANCHO','51510684','TIENDA LA NUEVA','1','14.916545682158741','-90.00724541532688','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'97928','ABARROTES Y MAS DE TODO UN POCO','BARRIO SANTA ANA  SAN CRISTOBAL A.V','30207294','ABARROTES Y MAS DE TODO UN POCO','1','15.366560992654852','-90.47802175777773','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97929','TIENDA YAIR II','0 AVENIDA ZONA 4 0-13  SAN CRISTOBAL A.V','49917198','TIENDA YAIR II','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97930','DEPOSITO SAN ANTONIO','INTERIOR MERCADO MUNICIPAL CHIQUIMULA','45780024','DEPOSITO SAN ANTONIO','1','14.800251495648057','-89.54476472788873','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'97931','TIENDA VERONICA','BARRIO SAN ANTONIO TAMAHU A.V','58913694','TIENDA VERONICA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97932','TIENDA MAGDA','CALLE PRINCIPAL FRENTE AL PARQUE PURULHA B.V','50620670','TIENDA MAGDA','1','15.23812796416514','-90.23578851020505','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97934','DISTRIBUIDORA DE CONSUMO','BARRIO MAGDALENA  CUBULCO BAJA VERAPAZ','30600822','DISTRIBUIDORA DE CONSUMO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97935','TIENDA XELAJU','A UN COSTADO TIENDA ELENITA SENAHU A.V','44779172','TIENDA XELAJU','1','15.311803333333334','-89.88361000000002','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'97940','MINI ABAROTERIA RUTY NO. 2','BARRIO EL CENTRO SAN CRISTOBAL A.V','40319038','MINI ABAROTERIA RUTY NO. 2','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97941','TIENDA ALFA Y OMEGA','BARRIO MAGDALENA  CALLE PRINCIPAL CUBULCO  A LA PAR DE C.R.P','53570499','TIENDA ALFA Y OMEGA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97943','MINI ABARROTERIA EL TIO','BARRIO EL CALVARIO  ZONA 2  TACTIC A.V','53280685','MINI ABARROTERIA EL TIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97944','MINI DEPOSITO ARACELY','CENTRO MAYOREO TACTIC A.V','31474333','MINI DEPOSITO ARACELY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97945','TIENDA SAN BARTOLO','CANTON SAN JUAN  SAN MIGUEL CHICAJ  B.V','0','TIENDA SAN BARTOLO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97946','TIENDA KIM','BARRIO SAN SEBASTIAN ZONA 2  SAN CRISTOBAL A.V','46515761','TIENDA KIM','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97947','TIENDA LA FAVORITA','BARRIO SANTIAGO  CUBULCO B.V','49002616','TIENDA LA FAVORITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97948','TIENDA SANTA RITA','BARRIO SAN PEDRO  CAHABON A.V','32859315','TIENDA SANTA RITA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97969','ABARROTERIA EMANUEL','GUALAN  ZACAPA','31098181','ABARROTERIA EMANUEL','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'97971','TIENDA GALILEA','BARRIO SAN JACINTO TACTIC A.V','56367492','TIENDA GALILEA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97972','ABARROTES SAN SEBASTIAN','3RA. AV. 2DA. CALLE ZONA 3 BARRIO SAN SEBASTIAN  SAN CRISTOBAL','51586682','ABARROTES SAN SEBASTIAN','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97973','TIENDA LA ECONOMICA','CALLEJON DEL MERCADO  RIO DULCE  LIVINGSTON  IZABAL','79305221','TIENDA LA ECONOMICA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'97974','DISTRIBUIDORA LA ESPERANZA','CALLE PRINCIPAL A LA PAR DEL SALON COMUNAL PURUHLA B.V','45550118','DISTRIBUIDORA LA ESPERANZA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97975','ABARROTERIA K AWA HUGO','CALLE PRINCIPAL CAMPUR','40704864','ABARROTERIA K AWA HUGO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97976','TIENDA EL CAMPESINO','BARRIO SAN JUAN  ZONA 4  CUBULCO B.V','45034664','TIENDA EL CAMPESINO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97977','DESPENSA MINERVA','3RA. CALLE Y 4TA. AVE QUEZALTEPEQUE  CHIQUIMULA','79440596','DESPENSA MINERVA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'97980','TIENDA LA VENTANITA','BARRIO SAN ANTONIO  TAMAHU A.V  DEBAJO DE BANRURAL','52092945','TIENDA LA VENTANITA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'97981','DEPOSITO ASCENCIO','6TA. AV  3-03 ZONA 1  SALAMA B.V','31880977','DEPOSITO ASCENCIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98110','DISTRIBUIDORA LAS MARIAS','COBAN ZONA 12 EL ESFUERZO 2','57087210','DISTRIBUIDORA LAS MARIAS','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98111','TIENDA EBENEZER','SAN LUIS  PETEN','0','TIENDA EBENEZER','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'98112','TIENDA PATY','SAN LUIS  PETEN','0','TIENDA PATY','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'98131','TIENDA DE CONSUMO ISABEL','DIAGONAL 16 8-02 ZONA 11 COBAN A.V','50657291','TIENDA DE CONSUMO ISABEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98135','TIENDA Y VARIEDADES ELANY','5 AVENIDA 5-62 ZONA 1 SALAMA B.V','45058509','TIENDA Y VARIEDADES ELANY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98136','TIENDA EMANUEL','BARRIO SAN MIGUEL CUBULCO B.V','30402067','TIENDA EMANUEL','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98137','TIENDA MARY','BARRIO EL CENTRO SAN FERNANDO CHAHAL A.V','50032279','TIENDA MARY','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'98138','TIENDA LA FE','BARRIO EL CENTRO SAN FERNANDO CHAHAL A.V','51961078','TIENDA LA FE','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'98139','TIENDA YULISA','CALLE PRINCIPAL FRAY BARTOLOME DE LAS CASAS','51518429','TIENDA YULISA','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'98141','EL MUNDO DE LOS 3 QUETZALES','3AV. 10-19 Z.1 ESQUIPULAS','30531843','EL MUNDO DE LOS 3 QUETZALES','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'98257','TIENDA LA BENDICION','BARRIO EL CENTRO  FRENTE A IGLESIA RABINAL B.V','0','TIENDA LA BENDICION','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98287','DEPOSITO EL AMANECER','4CALLE 3AV. ZONA 2 RABINAL B.V','55170708','DEPOSITO EL AMANECER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98288','COMERCIAL LOS RISCOS','GUALAN  ZACAPA','30527365','COMERCIAL LOS RISCOS','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'98295','TIENDA FLOR DEL QUICHE','GUALAN  ZACAPA','50453971','TIENDA FLOR DEL QUICHE','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'98299','TIENDA GABRIEL','BARRIO EL CENTRO SAN FERNANDO CHAHAL','49799125','TIENDA GABRIEL','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'98300','DISTRIBUIDORA LA ESPERANZA','CASERIO EL ESTORAQUE  SALAMA BAJA VERAPAZ','41147377','DISTRIBUIDORA LA ESPERANZA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98301','TIENDA FERNANDITO','BARRIO EL CENTRO  RABINAL BAJA VERAPAZ','47495639','TIENDA FERNANDITO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98321','SUCURSAL FARMACIA Y SUPERMERCADO AMERICA','3ERA. CALLE 7-21  ZONA 1, CHIQUIMULA','79420856','SUCURSAL FARMACIA Y SUPERMERCADO AMERICA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'98323','TIENDA PRIMAVERA','LOS JOCOTES SAN JERONIMO A LA PAR DE SUPER MARKET LAS CANAS','46235000','TIENDA PRIMAVERA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98324','DISTRIBUIDORA EL CAMPEON','6AV. 3-11 ZONA 3 COBAN A.V','5421469379513380','DISTRIBUIDORA EL CAMPEON','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98326','PIÑATERIA MI PEQUEÑO MUNDO MAGICO','FRENTE A GASOLINERA TEXACO SANTA ELENA PETEN','47901264','PIÑATERIA MI PEQUEÑO MUNDO MAGICO','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'98327','TIENDA GLADYS','CASERIO PEQUIXUL CAHABON A.V','48444254','TIENDA GLADYS','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98328','TIENDA JULIA','BARRIO CANIHAB ZONA 1 SAN PEDRO CARCHA A.V','45144086','TIENDA JULIA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98329','TIENDA ANAHI','BARRIO SAN VICENTE LANQUIN A.V','48114593','TIENDA ANAHI','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98330','TIENDA SEGUNDA BRIGADA DE INFANTERIA','CALZADA MIGUEL GARCIA GRANADOS  ZACAPA  ZACAPA','45609494','TIENDA SEGUNDA BRIGADA DE INFANTERIA','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'98332','COMERCIAL SAN PEDRO','11 AV. 7 CALLE ZONA 1  BARRIO SAN PEDRO CARCHA A.V','58616473','COMERCIAL SAN PEDRO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98333','TIENDA JOSSELINE','ALDEA TUCANJA SAN CRISTOBAL A.V','58058363','TIENDA JOSSELINE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98356','TIENDA LA BARATA','BARRIO EL CENTRO  ENTRE RIOS PUERTO BARRIOS','31312558','TIENDA LA BARATA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'98357','MINI DESPENSA VIDAL','SAN DIEGO ZACAPA','30214528','MINI DESPENSA VIDAL','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'98358','DISTRIBUIDORA SHADAAI','BARRIO EL CENTRO CHISEC A.V','45224716','DISTRIBUIDORA SHADAAI','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98359','DISTRIBUIDORA EBEN-EZER','SALAMA B.V.  5TA AV. ZONA 1  A LA PAR DE TIENDA COBANEREA','40270765','DISTRIBUIDORA EBEN-EZER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98360','TIENDA KANDI','BARRIO EL CENTRO TUCURU, SALIDA A LA TINTA A.V','30659333','TIENDA KANDI','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'98525','DEPOSITO EL PACIFICO','7A. 6-65 ZONA 1  RABINAL B.V','59381981','DEPOSITO EL PACIFICO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98526','TIENDA REYES','COLONIA EL NARANJO  CUBULCO B.V','33851648','TIENDA REYES','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98527','TIENDA GLENDA','ALDEA CHIYUC  SAN CRISTOBAL A.V','46194809','TIENDA GLENDA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98528','COMERCIAL DINA S','DINA VIVIANA MORAN GARCIA','30125116','COMERCIAL DINA S','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98602','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','BARRIO LAS FLORES  GUALAN  ZACAPA','79426698','TIENDAS DE ORIENTE  SOCIEDAD ANONIMA','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'98689','TIENDA MERCY','BARRIO EL CENTRO MELCHOR DE MENCOS','32326673','TIENDA MERCY','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'98690','COMERCIAL SURTI AHORRO','MERCADO SANTO TOMAS DE CASTILLA  PUERTO BARRIOS  IZABAL','30003349','COMERCIAL SURTI AHORRO','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'98743','TIENDA EL BUEN PRECIO','BARRIO EL CENTRO  PURULHA B.V','33560405','TIENDA EL BUEN PRECIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'98898','TIENDA VALENY','BARRIO LA LINEA  TELEMAN A.V','37228888','TIENDA VALENY','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'98899','TIENDA ANDREA','ALDEA SAMOCOCH  CHISEC A.V','30443648','TIENDA ANDREA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98900','PIÑATERIA CARA LINDA','3RA CALLE 11-70 ZONA 1 CHIQUIMULA','52020444','PIÑATERIA CARA LINDA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'98903','DEPOSITO CHICHOC','CALLE AL CALVARIO ZONA 3 SAN CRISTOBAL A.V','57771289','DEPOSITO CHICHOC','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99104','DISTRIBUIDORA Y SUPERMERCADO GALBANO','5TA. CALLE 6-39 ZONA 1  BARRIO EL CENTRO  SALAMA B.V','79401726','DISTRIBUIDORA Y SUPERMERCADO GALBANO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99105','TIENDA PACIFICO','7 AVENIDA 6-65 ZONA 1  RABINAL B.V','42363988','TIENDA PACIFICO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99137','TIENDA LAS FLORES','BARRIO SAN LORENZO  JOCOTAN  CHIQUIMULA','46875572','TIENDA LAS FLORES','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99294','ABARROTERIA LA VENCEDORA','BARRIO EL CENTRO  FRENTE A CANCHA SINTETICA CHISEC A.V','54641538','ABARROTERIA LA VENCEDORA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'99435','COMERCIAL A Y M','INTERIOR MERCADO NO. 1  MORALES  IZABAL','0','COMERCIAL A Y M','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'99436','COMERCIAL LUCKY','MORALES  IZABAL','57462926','COMERCIAL LUCKY','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'99497','TIENDA LA NUEVA','BARRIO EL CALVARIO  JOCOTAN  CHIQUIMULA','57577464','TIENDA LA NUEVA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99498','COMERCIAL GENESIS','BARRIO SAN SEBASTIAN  JOCOTAN  CHIQUIMULA','49466800','COMERCIAL GENESIS','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99499','MULTISERVICIOS LA DIVINA GRACIA SOCIEDAD ANONIMA','5TA. CALLE 11-33  ZONA 1 SAN PEDRO CARCHA A.V','48436271','MULTISERVICIOS LA DIVINA GRACIA SOCIEDAD ANONIMA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'99500','MULTISERVICIOS LA DIVINA GRACIA SOCIEDAD ANONIMA','5TA. CALLE 11-33  ZONA 1 SAN PEDRO CARCHA A.V','48436271','MULTISERVICIOS LA DIVINA GRACIA SOCIEDAD ANONIMA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'99501','TIENDA Y PANADERIA LOS TRES ANGEL','BARRIO LA PROVIDENCIA COSTADO HOTEL JUN KABAL SENAHU','32538943','TIENDA Y PANADERIA LOS TRES ANGEL','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99502','DISTRIBUICIONES LA INDIA SOCIEDAD ANONIMA','8AV. 2-47 ZONA 1 CARCHA','30705225','DISTRIBUICIONES LA INDIA SOCIEDAD ANONIMA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'99503','TIENDA ARCA DE NOE ','SAN LUIS  PETEN ','45076743','TIENDA ARCA DE NOE','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'99504','TIENDA SHALOM','BARRIO EL CENTRO MELCHOR DE MENCOS  PETEN','46943338','TIENDA SHALOM','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'99505','LUIS ALBERTO CARABEO CENTENO','BARRIO LAS FLORES SAN BENITO  PETEN','49973294','LUIS ALBERTO CARABEO CENTENO','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'99624','TIENDA POLOCHIC','BARRIO LA LINEA TELEMAN FRENTE AUTOBANCO BANRURAL','30129823','TIENDA POLOCHIC','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99625','TIENDA SAN FRANCISCO','TUCURU A.V  FRENTE A LA MUNICIPALIDAD','50596177','TIENDA SAN FRANCISCO','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99641','TIENDA MARY','BARRIO EL CENTRO TUCURU A.V, A UN COSTADO DE TIENDA FLOR','53345488','TIENDA MARY','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99642','TIENDA POCOMCHI','BARRIO LA LINEA TELEMAN    ','47872134','TIENDA POCOMCHI','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99643','TIENDA LA BENDICION','ZONA 4 DEBAJO DE DESPENSA FAMILIAR  SANARATE  EL PROGRESO','31409537','TIENDA LA BENDICION','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'99645','HUGO CRUZ MONROY','LOCAL NO. 14  MERCADO MERCATEPEQUE  QUETZALTEPEQUE  CHIQUIMULA','46912003','HUGO CRUZ MONROY','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99646','SUPER COMERCIAL DE A 3','CALLE PRINCIPAL  A UN COSTADO DE FERRETERIA GABY  CONCEPCION LAS MINAS ','46873551','SUPER COMERCIAL DE A 3','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99647','TIENDA YANCY','CALLE PRINCIPAL  CONCEPCION LAS MINAS  CHIQUIMULA','48157102','TIENDA YANCY','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99968','COMERCIAL EL DIVINO MAESTRO','INTERIOR MERCADO  CHISEC A.V','50487501','COMERCIAL EL DIVINO MAESTRO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'99969','ABARROTES EL BARATON','ALDEA CANAAN KM. 297 RUTA A CHISEC A FRAY','48069660','ABARROTES EL BARATON','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'99970','SUPER TIENDA MENENDEZ','ALDEA SANTA BARBARA  SAN JERONIMO B.V','48433344','SUPER TIENDA MENENDEZ','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99971','STAR PLACE','KM. 138 RUTA A COBAN  ALDEA SANTA BARBARA  SAN JERONIMO B.V','33584567','STAR PLACE','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99972','TIENDA AURORITA','BARRIO LA LINEA ATRAS DE POLLO LANDIA  TELEMAN A.V','40830910','TIENDA AURORITA','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'99974','TIENDA ALFREDO','INTERIOR DEL MERCADO MUNICIPAL  CHIQUIMULA CHIQUIMULA','31910706','TIENDA ALFREDO','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99975','DISTRIBUIDORA EL VOLCAN','KM 225 RUTA RN 18  ZONA 6 RESIDENCIALES VILLA REAL  ESQUIPULAS  CHIQUIMULA','56961626','DISTRIBUIDORA EL VOLCAN','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'99976','DEPOSITO MARYFER','BARRIO SAN FELIPE  SAN CRISTOBAL A.V','53167308','DEPOSITO MARYFER','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'99977','TIENDA FLAVIO','TERMINAL DE BUSES IXCAN PLAYA GRANDE','55808657','TIENDA FLAVIO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'99978','TIENDA LA SURTIDORA','ALDEA LA ESTANCIA DE LA VIRGEN  SAN CRISTOBAL AC  EL PROGRESO','31658104','TIENDA LA SURTIDORA','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'99981','TIENDA LA ECONOMICA','BO. EL CENTRO  FRENTE HOTEL CALLE REAL  EL ESTOR','47804417','TIENDA LA ECONOMICA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'99982','CURIOSIDADES YINO #2','BARRIO EL CENTRO MELCHOR DE MENCOS  PETEN','53507268','CURIOSIDADES YINO #2','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'100419','ABARROTERIA MARY','ENFRENTE A GASOLINERA SHELL  SAN BENITO  PETEN','30072778','ABARROTERIA MARY','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100420','TIENDA ANY','INTERIOR PARQUEO CANIHAB CARCHA A.V','30218140','TIENDA ANY','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100421','TIENDA LOS POLLITOS','BARRIO EL CENTRO CHISEC A.V','31471212','TIENDA LOS POLLITOS','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100422','TIENDA FABY','INTERIOR PARQUEO CANIHAB CARCHA A.V','30337206','TIENDA FABY','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100423','TIENDA EL ROSARIO','TERMINAL DE BUSES PLAYA GRANDE IXCAN','30851340','TIENDA EL ROSARIO','1','0','0','220');
INSERT INTO Clientes_impulsadoras VALUES(0,'100424','FOOD MART GUALON','DIAGONAL 16 8-02 ZONA 11 COBAN A.V','79513968','FOOD MART GUALON','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100526','TIENDA GUTIERREZ','BARRIO EL CENTRO  JOCOTAN  CHIQUIMULA','40917723','TIENDA GUTIERREZ','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'100527','DEPOSITO JOSUE','CALLE PRINCIPAL BARRIO SAN MARCOS  EL ESTOR  IZABAL','30928901','DEPOSITO JOSUE','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100528','DESPENSA YOLY','CALLE PRINCIPAL CONCEPCION LAS MINAS  CHIQUIMULA','50137223','DESPENSA YOLY','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'100529','MINI MARKET','1RA. CALLE 3RA. AV. ZONA 4 RABINAL  B.V','31192618','MINI MARKET','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100530','TIENDA ROLY','BARRIO LA VEGA  SENAHU A.V','31599675','TIENDA ROLY','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100624','TIENDA LA CONFIANZA','BARRIO EL CENTRO TELEMAN  FRENTE AL BANTRAB  PANZOS  A.V.','561116941','TIENDA LA CONFIANZA','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100642','TIENDA LA MOMOSTECA','A UN COSTADO DE LA TERMINAL DE BUSES  EL ESTOR','0','TIENDA LA MOMOSTECA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100643','MUNDO DE A 3','BARRIO EL CENTRO LA UNION  ZACAPA','30527365','MUNDO DE A 3','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'100700','COMERCIAL JOSUE','BARRIO EL CENTRO FRENTE A HOTEL CALLE REAL EL ESTOR','52077967','COMERCIAL JOSUE','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100701','TIENDA LA ESPERANZA','ALDEA CHICHIPATE EL ESTOR IZABAL','31479960','TIENDA LA ESPERANZA','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100702','TIENDA DABIAN # 2','5AV. 3-98 ZONA 2 QUETZALTEPEQUE','79440299','TIENDA DABIAN # 2','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'100810','TIENDA FABY','CALLE  PRINCIPAL  FRENTE A POLICIA MUNICIPAL  TELEMAN','45450250','TIENDA FABY','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100811','NAMVIS  YERALDI LIMA RAMOS','ALDEA EL SUBIN LA LIBERTAD PETEN.','53372256','NAMVIS  YERALDI LIMA RAMOS','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100812','ABARROTERIA LA ECONOMICA','MERCADO DE SANTA ELENA CALLE DE TELGUA','32646048','ABARROTERIA LA ECONOMICA','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100813','ELISEO ESCOBAR GUERRA','ALDEA GUARANJA  GUALAN  ZACAPA','40619849','ELISEO ESCOBAR GUERRA','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'100814','DEPOSITO DE CONSUMO DIARIO SHALOM','2DA. AVE. 20NA 4  SANTA CRUZ VERAPAZ  ALTA VERAPAZ','45005088','DEPOSITO DE CONSUMO DIARIO SHALOM','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100815','DISTRIBUIDORA LUX','8-41 ZONA 4 TACTIC  ALTA VERAPAZ','31370736','DISTRIBUIDORA LUX','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100816','SUPER TIENDA GABY','5TA. CALLE  04-44 ZONA 1  SALAMA BAJA VERAPAZ','45314854','SUPER TIENDA GABY','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100817','DISTRIBUIDORA MILLENIUM','BARRIO SANTA ANA  SAN JUAN CHAMELCO  ALTA VERAPAZ','30337091','DISTRIBUIDORA MILLENIUM','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100818','DISTRIBUIDORA FREDDY','ALDEA CHULAC  PANZOS  ALTA VERAPAZ','40437256','DISTRIBUIDORA FREDDY','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100819','TIENDA GLORIA','BARRIO ESCUELA INTEGRAL  TELEMAN  ALTA VERAPAZ','0','TIENDA GLORIA','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100820','GRUPO INTEGRADO DOS HERMANOS S.A.','2A. CALLE 8-31 ZONA 5  BARRIO CHIBUJBU  CARCHA  A.V.','44952590','GRUPO INTEGRADO DOS HERMANOS S.A.','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100821','DEPOSITO LA BENDICION','1AV 3-28 ZONA 4 COBAN A.V','52021227','DEPOSITO LA BENDICION','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100822','ISRAEL NUFIO','GUALAN ZACAPA','79332948','ISRAEL NUFIO','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'100823','TIENDA DON CHICO','7AV 3-75 ZONA 5 CARCHA  BARRIO CHIXTUN  CARCHA  A.V.','31524017','TIENDA DON CHICO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100824','TIENDA FLORY','BARRIO SAN PEDRO CAHABON  A.V.','51774097','TIENDA FLORY','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'100906','EVER GARCIA','BARRIO EL PORVENIR  SAN BENITO  PETEN.','50153025','EVER GARCIA','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100907','NOE PERPUAC','SAN LUIS  PETEN','59956177','NOE PERPUAC','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'100908','YANIRA FRANCO DE LOPEZ','LAS POZAS  SAYAXCHE  PETEN','40561885','YANIRA FRANCO DE LOPEZ','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100909','BALTAZAR JOJ','BARRIO EL PORVENIR  SAYAXCHE  PETEN.','45921033','BALTAZAR JOJ','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100910','INGRID HERNANDEZ SANCHEZ','BARRRIO EL CENTRO  POPTUN PETEN','0','INGRID HERNANDEZ SANCHEZ','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'100911','BRAYAN ALEXANDER MARTINEZ VELASQUEZ','BARRIO EL REDENTOR   SAN BENITO  PETEN.','48018115','BRAYAN ALEXANDER MARTINEZ VELASQUEZ','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'100913','TIENDA FLOR PATZITECA','5TA. AVE. ZONA 6 COMUNIDAD SATIZ  COBAN A.V.','30078161','TIENDA FLOR PATZITECA','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100914','DISTRIBUIDORA SAN ANTONIO','BARRIO EL CARPINTERO PURULHA B.V.','42299959','DISTRIBUIDORA SAN ANTONIO','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100915','JUAN FRANCISCO MUS MORAN','0 CALLE 4-09 Z.4  BARRIO SAN FELIPE  SANTRA CRUZ VERAPAZ  A.V.','30623361','JUAN FRANCISCO MUS MORAN','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100916','TIENDA NOEMI','BARIO EL CENTRO  SANTA CRUZ VERAPAZ  A.V.','46880088','TIENDA NOEMI','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'100917','MUNDO DE A 3','6TA. AV. ENTRE  8VA. Y 9NA. CALLE PUERTO BARRIOS IZABAL','33006497','MUNDO DE A 3','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100918','TIENDA LAMAR','BARRIO EL CENTRO  A COSTADO DESPENSA FAMILIAR  EL ESTOR','47980360','TIENDA LAMAR','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'100966','TIENDA LOS HERMANOS','15 AVENIDA 7-36 ZONA 1  ZACAPA ','77966588','TIENDA LOS HERMANOS','1','0','0','365');
INSERT INTO Clientes_impulsadoras VALUES(0,'100967','JOSELIN MENENDEZ','BARRIO BOULEVAR SANTA ELENA   FLORES PETEN','37232183','JOSELIN MENENDEZ','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100968','INVERSIONES Y MULTINEGOCIOS EL ARCA S.A.','BARRIO EL CENTRO  SAN ANDRES','79262132','INVERSIONES Y MULTINEGOCIOS EL ARCA S.A.','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'100969','TIENDA YUBER','BARRIO EL CENTRO  TUCURU','0','TIENDA YUBER','1','0','0','221');
INSERT INTO Clientes_impulsadoras VALUES(0,'100970','MISCELANEA RONALD','COMUNIDAD SATIZ  ZONA 6 COBAN A.V.','32030315','MISCELANEA RONALD','1','0','0','218');
INSERT INTO Clientes_impulsadoras VALUES(0,'101018','DEPOSITO NATALIA','MERCADO TERMINAL MERCATEPEQUE  LOCAL 13  QUETZALTEPEQUE','57367107','DEPOSITO NATALIA','1','0','0','366');
INSERT INTO Clientes_impulsadoras VALUES(0,'101019','INVERSIONES Y MULTINEGOCIOS EL ARCA S.A.',' SANTA ELENA ZONA 1  FLORES  PETEN','30788756','INVERSIONES Y MULTINEGOCIOS EL ARCA S.A.','1','0','0','314');
INSERT INTO Clientes_impulsadoras VALUES(0,'101020','MUNDO DE 3 EL OASIS','CALLE PRINCIPAL A LA PAR DE PASTELERIA LAS DELICIAS EL CHAL  PETEN','48115217','MUNDO DE 3 EL OASIS','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'101021','ELFIDO ESCALANTE GONZALES',' SANTA ELENA  FLORES PETEN','30147908','ELFIDO ESCALANTE GONZALES','1','0','0','313');
INSERT INTO Clientes_impulsadoras VALUES(0,'101090','CERERIA Y ESPECIAS LA FLOR DE OCCIDENTE','CALLE PRINCIPAL MERCADO MUNICIPAL LOS AMATES IZABAL','57511256','CERERIA Y ESPECIAS LA FLOR DE OCCIDENTE','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'101091','DISTRIBUIDORA EL MANATIAL','COSTADO DE LA IGLESIA CATOLICA  FRENTRE RESPUESTOS IKER  CHISEC','53069060','DISTRIBUIDORA EL MANATIAL','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'101092','TIENDA ANITA','CALLE PRINCIPAL CAMPUR  CARCHA  A.V.','57244140','TIENDA ANITA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'101093','COMERCIALIZADORA LA BENDICION','CALLE PRINCIPAL CAMPUR  CARCHA  A.V.','0','COMERCIALIZADORA LA BENDICION','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91387','TIENDA LA MOMOSTECA','A UN COSTADO DE LA TERMINAL DE BUSES  EL ESTOR','0','HERMINIO TZUNUX','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92971','TIENDA LA IPALTECA','BARRIO EL CENTRO  ENTRE RIOS PUERTO BARRIOS','33341422','HERMINIA PEREZ','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93084','TIENDA Y PANADERIA LA ECONOMICA','BO. EL CENTRO  FRENTE HOTEL CALLE REAL  EL ESTOR','44869426','ANIBAL CASTRO','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93172','COMERCIAL DULCE N.2','BO. EL CENTRO ENTRE RIOS  PUERTO BARRIOS','44779960','TORIBIO ANTONIO SOLIS ARIAS','1','0','0','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93029','DISTRIBUIDORA KUA JUANES S.A','4 CALLE 3-52 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','79515622','KUA JUANES SOCIEDAD ANONIMA','1','15.478244999859031','-90.30937983275139','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'94563','MINI COMERCIAL DONAL','10 AVENIDA 10-01 ZONA 1 SAN PEDRO CARCHA ALTA VERAPAZ','59193565','CESAR WALDEMAR CAAL COC','1','15.477310685043927','-90.30862842813353','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'91728','CASTHERDISA','8AV. 3-09 ZONA 1 CARCHA','0','CASTHER DISTRIBUIDORES S.A','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'95718','TIENDA MARINA','CALZADA CHIXTUN ZONA 5 CARCHA A.V','30349391','TIENDA MARINA','1','15.481437764073734','-90.30872791195523','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97910','COMERCIAL DULCE','CALLE PRINCIPAL  ALDEA ENTRE RIOS  PTO. BARRIOS','47917818','COMERCIAL DULCE','1','15.472841879786325','-88.83676851715467','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'92842','TIENDA QANAÂ¨ MARIA','COLONIA SAN FRANCISCO ZONA 2 CARCHA A.V','79515497','JUAN MANUEL TIU PAZ','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97920','COMERCIALIZADORA ALEJANDRA','4TA CALLE ENTRE 5TA. Y 4TA AVENIDA  EL ESTOR IZABAL','30428902','COMERCIALIZADORA ALEJANDRA','1','15.525531605130151','-89.33522648795872','364');
INSERT INTO Clientes_impulsadoras VALUES(0,'93178','DEPOSITO YASMIN SUCURSAL','10 AV. 4-24 A ZONA 1 CARCHA','0','SULVEY CASTRO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93179','DEPOSITO YASMIN SUCURSAL','LOCAL NO. 6 ZONA 0 BARRIO CANIHAB','47949440','SULVEY CASTRO','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93181','TIENDA FLOR DEL COMERCIO  SUCURSAL 2','6 CALLE 12-10 ZONA 1 CARCHA A.V','57585582','CARLOS COC CHUN','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'98325','TIENDA LA OCCIDENTAL','10AV. 10-1 ZONA 1  SAN PEDRO CARCHA A.V','30351590','TIENDA LA OCCIDENTAL','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'97921','DISTRIBUIDORA DON CHICO','7AV 3-75 ZONA 5 CARCHA  CALZADA CHIXTUN','79516317','YULCAN JINALGEL CASTRO REQUENA','1','0','0','219');
INSERT INTO Clientes_impulsadoras VALUES(0,'93040','SURTICENTRO SAN JUAN','ZONA 2 CHAMELCO A.V.','0','RENE ICO CAAL','1','0','0','219');


-- CLIENTES HONDURAS HN-NORTE
INSERT INTO Clientes_impulsadoras VALUES(0,'1','DARLING JESUS RIVERA','CALLE PRINCIPAL FRENTE A LA DESPENSA FAMILIAR LA RIVERA HERN','2555-4937','ABARROTERIA DARLING','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'10','ELENA ISABEL SUAZO PEÃ‘A','VILLANUEVA 4 CALLE 2 AVE SURESTE BARRIO CABANAS VILLANUEVA CORTES','2670-4296','BODEGA SUAZO','1','15.312151','-87.992722','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'11','CRISTIAN BIALOBOS','EL CALAN COL BRISAS DEL CALAN CONTIGUO KINDER CALIX BARRIO EL CENTRO','2574-5533/97366372','ABARROTERIA BRISAS DEL CALAN','1','15.396341','-88.020361','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'12','JOSE ABRAN PUERTO','6 AVE 2 Y 3 CALLE BARRIO MEDINA','2552-7964','COMERCIAL DAYANARA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'13','ONAN DANYS MEJIA PAZ','SAN PEDRO SULA 4AVE 4 Y 3 CALLE BARRIO MEDINA S.P.S','2557-7063/98268589','COMERCIAL ISSAC','1','15.5032016666666','-88.0198399999999','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'14','JUAN ANGEL ROMERO','SAN PEDRO SULA BARRIO MEDINA 4 Y 5 CALLE 6 AVE SAN PEDRO SULA','2553-1612','COMERCIAL ROMERO','1','15.5019766','-88.0187716','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'15','JOSE SANTOS ROQUE','SAN PEDRO SULA 5 CALLE 3 Y 4 AVE.BARRIO MEDINA SAN PEDRO SULA','2557-5576','CONFITERIA ACACIAS','1','15.5017249999999','-88.0221266666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'16','CARLOS BONILLA JIMENES','4 CALLE 4 AVE B. MEDINA','2557-9672','CONFITERIA BEEST','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'161','MARCO ALBERTO PORTILLO','LA LEMPIRA  COL LEMPIRA 1 CUADRA AL ESTE DE CONSTRUCTORA ETERNA','2565-8312','DEPOSITO EL DESCUENTO','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'598','WENDY NOHEMI CACERES','BLV. PRINCIPAL VILLANUEVA FTE GASOLINERA UNO','95755541/89392140','ABARROTERIA Y VARIEDADES DANNA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'6','NORMA AIDA HERNANDEZ','SAN PEDRO SULA  4 AVE. 3 Y 4 CALLE  BARRIO MEDINA','2552-8796','ABARROTERIA TANIA #2','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'60','GREGORIA DIAZ DIAZ','COL GUANACASTE COLEGIO OFICIAL VILLANUEVA DOS CAMINOS','8874-8988','CONFITERIA DANNY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'609','GERMAN ALBERTO CRUZ','MERCADO CENTRAL','97804636','CONFITERIA YARED','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'61','JUSTINIANO MARQUEZ','VILLANUEVA BRISAS DEL CALAN VILLANUEVA CALLE PRINCIPAL','94541515','PULPERIA JUSTO','1','15.3978116666666','-88.0191516666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'610','GERSEL ESIFREDO REYES','SAN PEDRO SULA 5 CALLE 5 Y 6 AVE BP MEDINA SAN PEDRO SULA','99260608','BODEGUITA EL CHELE','1','15.501406','-88.019095','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'611','SILVIO MAURICIO BRICEÃƒâ€˜O','4 AVEPLAZA LADOÃƒâ€˜A LOCAL NO 14','94628024','INVERSIONES BRIZA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'613','ENRRIQUE ANTONIO PINEDA','SAN PEDRO SULA 6 CALLE 7-8 AVE B MEDINA SAN PEDRO SULA','89722257','ABARROTERIA PINEDA','1','15.5006249999999','-88.0172933333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'616','DUNIA MARIBEL BENITEZ','SANTA MARTA  COL STA CLARA CALLE PRINCIPAL  ENTRADA A COL. SANTA MARTA  SAN PEDRO SULA','97519026','CONFITERIA GENESIS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'19','LUIS ARMANDO LEON NUÃƒâ€˜EZ','4 CALLE 5-6 AVE B0. MEDINA','9535-4769','CONFITERIA GUARITA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'2','GUSTAVO RAUDA SERRANO','SAN PEDRO SULA  6 AVE 2 CALLE B MEDINA  S.P.S','25505394/96796279','ABARROTERIA JULISSY#1','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'20','DAWIN PORTILLO NUNEZ','SAN PEDRO SULA 6 AVE 6-7 CALLE BO MEDINA SAN PERDRO SULA','2552-6611/98580142','CONFITERIA BETEL','1','15.500114','-88.018549','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'21','JOSE FROYLAN PEREZ','SAN PEDRO SULA 6 AVE 6-7 CALLE B0 MEDINA SAN PEDRO SULA','9995-5423','CONFITERIA INGRID','1','15.5002149999999','-88.03379','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'22','JORGE ALBERTO PERAZA TORRES','SAN PEDRO SULA 4 AVE 5-6 CALLE BO. MEDINA SAN PEDRO SULA','2552-6661/98255400','CONFITERIA JORGITO # 1','1','15.49955','-88.0193866666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'23','JOSE SATOS ROQUE','SAN PEDRO SULA BARRIO MEDINA 7 CALLE 5 Y 6 AVENIDA SAN PERO SULA','2557-5576','CONFITERIA ACACIAS','1','15.4809399999999','-87.9820266666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'24','MANUEL EDGARDO CABRERA CABALLERO','SAN PEDRO SULA BARRIO MEDINA 4 CALLE 6 Y 7 AVE. SAN PEDRO SULA','95402472','CONFITERIA MARY','1','15.5012966666666','-88.0174466666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'25','NORMAN EDGARDO ORTIZ','5 CALLE 3-4 AVE BO. MEDINA','88526476','CONFITERIA MUNDO FIESTA # 1','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'26','LUIS ARTURO LAINEZ','BO. EL CENTRO MERCADO SAN JOSE LOCAL # 2','668-5562','INVERSIONES MULTIPLES LA PROFE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'50','JOSE GUSTAVO SAMBRANO','COL SANTA FE DOS CAMINOS MEDIA CUADRA ESC MINERVA','9870-6907','PULPERIA SABY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'500','HUGO VALLE','RESID. MONTE MARIA BLOQUE 17 CASA 15','98638663/98887490','DISTRIUIDORA HUGO VALLE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'51','DAYSI WALDINA PORTILLO','CHAMELECON  CALLE PRINCIPAL EL CRUCERO ESQUINA OPUESTA IGLESIA MORMONA  CHAMELECON SAN PEDRO SULA','8828-1227','CONFITERIA JEHOVA NISSI','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'52','MARLEN SUYAPA HERNANDEZ CARDENAS','7CLL 9-10 AVE DANDY','2552-1724','SUMINISTROS DON GOYO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'53','DOLORES LETICIA NUÃƒâ€˜EZ ORTEGA','6CLL 8-9 AVE DANDY','2550-7648','CONFITERIA LOLYS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'530','ELSI ROSELI AVILA BONILLA','SAN PEDRO SULA  BARRIO MEDINA  7 CALLE  5 Y 6 AVE. SAN PEDRO SULA','98326408','ABARROTERIA LA PROMESA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'533','MARLENY XIOMARA CRUZ','SAN PEDRO SULA 4 CLLE 6-7 AVE B MEDINA SAN PEDRO SULA','25527459/99828668','ABARROTERIA HOSSANA','1','15.5020666','-88.017353','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'535','ALLAN FERNANDOO MORENO','BO MEDINA 7 Y 8 CALLE 3 AVE SUR ESTE','99785877','ABARROTERIA ELVIS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'536','ELSI CACERES CRUZ','BO. ELOBELISCO CALLE CRUZ ROJA','26704524/3320079','PULPERIA MI ESFUERZO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'54','ANTONIO MONTALVAN','5CLL 4-5AVE B. MEDINA','2553-4744/99645875','COMERCIAL MONTALVAN','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'27','ENMA NUNEZ AGUILAR','SAN PEDRO SULA BARRIO MEDINA 6 AVE. 6 Y 7 CALLE SAN PEDRO SULA','2552-3169','CONFITERIA SAN JUDAS # 1','1','15.500334','-88.018508','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'28','ZOILA MARINA REYES ROMERO','SAN PEDRO SULA BARRIO EL CENTRO CALLE PRONCIPAL FRENTE A FARMACIA MENDOZA LA LIMA','9781-8457','CONFITERIA MARY','1','15.4391333333333','-87.9275333333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'29','NORA VELASQUEZ AYALA','LA LIMA  CALLE PRINCIPAL A LA PAR FARMACIA MENDOZA  LA LIMA','2668-5669','INVERSIONES MURILLO','0','15.439096','-87.926585','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'3','SONIA RUBY CASTELLANOS','SAN PEDRO SULA 5 CALLE 4-5 AVE BO. MEDINA S.P.S','97197143','CONFITERIA NICOL','1','15.5005483333333','-88.0184599999999','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'30','MANUEL DE JESUS PORTILLO','SAN PEDRO SULA 6 AVE. 7Y 6 CALLE BARRIO MEDINA SAN PEDRO SULA','2557-7547/32688095','SURTIDORA EL PORTILLO','1','15.50011','-88.018671','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'31','KAREN VANESA CHAVARRIA','CO SANTA FE DOS CAMINOS FRENTE A LA CLINICA MURILLO','2608-4883','INVERCIONES SANTA FE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'32','NELSON HERNANDEZ','EL MILAGRO CARRETERA AL MILAGRO A ORILLA DE LA CARRETERA SECTOR DOS CAMINOS','98904195','MINI SUPER MONTE CARMEL','1','15.3856716666666','-87.9816716666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'33','SILVANO REYES','EL MILAGRO CO SINAHI CALLE PRINCIPAL DOS CAMINOS','2608-3772','MINI SUPER REYES','1','15.388878','-87.969042','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'34','SERVIO TULIO SORIANO','COL RIVERA HERNANDEZ CALLE PRINCIPAL FRENTE A DESPENSA L AHORRO','32913493','CONFITERIA DANIELA','1','15.48126','-87.9775066666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'541','REINA PATRICIA CANTARERO','SAN PEDRO SULA 7 Y 8 CALLE 7 AVENIDA BARRIO MEDINA SAN PEDRO SULA','96320042','ABARROTERIA LOS OLIVOS','1','15.4991041','-88.017834','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'542','ELSY EVELYN DIAZ ALVARENGA','SAN PEDRO SULA  MERCADO EL DANDY  7 Y 8 CALLE  9 AVE. SAN PEDRO SULA','25520970/99915803','ABARROTERIA Y CONFITERIA MICHELL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'543','PABLO SORIANO CARCAMO','SAN PEDRO SULA  COL IDEAL CERCA IGLESIA FILADELPHIA  CALLE PRINCIPAL  VILLANUEVA','99241924','MERCADITO LOS DOS HERMANOS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'544','MIGUEL ANGEL POSADAS','9 AVE 6-7 CALLE B MEDINA SECTOR DANDY','25164354','SURTIDORA EL ANGEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'545','DORIS SUYAPA RODRIGUEZ','MERCADO DANDI 7 Y 8 CALLE 9 AVE','0000-0000','ABARROTERIA DE OCCIDENTE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'546','LILIAN MARGOTH VALLADARES','MERCADO DANDI 9 AVE 7-8 CALLE','25522889/33901013','COMERCIAL MI VIÃƒâ€˜A','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'547','LENIN NUNEZ RAPALO','SAN PEDRO SULA 4 CALLE 4-5 AVE BARRIO MEDINA SAN PEDRO SULA','97007517','CONFITERIA SANPEDRANA','1','15.5024233333333','-88.0201166666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'548','TERESA DE JESUS AVILA','BOULEVARD DOS CAMINOS VILLANUEVA','98931692','ABARROTERIA YULISSA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'55','JOSELIN MEJIA','SECTOR LOUSIANA CENTRAL DE ABASTOS','2559-6537','INVERCIONES KABOD','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'618','MANUEL DONALDO CRUZ','VILLANUEVA BO EL CENTRO 2 CALLE 3 AVE VILLANUEVA','26704050/98861201','INVERSIONES C.V. S DE R L','1','15.309465','-87.992875','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'619','MEYDI JULISSA ALMENDARES GEORGES','CHAMELECON  CALLE PRINCIPAL COLONIA ESPAÃƒâ€˜A','96307651','CONFITERIA YULISSA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'62','GEOVANI GABRIE MUNGUIA','BARRIO FRANCISCO MORAZAN VILLANUEVA  CORTES. RTN 05019005459963','26705054/99131763','SUPERMERCADO EL EXITO S.A. DE C.V.','1','15.3156083333333','-87.9921','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'63','JOSE FERNANDO PAZ','EL MARAÃ‘ON CALLE PRINCIPAL','32263366','MINI SUPER PAZ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'630','MARTHA RUBISELA RAMOS','CALLE PRINCIPAL 6 CUADRA ABAJO PARQUE LA CURVA','25092173/97834845','LACTEOS CESAR # 2','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'631','JOSE RICARDO PACHECO LOPEZ','SAN PEDRO SULA  5 AVE 6 Y 7 CALLE BARRIO MEDINA  SAN PEDRO SULA','97145922','BODEGA RICARDITO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'632','JOSE NELSON ANARIBA','SAN PEDRO SULA  4 AVE 6 Y 7 CALLE BO MEDINA  SAN PEDRO SULA','25574284/99319811','PREMIUN COMERCIAL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'64','GABRIELA SUYAPA IZAGUIRRE','COL. SATELITE CONTIGO IGLESIA BAUTISTA','95357754','DISTRIBUIDORA MARGARITA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'640','ELVIS TROCHEZ SAGASTUME','DOS CAMINOS DOS CAMINOS COL SANTA FE 1/2CUADRA ANTES DE SUPERMERCADO LA GRAN FELICIDAD','9653-3457','BODEGA TROCHEZ','1','15.382518','-87.985966','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'35','ALBA DANIA GOMEZ','VILLANUEVA 7 CALLE 2 AVE. SURESTE BARRIO CABANAS VILLANUEVA CORTES','2670-4216','ABARROTERIA ALBA DANIA','1','15.309525','-87.9930366666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'36','ROSALINA SANCHEZ','CHAMELECON  CHAMELECON CARRETERA PRINCIPAL 1/2 CUADRAABAJO DE BANCO DE OCCIDENTE  SAN PERDRO SULA.','95399229','PULPERIA LA COPANECA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'37','REYNA MARTINEZ','CHAMELECON  CHAMELECON FRENTE AL PARQUE  SAN PEDRO SULA','9708-8018','PULPERIA REYNA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'38','POLI MARTINES','SAN PEDRO SULA  5 CALLE 4 Y 5 AVE BARRIO MEDINA S.P.S C# 40  SAN PEDRO SULA','2552-6038','ABARROTERIA SUPER PRECIO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'39','OSCAR ORLANDO LEON','6 AVE 6-7 CALLE B MEDINA','2550-9031','SURTIDORA EL PROFE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'4','OMAR EDGARDO MENJIVAR','4 Y 5 AVE 5 CALLE BARRIO MEDINA S.P.S','2550-2926','ABARROTERIA MENJIVAR','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'40','JORGE MARTINEZ','VILLANUEVA  SALIDA A BALNEARIO EL OCOTE BARRIO CABANAS  VILLANUEVA','2670-4775/33356248','ABARROTERIA NAN','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'41','HECTOR RENE NUÃ‘EZ','6 CALLE 8-9 AVE BO MEDINA','2669-0426','COMERCIAL NUNEZ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'42','EDER GARCIA','BO. MEDINA 4 Y 5TA. CALLE 6AV. SAN PEDRO SULA','9519-0199','ABARROTERIA STEVEN JAFETH','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'43','ALLAN NUÃ‘EZ','6TA. CALLE 8 Y 9 AVENIDA BO. MEDINA SAN PEDRO SULA','2552-0348','BODEGA NUÃ‘EZ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'556','ASUNCION MARADIAGA','SANTA EDUVISESVILLANUEVA','0000-0000','PULPERIA CHON','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'557','GLENDA RODRIGUE','RESIDENCIAL CAMPISA','2516-4412','ABARROTERIA Y CONFITERIA EL COMPA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'56','EDWIN SEBASTIAN CRUZ MUÃƒâ€˜OZ','CENTRAL DE ABASTOS DE SULA GALPON 1 LOCAL 61','9927-3430','INVERCIONES DON SEBAS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'561','ANDRES AMADOR NUÃ‘EZ','DOS CAMINOS DOS CAMINOS COL SANTA FE 1/2CUADRA ANTES DE SUPERMERCADO LA GRAN FELICIDAD','0000-0000','MINI SUPER EMANUEL','1','15.382965','-87.98091','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'562','GLADIS PONCE VASQUEZ','COL GUANACASTE CALLE PRINCIPAL','99285942','PULPERIA LA DOÃƒâ€˜A','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'563','SONIA RUBY CASTELLANOS','SAN PEDRO SULA 4 CALLE 3 Y 4 AVE BARRIO MEDINA SAN PEDRO SULA','97197143','ABARROTERIA NICOL','1','15.50278','-88.0205483333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'564','MARVIN GEOVANY COELLO','COL. GUILLEN ENTRADA PRINCIPAL','9737-3901','PULPERIA ILMAR','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'57','FRANCISCO JAVIER RODRIGUEZ','SAN PEDRO SULA  SECTOR LOUSIANA CENTRAL DE ABASTOS  SAN PERO SULA','96481442','INVERSIONES EMANUEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'573','JESUS ANTONIO GUILLEN','LOMAS DE SAN JUAN','0000-0000','BODEGA JACKY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'58','MARIBEL ACOSTA SOLANO','8AVE 7 Y 8 CLL B. MEDINA','99420660','ABARROTERIA MARIBEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'44','JAVIER ORTIZ','3 AVE 4 Y 5 CALLE S.P.S.S BARRIO MEDINA','99785139','CONFITERIA MUNDO DE FIESTA # 2','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'446','FROYLAN PEREZ','6 AVE 6-7 CALLE B MEDINA','0000-0000','CONFITERIA INGRID 2','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'447','MARGITH GRACIBEL PINEDA CARDONA','SAN PEDRO SULA BARRIO MEDINA 6TA AVENIDA ENTRE 5TA Y 4TA CALLE.SAN PEDRO SULA','25508564/96297549','ABARROTERIA KENDY PAOLA','1','15.5014366666666','-88.01825','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'448','DAISY WALDINA PORTILLO','CHAMELECON  CHAMELECON  1 CUADRA ABAJO DE LA POSTA POLICIAL  SAN PEDRO SULA','0000-0000','CONFITERIA JEHOVA NISSI','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'45','SIXTO JAVIER PAVON BUSTILLO','MERCADO DANDY  7CALLE AV. JUAN PABLO II MERCADO EL DANDY  SAN PEDRO SULA','2516-4314/87304451','SURTI-DORA S','0','15.4424965','-88.0201661','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'458','JOSE TRANSITO PEREZ','CALLE PRINCIPAL EL CALAN  ORILLA DE CARRETERA','0000-0000','MINI SUPER LOMAS DEL CALAN','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'46','MANUEL EDGADO CABRERA','BRRIO. MEDINA CONCEPCION 4Âº Y 5Âº CALLE','2520-9546','CONFITERIA MARY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'460','SERGIO AGUILAR MADRID','VILLANUEVA  BARRIO LAS FLORES.','26705595/97411599','ABARROTERIA LAS FLORES','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'461','MARIA ESTELA DIAZ','DOS CAMINOS   CARRETERA AL MILAGRO','0000-0000','SUPERMERCADO TRES MARIAS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'47','BENIEL ALEXANDER NAJERA BANEGAS','MERCADO MEDINA BARRIO MEDINA CONCEPCION 6 Y 7 CALLE 6 AVENIDA SAN PEDRO SULA','2552-91 26','SURTIDORA ALEXANDRA','1','15.50019','-88.018607','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'642','CRUZ ALEXANDER RAMOS VARGAS','CHAMELECON  CALLE PRINCIPAL  A LA PAR DE PUL. COPANECA   CHAMELECON  1/2 CUADRA ABAJO DE POSTA POLICIAL   SAN PEDRO SULA','96831409','CONFITERIA JUDITH','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'646','WALDINA PATRICIA VALLE PAZ','SAN PEDRO SULA  4 CALLE 4 Y 5 AVE BO MEDINA  SAN PEDRO SULA','9846-1083','ABARROTERIA ORWALS','0','15.502433','-88.019675','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'649','SANTOS AMILCAR GUZMAN PORTILLO','SAN PEDRO SULA  COL. FELIPE ZELAYA BLOQUE 25 CASA 35  SAN PEDRO SULA','9578-4642','ABARROTERIA GUZMAN','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'65','SANTOS ALCANTARA PACHECO','COL. SUYAPA CHAMELECON','2565-7544/98888063','ABARROTERIA ALCANTARA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'650','YESSENIA LANDAVERDE RIVAS','SANTA MARTA  COL. SANTA CLARA CALLE PRINCIPAL SALIDA ALAS  LOMAS  SAN PEDRO SULA','9804-1141','MINI SUPER RICCY','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'66','JUANA DORIS LOPEZ DE PERAZA','BARRIO MEDINA 4TA CALLE 3 Y 4 AVE','2552-6661','CONFITERIA JORGITO #2','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'665','WILFREDO MOLINA VASQUEZ','SAN PEDRO SULA  8 AVE 4-3 CALLE BO MEDINA  SAN PEDRO SULA','31466727','CONFITERIA LA ABUNDANCIA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'667','CARLOS ALBERTO DISCUA ROSA','SAN PEDRO SULA 6 AVE. 7Y 6 CALLE BARRIO MEDINA SAN PEDRO SULA','9987-5150','INVERSIONES CATHY','1','15.48063','-87.9821633333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'67','YOLANI','BARRIO MEDINA 3RA AV 6 Y 7 CALLE','0000-0000','CONFITERIA MELISSA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'17','RONY DAVID DIAS','SAN PEDRO SULA 3 AVE. 4 Y 5 CALLE S.P.S MEDINA .SAN PEDRO SULA','2557-1388','CONFITERIA CINTHIA','1','15.502386','-88.021125','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'18','LEONEL AGUILAR','SAN PEDRO SULA BARRIO MEDINA 4 CALLE 5 Y 6 AVE. SAN PEDRO SULA','9472-5021/25523169','CONFITERIA SAN JUDAS # 2','1','15.502289','-88.018866','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'690','LUIS ENRIQUE CABALLERO','SAN PEDRO SULA  BO. CONCEPCION 3 Y 4 CALLE 7 AVE.SAN PEDRO SULA','87354707','INVERSIONES Y  BODEGA MARUXY S DE R L DE CV','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'692','DARWIN ARIEL ORELLANA','SAN PEDRO SULA  BO. MEDINA   4 Y 5 CALLE   9 AVE  SPS  CORTES','9621-3514','DISTRIBUIDORA JUAN','0','15.501063','-88.016325','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'698','ELIZABETH HURTADO CORREA','SAN PEDRO SULA 4TA CALLE 3 Y 4 AVE BO MEDINA SPS','3191-8822','DISTRIBUIDORA DEC S DE RL DE C.V.','1','15.502668','-88.020617','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'699','ISIS LAURA HERNANDEZ CEVEDA','SAN PEDRO SULA  6 AVE  3 Y 4 CALLE   BO. MEDINA  SAN PEDRO SULA','9851-9639','INVERSIONES S Y E','1','15.502516','-88.017879','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'7','MAGDALENA MEJIA','LA LIMA  LIMA CORTES 4 CALLE EDIF FOLGAR FTE PUNTO DE TAXIS','26681833/97771704','BODEGA DANY','0','15.439648','-87.926689','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'70','JOSUE ALEXANDER GUTIERRES SAMORA','BARRIO MEDINA 7 AV 4 Y 5 CALLE','25508742/97455361','COMERCIAÃƒâ€˜ SAN RAFAEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'705','MARIA FLORINDA AMAYA MENDOZA','MERCADO DANDY  7 CALLE  9 Y 10 AVE. SPS','0000-0000','SURTIDORA BONSAI S DE RL DE CV','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'470','EDWIN ZAVALA','SAN PEDRO SULA BARRIO MEDINA 3RA AVENIDA 7-8 CALLE.SAN PEDRO SULA','25504760/97258945','CONFITERIA ZAVALA','1','15.5005049999999','-88.0185233333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'479','FRANCISCO RODRIGUEZ LEIVA','EL PLAN   EL PLAN  CARRETERA A SAN MANUEL A ORILLA DE LA CARRETERA','26080466/33830790','PULPERIA LA AMISTAD','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'48','MARLEN ALICIA AMAYA MEDINA','MERCADO MEDINA BO. MEDINA 05 CALLE 4 Y 5 AVENIDA SAN PEDRO SULA','2550-8732/95701063','CONFITERIA BELEN','1','15.48072','-87.9825549999999','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'489','RONY AGUILAR NUNEZ','SAN PEDRO SULA BARRIO MEDINA 6 AVE. 6 Y 7 CALLE. SAN PEDRO SULA','25522986/99911170','ABARROTERIA RONY','1','15.5000233333333','-88.0186766666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'490','DENIA JUDITH OLIVA HERNANDEZ',' BARRIO MEDINA CONCEPCION 4TA CALLE  3RA Y 4TA AVENIDA.SAN PEDRO SULA  ','9947-8090','CONFITERIA YOSTIN','1','15.4927433333333','-88.0344883333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'491','HECTOR TITO PEREZ','SAN PEDRO SULA BARRIO MEDINA. 7AVE 4-5 CALLE. SAN PERO SULA','99358331','ABARROTERIA TITO','1','15.501662','-88.017259','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'492','GUSTAVO RAUDA','BARRIO MEDINA  6 AVENIDA  6 Y 7 CALLE.','0000-0000','BODEGA MI ESFUERZO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'498','CARLOS ALBERO CABALLERO','3 CALLE 5-6 AVE BO.MEDINA CONCEPCION','25500854/95291552','CONFITERIA M Y M','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'5','NOE MONTES','SAN PEDRO SULA  4 AVE 4 Y 5 CALLE BARRIO MEDINA CONCEPCION S.P.S','0000-0000','ABARROTERIA TANIA#1','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'707','VICTOR LEONEL AGUILAR NUNEZ','BO MEDINA SPS 6 AVE 6 Y 7 CALLE','9472-5021','CONFITERIA BRYAN','1','15.5003016','-88.01848','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'708','SANTOS ALCANTARA PACHECO','COL. SUYAPA 2 CUADRAS ABAJO DE CANASA SPS','9888-8073','COMERCIAL ALCANTARA','1','15.445445','-88.0215283333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'71','HECTOR ENRIQUE MENJIVAR','SAN PEDRO SULA  BARRIO MEDINA 4TA AV 6Y5 CALLE  SAN PEDRO SULA','2553-0883/98296355','COMERCIAL MENJIVAR','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'710','GUSTAVO RAUDA SERRANO','BO MEDINA 2 CALLE 6 AVVE SPS','2550-5394  9679-6279','CONFITERIA VICTORIA','1','15.5021783333333','-88.0188216666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'711','FRANCISCO JAVIER RODRIGUEZ  FIGUEROA','CENTRAL DE ABASTOS GALPON 2','99715422','INJAVI  S DE R L','1','15.4807999999999','-87.9822549999999','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'712','SWADY CAROLINA BARAHONA ORTIZ','BO. MEDINA   4CALLE  6 Y7 AVE SAN PEDRO SULA','9861 4571','BODEGA LEO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'714','MARIA ANTONIETA PAZ TALAVERA','BO.. MEDINA 5 CALLE AVE 6 Y 7 CALLE SAN PEDRO SULA','0000-0000','MARIA ANTONIETA PAZ TALAVERA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'715','DORIS AMANDA AGUILAR RAMOS','BO CONCEPCION  3 Y 4 CALLE  4 AVE  SPS','9452 4401','DORIS AMANDA AGUILAR RAMOS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'72','HERNAN BENITEZ','LA SABANA SAN MANUEL','9974-5665','ABARROTERIA JIRETH','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'725','OLMAN BANEGAS  ','BO.MEDINA 4 CALLE  6 Y 7 AVE.  SAN PEDRO SULA ','31814097','INVERSIONES CELESTINO ','0','15.4424083','-88.0202563','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'73','SANDRA MARITZA FIGUEROA','CENTRAL DE ABASTOS GALPON 1 LOCAL 64','96467615','POLIPLAST','0','0','0','480');

INSERT INTO Clientes_impulsadoras VALUES(0,'736','LUIS ALEJANDRO FLORES AMAYA','4TA CALLE 8 AVE. BO. CONCEPCION SAN PEDRO SULA','9960-0432','LUIS ALEJANDRO FLORES AMAYA','1','15.5019166666666','-88.01638','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'737','ROGER ALEXIS TURCIOS MENDEZ','7 AVE  3 Y 4 CALLE BO. MEDINA  SAN PEDRO SULA','99701801','INVERSIONES LA ROCA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'738','BERTA LIDIA ROJAS CRUZ','MERCADO DANDY 7 CALLE  SAN PEDRO SULA ','96209862','BODEGA Y CONFITERIA LA NUEVA','1','15.499173','-88.05128','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'74','LORENA CRUZ','CAMPO LA FRAGUA CALLE PRINCIPAL LIMA CORTES','9946-9072','TIENDA LA ECONOMICA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'740','OSCAR EDUARDO AVILA MADRID','4 CALLE 3 Y 4 AVE LOCAL 6 CONTIGUO A POLLOLANDIA SPS','9509-4199','CONFITERIA LA BENDICION','1','15.5026733333333','-88.0208766666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'746','JORGE JAY MARQUEZ GUZMAN','6 Y 7 CALLE  6 AVE. BO. MEDINA  S P S','31720891','ABARROTERIA WENDY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'75','GEOVANY ROLDAN CARBAJAL','CAMPO SAN JOSE LIMA CORTES','9943-9104','ABARROTERIA BELKIS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'750','ESTER RUBI CABRERA ','CENTRAL DE ABASTOS RECIDENCIAL PALOS VERDES CALLE PRINCIPAL ','97657539','INVERSIONES SHEKINAH','1','15.478168','-87.996705','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'759','NOE ANTONIO RAMIREZ LARA','BARRIO CABANIAS A DOS CUADRAS DEL CEMENTERIO','96478970','ABORROTERIA EL CENTRO','1','15.315766','-87.993765','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'76','ZULEMA OSORIO','SECTOE EL CALAN LIMA CORTES','9988-3668','TIENDA OSORIO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'761','MANUELA DE JESUS RIVERA SALDIVAR','MERCADO DANY 7 CALLE 9 AV.','31617868','CONFITERIA JOSSELIN','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'765','ALVARO CARCAMO DIAS','B. LAS TORRES FRENTE AL SUPERMERCADO SATELITE','33233691','ABORROTERIA LAS TORRES','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'767','DIXIANA GABIELA ZELAYA MEJIA ','DOS CAMINO CALLE EL MILAGRO FRENTE A LA DESPENSA','95603629','BODEGA LA FAMILIA ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'77','GERSON ORTIZ BORJAS','SAN PEDRO SULA  BARRIO MEDINA  4 CALLE  6 Y 7 AVE. SAN PEDRO SULA','9585-4858','BODEGA LEO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'772','SANDRA NOEMY SAGASTUME ENAMORADO','BARRIO MEDINA 4A CALLE 6A Y 7A AVENIDA SAN PEDRO SULA','8878-1584','CONFITERIA CALEB','1','15.5020749999999','-88.0178','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'779','GEOVANI GABRIEL MUNGUIA','BARRIO LA VICTORIA VILLANUEVA CORTES','99131763','SUPERMERCADO EL EXITO S.A. DE C.V.','1','15.315655','-87.9922066666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'78','IRIS ISMERIA COELLO LAINEZ','LIMA CALLE 8 A LA PAR DE FARMACIA MENDOZA','2668','BODEGA IRIS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'780','MARIA ARACELYS MONTOYA','SAN MANUEL CALLE AL PORVENIR SALIDA A LA LIMA','97385136','ABARROTERIA MONTOYA','1','15.3174733333333','-87.98388','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'784','MARY ESMERALDA GARCIA','CENTRAL DE ABASTOS SPS AL LADO DE BANPAIS','33946726','DISTRIBUIDORA ABIGAIL','1','15.4801016666666','-87.9945466666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'785','GLADYS SAGRARIO GARAY MEJIA','BO MEDINA 7 CALLE FRENTE AL MERCADO DANDY','9466-0440','GLADYS SAGRARIO GARAY MEJIA','1','15.498475','-88.015004','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'79','EUGENIO CHAVARRIA','BARRIO CONSEPCION 1Y2 CALLE 3RA AVE','9956-6016','ABARROTERIA CHAVARRIA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'790','JOSE ARCENIO CASTELLANOS CARDONA','BO EL OBELISCO FRENTE A ZIP VILLANUEVA','9742-5091','BODEGA CARDONA S. DE R. L. DE C. V.','1','15.322449','-87.992405','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'791','JARED ALEJANDRO PINEDA HERRERA','COL LAS LOMAS DE SAN MANUEL  CALLE 4 CASA NO 10','95869746','JARED ALEJANDRO PINEDA HERRERA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'792','MANUEL EDGARDO CABRERA CABALLERO','BO MEDINA 4TA Y 5TA CALLE 7AVE SPS','9687-0278','CONFITERIA EDGARDO','1','15.5019616666666','-88.0210866666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'793','DAMARI ALEJANDRA OSORIO VELASQUEZ','CALLE PRINCIPAL FRENTE PARQUE CENTRAL LA LIMA','9615-2873','INVERSIONES DOÑA ELVIA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'795','IMER HENEDAD MARTINEZ JIMENEZ','EL MILAGRO  COL SINAI 1 CUADRA ADELANTE MINISUPER REYES','9579-8303','BODEGA MARTINEZ','1','15.3865766666666','-87.96845','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'799','NOHEMY PINEDA CARDONA','BO MEDINA 6AVE 4 Y 5TA CALLE ','9937-5338','CONFITERIA N Y N','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'8','DANY ALEJANDRA OSORIO VELASQUEZ','BARRIO EL CENTRO LA LIMA FRENTE AL PARQUE A LA PAR DE BAMER','668-1631','BODEGA HERMANOS OSORIO','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'80','PEDRO ZUNIGA','SAN MANUEL ESQUINA OPUESTA AL PARQUE','9653-6134','LACTEOS ZUNIGA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'81','PABLO HERNANDEZ','ABARROTERIA LOS DOS HERMANOS','99441924','ABARROTERIA LOS DOS HERMANOS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'810','BAYRON ROLANDO OLIVA ESQUIVEL ','SECTOR VILLANUEVA COMEDOR EL TRIANGULO SALIDA A TEGUCIGALPA','0000-0000','WAL BRO DISTRIBUIDORA Y SUPERMERCADOS S DE RL ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'818','REINA ISABEL MELGAR','COL SATELITE PRIMERA ETAPA CASA 20 NEGOCIO EN CENTRAL ABASTOS','9670-3229','SURTIDORA DE OCCIDENTE','1','15.4808433333333','-87.9822033333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'82','NORMA PATRICIA HERNANDEZ','BARRIO MEDINA 6AVE 6Y7 CALLE','25524555/25024555','COMERCIAL MONTE CARLO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'822','REYNA ISABEL MELGAR GARCIA','COL. SATELITE PRIMERA ETAPA CASA -20 MURO DE CEMENTO POR SURTIDORA OCCIDENTE','0000-0000','REYNA ISABEL MELGAR GARCIA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'83','PABLO EUCEDA','SAN PEDRO SULA BARRIO MEDINA 6AVE 4Y5 CALLE SAN PEDRO SULA','0000-0000','BODEGA EL MEJOR GRANO','1','15.5014833333333','-88.018225','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'834','CARMEN EDITH QUINTANILLA GALVEZ','CENTRAL DE ABASTOS SAN PEDRO SULA','96293508','BODEGA GISELLE','1','15.4804','-87.9951416666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'838','CESAR AMILCAR CASERES AGUILERA ','B. MEDINA 7 CALLE 2 CUADRAS ARRIBA DEL MERCADO DANDY ','0000-0000','CESAR AMILCAR CASERES AGUILERA ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'84','HERNAN BENITEZ','COL LA SABANA ESQUINA OPUESTA CAMPO DE FUTBOL','99145665','PULPERIA JIREH','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'840','NELSON RIVERA','B MEDINA 8 CALLE 9 AVE CONTIGUO A MERCADO EL DANDY ','25521866','IVERSIONES RIVERAS','1','15.497805','-88.0164533333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'841','SELVIN NAHUM ALVAREZ CORRALES','B CONCEPCION 7 CALLE 6 Y 7 AVE SAN PEDRO SULA','98181568','SELVIN NAHUM ALVAREZ CORRALES','1','15.501405','-88.018115','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'843','DOLORES LETICIA NUÑEZ ORTEGA','SAN PEDRO SULA CORTES','98603909','DOLORES LETICIA NUÑEZ ORTEGA','0','15.5004083333333','-88.0161133333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'844','HILDA SUYAPA RIVERA PINEDA','BARRIO CONSEPCION 5 Y 6 CALLE  8 AVE CONTINUO A CLINICA PERIFERECA','87909071','HILDA SUYAPA RIVERA PINEDA','1','15.5010866666666','-88.01748','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'845','MARIA ELIZABETH BAUTISTA LARA','B. MEDINA 5 CALLE ENTRE 4 Y 5 AVENIDA SPS','99764907','MARIA ELIZABETH BAUTISTA LARA','1','15.5025316666666','-88.0195216666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'85','MELVIN FERNANDEZ','COL. SANTA MARTHA','3161-4275','CONFITERIA FERNANDEZ','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'855','NELSON JOSE MUNGUIA SANCHEZ','BO MEDINA 5TA CALLE 4TA AVE FRENTE CIAL ISAC','9827 2011','CONFITERIA LOS TRES HERMANOS','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'856','KEVIN ROSWELL SABILLON GARCIA','B. MEDINA 4TA CALLE 7 Y 8 AVE CONTIGUO A ED PLASTICOS','95437872','COMERCIAL Y PRODUCTOS DIVERSOS SEMILLA DE JOSE','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'857','ELVIA YOLANY OSORIO VELASQUEZ','BO EL CENTRO FRENTE CONFITERIA MARY','96755168','VARIEDADES LA ROSA','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'858','FREDY DIAZ RODRIGUEZ','EL PLAN CALLE HACIA BRISAS DEL PLAN','9866 5666','ABARROTERIA F Y M','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'86','FAUSTINO FLORES','BARRIO MEDINA 5 AVE 6Y7 CALLE','9982-9020/25529132','BODEGA FLORES Y FLORES','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'864','DINIO HERNANDEZ LOPEZ','SANTA EDUVIGES CALLE PRINCIPAL HACIA MARAÑON ','9594-3043','PULPERIA Y MAS LA ECONOMICA','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'87','GUADALUPE MENDOZA HERNANDEZ','DOS CAMINOS  COL. SANTA FE DOS CAMINOS  CALLE PRINCIPAL','96584180','ABARROTERIA ALTOS DE SANTA FE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'872','DANIA MARICELA LUQUE ZERRANO','COL. GRACIAS A DIOS DOS CAMINOS CALLE PRINCIPAL A LA LIMA','9541-2815','ABARROTERIA PAVON','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'88','MARTHA DE RIVERA','SECTOR RIVERA HERNANDEZ UNA CUADRA ATRÃƒÂS DE DESPENSA','0000-0000','ABARROTERIA EMMANUEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'881','ADA CAROLINA MEJIA','BO EL CENTRO FRENTE S/M LA COSECHA ','33776414','COMERCIAL MUNGUIA','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'89','HENRY RIVERA','CHAMELECON  COL. SANTA FE DOS CAMINOS CALLE PRINCIPAL TOPE ANTES DE COLEGIO','95840631','INVERCIONES JEHOVA MI ESTANDARTE','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'671','ANA MARIA SOL RODRIGUEZ','DOS CAMINOS  CALLE PRINCIPAL EL MILAGRO  FRENTE A IGLESIA LOS MORMONES','0000-0000','INVERSIONES LA GRAN FELICIDAD','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'674','FRANCISCO JAVIER ORTIZ PINEDA','SAN PEDRO SULA 5 CALLE 3-4 AVE B MEDINA SAN PEDRO SULA','2550-1486/9884-6659','ABARROTERIA FERNANDO','1','15.501679','-88.021001','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'675','SANDRA MARIBEL MIRANDA FLORES','DOS CAMINOS COL SANTA FE CALLE PRINCIPAL DOS CAMINOS','9757-5081/9608-3640','INVERSIONES JM','1','15.3840633333333','-87.9848116666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'676','RUDY ARACEL AGUILAR ZALDIVAR','DOS CAMINOS  CALLE PRINCIPAL EL MILAGRO COL EMANUEL','9461-0156/9698-9195','BODEGA YAIR','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'68','ADA MARITZA MONROY','EL MARAÃ‘ON CALLE PRINCIPAL','25091063/99454305','MINISUPER EL EXITO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'682','JOSE DOMINGO MONTOYA TOBIAS','CHAMELECON CHAMELECON COLONIA LOS ZORSALES CALLE PRINCIPAL 1 CUADRA ANTES DE LLEGAR AL CRUZERO SPS. CORTES','98334360','ABARROTERIA SOFIA','1','15.48081','-87.9820033333333','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'69','JUAN GUEVARA','EL MARANON  ALDEA EL CALAN PRINCIPAL AL MARANON FTE RESTAURANTE LA  TERRAZA','0000-0000','ABARROTERIA PALACIOS','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'580','MIGUEL ANGEL POSADAS','SAN PEDRO SULA BO MEDINA 6 Y 7 CALLE 9 AVE MERCADO DANDY SAN PEDRO SULA','25164354/33484063','SURTIDORA EL ANGEL','1','15.500412','-88.016749','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'584','CARMEN YANETH PERDOMO','SAN PEDRO SULA 6 AVE 6-7 CALLE BO MEDINA SAN PERDRO SULA','97056006','ABARROTERIA Y CONFITERIA KIM','1','15.500146','-88.018547','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'586','MARTHA ISABEL TROCHEZ','SAN PEDRO SULA  BO MEDINA 4-5 AVE  4 CALLE   SAN PEDRO SULA','97438473','ABARROTERIA  Y CONFITERIA LA ECONOMICA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'589','LORENA JHAQUELINE PINTO HERNDEZ','SAN PEDRO SULA BO CONCEPCION 7 Y 8 AVE.4 CALLE SAN PERDRO SULA','0000-0000','COMERCIAL KING','1','15.5017466666666','-88.0156899999999','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'59','CARLOS ORTES CACERES','COLONIA IDEAL VILLANUEVA','9726-0263','MINI SUPER LA PROMESA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'590','LILIAN MARGOTH VALLADARES','SAN PEDRO SULA DANDY SAN PEDRO SULA 7 Y 8 CALLE 9 AVE. SAN PEDRO SULA','25522889/33901013','COMERCIAL MI VINA','1','15.49823','-88.01554','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'591','MANUEL MARTINEZ','SAN PEDRO SULA 7 Y 8 CALLE 9 AVE MERCADO DANDY SAN PEDRO SULA','25520970','ABARROTERIA Y CONFITERIA MICHELL','1','15.498663','-88.016065','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'592','JOEL ANTONIO ORTEGA','SAN PEDRO SULA DANDY 7 Y 8 CALLE 9 AVE MERCADO DANDY SAN PEDRO SULA','25578871','ABARROTES BRYAN','1','15.498575','-88.0161466666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'890','NELSON EXEQUIEL RIVERA SARMIENTO','BO LEMPIRA 10 CALLE 6Y7 AVE. CASA NO. 33 ','9993-8488','INVERSIONES SYM','1','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'9','MIRIAN DE GARCIA','6 AVE 4 Y 3 CALLE BARRIO MEDINA S.P.S','2552-2747','COMERCIAL EL REY','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'90','ELSY','4TA AVE 3Y4 CALLE BARRIO CONSEPCION','9725-4478','ABARROTERIA VICTORIA','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'904969','DISTRIBUIDORA SAN PEDRO','BOULEVAR DEL SUR  KM5   CONTIGUO A CANASA','0000-0000','DISTRIBUIDORA SAN PEDRO SA DE CV','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'91','RAUL LANDA VERDE','SAN PEDRO SULA 4TA CALLE 3Y4 AVE BARRIO MEDINA SAN PEDRO SULA','9851-5495','ABARROTERIA RICCY # 2','1','15.5026583333333','-88.0204566666666','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'92','MARITZA ISABEL INESTROZA','6 CALLE 4Y5 AVE BARRIO MEDINA','2557-8930/97915748','INVERCIONES MI ANGEL','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'93','MARIA CASTRO','SAN MANUEL  SAN MANUEL CORTES  CALLE PRINCIPAL  FRENTE AL PARQUE','33824422','ABARROTERIA MARIA CASTRO','0','0','0','480');
INSERT INTO Clientes_impulsadoras VALUES(0,'100','FELICIANO SABILLOS LEIVA','SANTA BARBARA SANTA BARBARA BARRIO EL CENTRO PEATONAL AVENIDA CONSTITUCION','2643-2162','ABARROTERIA MADRID','1','14.9177016666666','-88.2343766666666','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'101','JOSE AÂNGEL CASTRO','SANTA BARBARA SAN MARCOS 1/2 CUADR5A ABAJO DE MUNICIPALIDAD','8905-4775/26641441','BODEGA Y ABARROTERIA J Y J','1','15.301558','-88.41229166','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'102','RAUL ALFONZO ORTEGA','SANTA BARBARA PINALEJO BARRIO TEJERAS SALIDA AL SITIO','26599250/96696871','ABARROTERIA AQUI ME QUEDO','1','15.3909899999999','-88.3938816666666','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'103','ALLAN CARDONA','SANTA BÁRBARA BARRIO EL FAROLITO MCDO MUNICIPAL','2643-2529','PULPERIA CARDONA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'104','LELI PAZ','TRINIDAD STA BARBARA BO EL CENTRO','98419011','BODEGA EL CENTRO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'105','ESMERALDO PAZ BUESO','TRINIDAD SANTA BARBARA BARRIO ABAJO CONTIGO A LA CLINICA','2657-1100/98084049','PULPERIA EL ESFUERZO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'106','ELMER IZIDRO CORTEZ','SANTA BARBARA SANTA BARBARA BARRIO EL CENTERO AVENIDA INDEPENDENCIA','26430346/99810499','BODEGA ELMER','1','14.9162497','-88.2352692','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'107','NORMAN JESUS SAGASTUME CORTEZ','SANTA BARBARA  SANTA BARBARA BARRIO EL FAROLITO  FRENTE ABARROTERIA MADRID','2643-2424','BODEGA SAN FRANCISCO','1','14.918578','-88.234599','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'108','JORGE FLAMENCO PEREZ','SANTA BARBARA TRINIDAD EL CENTRO 1/2 CUADARA ARRIBA DE BANCHAFE','9984-1490','ABARROTERIA KENIA Y JORGE','1','15.143665','-88.2343','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'110','JOSE CESILIO SAGASTUME','SANTA BARBARA  SANTA BARBARA BARRIO EL CENTRO  AVENIDA CONSTITUCION Y PEATONAL','2643-3025','BODEGA CONSTITUCION','0','14.9174659','-88.2345298','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'111','MANUEL ANTONIO LOPEZ','TRINIDAD EL CENTRO','2608-3876/97083068','PULPERIA MI ESPERANZA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'112','MIRIAM LOPEZ','SANTA BARBARA TRINIDAD EL CENTRO FRENTE AL PARQUE CENTRAL','2657-1456/99543794','BODEGA LAS ACACIAS','1','15.1426206','-88.2332','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'113','MANUEL LOPEZ','SAN NICOLAS SAN NICOLAS BARRIO EL CALVARIO ESQUINA OPUESTA AL PARQUE','2657-3196/99164438','COMERCIAL LOPEZ','1','14.9388539','-88.3285','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'114','ALEJANDRO PINTO SANDOVAL','SANTA BARBARA  QUIMISTAN CALLE PRINCIPAL  HACIA PINALEJO  A 1 CUADRA DE IGLESIA LA COSECHA','2659-8526/98653653','BODEGA LOS AMIGOS','0','15.3525167','-88.402','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'115','MARCIAL COTO GUZMAN','SANTA BARBARA SANTA BAÂRBARA BARRIO EL FAROLITO AVENIDA LA CONSTITUCION','643-2686','BODEGA MARCOG','1','14.918887','-88.23468','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'116','TANIA MARIELA PINEDA LOPEZ','B.EL CENTRO ESQUINA OPUESTA BCO OCCIDENTE','657-2183','ABARROTERIA MARIA Y JOSE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'117','DENIA YOLANY BARAHONA.','SANTA BARBARA  SANTA BAÂRBARA BARRIO EL CENTRO  AVENIDA CONSTITUCION A LA PAR DE LA UTH','2643-2813/98895780','ABARROTEIA MARITZA','0','14.9178887','-88.2343238','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'118','JOSE ANTONIO URBINA','SANTA BARBARA QUIMISTAN CALLE PRINCIPAL A LA PAR DER MOLINEROS COMERCIAL','659-8428','ABARROTERIA MARUBY','1','15.345614','-88.40394','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'119','MARILU VILLANUEVA','COFRADIA BRISAS DEL VALLE','99331084','BODEGA MICHELLE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'120','ALEYDA SUYAPA NUNEZ','COFRADIA COFRADIA COL 24 ABRIL CALLE PRINCIPAL','96516324','BODEGA NUNEZ','1','15.4140907','-88.1195065','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'121','ROBERTO ROLANDO SABILLON','SAN LUIS BARRIO EL CENTRO SAN LUIS ENFRENTE DEL IHCAFE','2657-2035/99815053','PULPERIA EL CENTRO','1','15.12551','-88.44046','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'122','NEPTALÃƒÂ AYALA','PINALEJO CENTRO QUIMISTAN','2659-9394','COMERCIALISADORA SAN ANTONIO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'123','FRANCISCO JOSE TORO MATTA','SAN LUIS SAN LUIS SANTA BARBARA BARRIO EL CENTRO FRENTE COMERCIAL RIVERA','2657-2041/9926085','BODEGA JUNIER','1','15.124618','-88.442023','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'124','ROSA IRMA MIRANDA','SANTA BARBARA  SANTA BARBARA BARRIO EL CENTRO  AVENIDA LA CONSTITUCION FRENTE A LA UTH','643-0445','ABARROTERIA YESSENIA','0','14.9178149','-88.234295','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'125','LUCINIO TROCHES','LA ARADA  BO EL CENTRO  LA ARADA  CALLE PRINCIPAL','2664-4131/98574127','BODEGA TROCHEZ','1','14.9174823','-88.2346','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'126','ELBIN ALEXIS GAMEZ','SANTA BARBARA TRINIDAD CENTRO CALLE HACIA EL COLEGIO','657-1360','SURTIDORA GOMEZ','1','15.1442085','-88.2391','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'127','JUAN ANGEL ROMERO','COL. 24 ABRIL CALLE PRINCIPAL COFRADIA','25531612/97915807','COMERCIAL ROMERO # 3','1','15.4090786','-88.1551','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'128','JUAN ANGEL ROMERO DUBON','COFRADIA CALLE PRINCIPAL ABAJO DEL PARQUE COFRADIA SOBRE EL BOULEVAR','672-1315','COMERCIAL ROMERO # 2','1','15.412661','-88.119023','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'129','JOSE EDUARDO DIAZ','COFRADIA COFRADIÂA BARRIO EL CENTRO FRENTE AL PARQUE','2672-0930/99388136','CONFITERIA EL REY','1','15.409708','-88.154811','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'130','JUAN CARLOS SANTA MARIA','SANTA BARBARA  PINALEJO CENTRO  1/2 CUADRA DE ABARROTERIA CAROL','2659-9330/98738918','CONFITERIA KATTY','0','15.3914962','-88.3938674','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'131','ARNALDO MUNOZ PORTILLO','COFRADIA  COFRADIA BARRIO EL CENTRO  SOBRE EL BOULEVAR','2672-1892','DEPOSITO Y ABARROTERIA EL CENTRO','1','15.4090511','-88.1551457','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'132','MARCOS MARKES YORDANO','SANTA BARBARA  COLINAS BARRIO EL CENTRO  A LA PAR DE BANCO OCCIDENTE','2657-0228','DISTRIBUIDORA SAN ANDRES','0','15.0414155','-88.3015','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'133','MANUELDE JESUS FERNANDEZ','SAN NICOLAS  SAN NICOLAS BARRIO EL CENTRO  1 CUADRA DEL PARQUE CENTRAL','9966-3539/26573107','BODEGA MAKRIS','0','14.9388937','-88.3257935','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'134','RAFAEL ANTONIO REGALADO','LA FLECHA BARRIO EL CENTRO','9551-1147','MINI SUPER LA FLECHA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'135','ISMANEL CASTELLANOS','SANTA BARBARA  PUEBLO NUEVO  ENTRADA DESPUES DEL PUENTE','97381238','MINI SUPER ECONOMICO','0','15.2736092','-88.2818288','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'136','SOILA RAQUEL FRANCO BAIDE','SANTA BARBARA  LA FLECHA BARRIO EL CENTRO  CARRETERA PRINCIPAL','9892-4529/26643000','MINI SUPER RAQUEL','0','15.3919018','-88.3934205','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'137','AMELIA NORIEGA','LA FLECHA SANTA BARBARA DESVIO CHUMBAGUA','99643243','ABARROTERIA SAN JUDAS','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'138','ELSI RUTH TORRES GUEVARA','SANTA BARBARA  LA FLECHA BARRIO EL CENTRO  1/2 CUADRA DE CARRETERA PRINCIPAL','26641009/98763655','MINI SUPER SOFIA','0','15.3918012','-88.3934156','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'139','MIGUEL ANGEL FAJARDO','SANTA BARBARA  LA UNION  TRINIDAD  1/2 CUADRA DEL PARQUE','2608-7492/96404841','PULPERIA BETTY','1','15.1523','-88.25935','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'140','MARTA LIDIA PAZ CABALLERO','SAN VICENTE BARRIO EL CENTRO','96941413','PULPERIA DUBON','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'141','IDALIA DUBON','COL.LA LOMA SAN MARCOS STA. BARBARA','9914-4806','PULPERIA DUBON','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'142','YAMARIS MARIELA PAZ RIVERA','SANTA BARBARA  ILAMA BARRIO EL CENTRO  CALLE PRINCIPAL','97901839','PULPERIA EL SAMARITHANO','0','15.1425794','-88.2332616','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'143','ARACELI LOPEZ','SANTA BARBARA  CHINDA EL CENTRO  FRENTE AL PARQUE','2608-6480','PULPERIA EL CENTRO','0','15.1427881','-88.2335','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'144','JOSE ANTONIO TORRES','SANTA BÃƒÂRBARA BARRIO LA SOLEDAD','2643-2474/97132188','PULPERIA EL CENTRO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'145','ANGEL GABRIEL MARTINEZ MORENO','SANTA BARBARA  SANTA BARBARA BARRIO PASAJE  LA SOLEDAD  FRENTE AL PARQUE','2643-3128/94527199','PULPERIA PASAJE','0','14.916193','-88.2352589','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'146','MARIO ALFONZO RODRIGUEZ SAGASTUME','SANTA BÃƒÂRBARA BARRIO EL FAROLITO','26432608/99303661','PULPERIA GABY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'147','MARIA AUXILIADORA LOPEZ','SANTA BARBARA SANTA BARBARA BARRIO EL CENTRO AVENIDA LA CONSTITUCION FRENTE A LA UTH','26086854','PULPERIA SAN JORGE','1','14.7836','-88.234328','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'148','JUAN PABLO MENJIBAR','SANTA BARBARA  SAN FRANCISCO DE LOS VALLES SANTA BARBARA ARRIBA IGL.CATOLIC','9905-0495','PULPERIA LAURISSA','0','15.3918012','-88.3934156','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'149','YAMILETH CARDONA','ILAMA BARRIO EL CENTRO','99705007','PULPERIA LA POPULAR','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'150','GREVIL RÃƒÂPALO','SAN LUÃƒÂS EL CENTRO','9819-2929','PULPERIA RAPALO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'151','NEPTALI HERNANDEZ ALTAMIRANO','SANTA BARBARA BO. LA LOMA SAN MARCOS STA. BARABARA 3 CUADRAS ARRIBA DEL RNP','9767-8659','PULPERIA HERNANDEZ ALTAMIRANO','1','15.29718','-88.4100532','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'152','TOMASA CABALLERO','2 CALLE 2 AVE CPL SAN JUAN BOSCO COFRADIA CORTES','267221053/32892031','PULPERIA TOMY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'153','JOSE FRANCISCO RIVERA','LA FLECHA SANTA BARABARA','99797917','ABARROTERIA MAS X MENOS','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'154','EDGAR MARIN ECOBAR MARTINEZ','SANTA BARBARA BARRIO EL CENTRO FRENTE AL PARQUE TRINIDAD STA BARBARA','2657-1437','BODEGA DELIA','1','15.1427401','-88.2336','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'155','CARLOS LUIS RODRIGUEZ','BARRIO EL CENTRO SAN LUIS','2657-2162/95467158','MINI SUPER EL SHADAY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'156','WILMER BANEGAS HERNANDEZ','SAN LUIS  BARRIO DEL CENTRO SAN LUIS SANTA BARBARA  FRENTE A BANCO DE OCCIDENTE','96116961','ABARROTERIA LA ECONOMICA','0','14.9388465','-88.3256468','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'157','JOSE ORLANDO ORTIZ','SANTA BARBARA BARRIO FAROLITO AVENIDA LA OYA SANTA BARBARA FRENTE A MERCADO MUNICIPAL','9765-2535','ABARROTERIA EL CARACOL','1','14.918475','-88.233459','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'158','STANLY RODRIGUEZ PINEDA','SANTA BARBARA  BARRIO EL CENTRO ILAMA SANTA BARBARA  CALLE PRINCIPAL','9794-4706','MINI SUPER ORIENTAL','0','15.1425896','-88.2332472','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'159','FREDY ANTONIO CALERO','SANTA BARBARA BARRIO EL CENTRO CALLE AL COLEGIO TRINIDAD SAN TA BAR BARA','9636-8913','PULPERIA JEMNYFER','1','15.1437097','-88.2359','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'160','EDWIN HERNAN CASTILLO','BRISAS DEL VALLE  BRISAS DEL VALLE  ENTRADA AL BOULEVAR','2556-2281/95254062','ABARROTERIA JEHOVA ES MI GERRERO','0','15.4095438','-88.1549394','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'161','MARCO ALBERTO PORTILLO','LA LEMPIRA COL LEMPIRA 1 CUADRA AL ESTE DE CONSTRUCTORA ETERNA','2565-8312','DEPOSITO EL DESCUENTO','0','15.4095438','-88.1549394','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'162','MANUEL ADOLFO PALACIOS MEJIA','COFRADIA BRISAS DE OCCDIENTE 2 CUADRAS AL NORTE CARRETERA PRINCIPAL','2608-1763','DEPOSITO MARCELA','1','15.4021783333333','-88.1665966666666','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'170','ARALIA REYES RODRIGUEZ','B CABLOTILLO ARADA SANTA BARBARA FRE FERRETERIA GUTIERREZ','9999-0856','PULPERIA REGALO DE CRISTO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'171','JESUS LOPEZ VEGA','CALLE PRINCIPAL ARADA','96600767','PULPERIA LOPEZ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'172','MARIS BONILLA','SAN NICOLAS  SAN NICOLAS SANTA BARBARA  AL FINAL DE BOULEVAR SALIDA ATIMA','96561570','ABARROTERIA JANCEL','1','14.9408974','-88.3293','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'173','SERGIO RODRIGUEZ ORELLANA','SAN NICOLAS SAN NICOLAS SANTA BARBARA 1/2 CUADRA DEL PARQUE BARRIO EL CENTRO','0000-0000','ABARROTERIA SAN JOSE','1','15.1260113','-88.4407','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'174','ALEXIS JAVIER PEÃƒâ€˜A MEJIA','BO EL CENTRO PINALEJO QUIMISTAN','98064786','ABARROTERIA PEÃƒâ€˜A','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'175','ALLAN JAVIER PEÃƒâ€˜A MEJIA','SANTA BARBARA QUIMISTAN','98064786','ABARROTERIA PEÃƒâ€˜A','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'176','ANTONIO POLANCO','SANTA BARBARA SANTA BARBARA AVENIDA LA CONSTITUCION BARRIO EL CENTRO 1/2 CUADRA ARRIBA DE UTH','26432218/99939944','COMERCIAL SANDRA','1','14.916388','-88.233692','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'177','MILTON','LEMPIRA LA UNION','0000-0000','ABARROTERIA ESDUARDO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'178','CERVELIO ZAGASTUME','LEMPIRA LA UNION','0000-0000','PULPERIA JOSUE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'179','NERYS','LEMPIRA LA UNION','0000-0000','MINI SUPER EL IVANO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'558','NELDA LIDIA PINEDA RIO','BO EL CENTRO CONTIGUO HOTEL COLONIAL SB','26431970/05152874','GRANOS Y MAS','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'566','JAVIER ELIAS MEJIA PINEDA','SAN LUIS CONTIGUO ABA EL CENTRO','97322156','LA CONFITERIA','0','14.9189207','-88.2346242','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'581','FREDIS NEPTALI BILLEDO RIVERA','SANTA BARBARA  COLINAS  SANTA BARBARA A LA PAR DE LA MUNICIPALIDAD','33023314','DESPENSA DEL AHORRO','0','15.1508986','-88.260645','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'587','MILTON FERNANDEZ','BO MORAZAN STA BARBARA','96131991','PULPERIA LA ECONOMICA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'588','AIELI SUYAPA FERNANDEZ','BARRIO MORAZAN SAN LUIS','99262276','PULPERIA DON TOÃƒâ€˜ITO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'596','LIKTZA MARIELA LOPEZ CASTILLO','SANTA BARBARA  FRENTE AL PARQUE  QUIMISTAN  SANTA BARBARA','98691641','LA CANASTA BASICA','0','15.3922699','-88.3934477','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'597','FRANCISCO ALFONSO MANSILLA','BO EL CENTRO CONTIGUO VARIEDADES SARAHI TRINIDAD','99145861','ABARROTERIA PAPACHO','1','15.1438109','-88.2346','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'601','KENIA MARICRUS GUERRA','TRINIDAD SB BO EL CENTRO 1/2 CUADRA DEL PARQUE CENTRAL','94899217','CONFITERIA Y BODEGA CAROLINA','1','15.1427803','-88.233902','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'603','JUAN ANGEL ROMERO PRADO','COFRADIA FRENTE AL PARQUE COFRADIA BARRIO EL CENTRO','9864-3586','COMERCIAL ANGELS','1','15.4095038','-88.155','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'882','OBLYN GERARDO MUÑOZ VILLANUEVA','BO LA SOLEDAD CONTIGUO A TERMINAL DE BUSES DEL SUR','1601198100935','BODEGA VICTORIA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'883','YENNYFER ROSIBEL PINTO MERCADO','BO EL CENTRO CALLE PRINCIPAL','98880998','ABARROTERIA JENNYFER','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'884','JUAN CARLOS ORTIZ PEREZ','BO EL CENTRO CONTIGUO A BODEGA MARGOT','9483-9340','MINI BODEGA JUAN CARLOS ','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'888','CRISTIAN ARGUETA','AVE CONSTITUCION BARRIO ARRIBA FRENTE A UTH','9698-1823','COMERCIAL CRISTIAN','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'904970','DISTRIBUIDORA SAN PEDRO','BOULEVAR DEL SUR KM 5  CONTIGUO A CANASA','0000-0000','DISTRIBUIDORA SAN PEDRO SA DE CV','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'94','SOVEIDA ELISABET MADRID','ZACAPA  1/2 CUADRA DEL PARQUE  SOBRE EL BOULEVAR ZACAPA SANTA BARBARA','32017910','ABRROTERIA ANGGIE','0','14.9178159','-88.2345003','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'95','EDUARDO JAVIER SABILLON GUZMAN','COFRADIÂA BARRIO EL CENTRO','2672-1379','ABARROTERIA COFRADIA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'96','AMALDO PINEDA','SAN LUIS B. EL CENTRO ESQUINA OPUESTA BANCO DE OCCIDENTE SAN LUIS','2657-2284','ABARROTERIA EL CENTRO','1','15.124987','-88.441842','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'97','HECTOR AGUSTO LOPEZ','COFRADIÂA COL AREVALO CONTIGUO IGLESIA MORMONA','2672-0863/99142815','ABARROTERIA EL PROFE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'98','BERNABA LOPEZ','SANTA BARBARA PINALELJO CALLE PRINCIPAL FRENTE A LAS CANCHAS','2659-9117/99186816','ABARROTERIA KEITY','1','15.3876533333333','-88.3926216666666','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'109','ELISEO PRADO','COFRADIA  COFRADIA BARRIO EL CENTRO  ESQUINA OPUESTA AL MERCADO MUNICIPAL','2672-1631','CONFITERIA LA BENDICION','0','15.4418269','-88.0205827','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'741','BRENDA CAROLINA GUERRA LOPEZ','LA ARADA BARRIO CAULOTILLO CALLE PRINICIPAL','9995-0356','INVERSIONES GUTIERREZ-GUERRA','1','14.8481634','-88.3071005','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'757','BERTHA ALICIA RAPALO','BO EL CENTRO FRENTE AL PARQUE CENTRAL','0000-0000','ABARROTERIA Y VARIEDADES FABIOLA','1','15.1426338','-88.2335622','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'770','EDIN ENRIQUE PAZ FERNANDEZ','EL COROZAL  TRINIDAD  SANTA BARBARA','9494-7740','MINI DEPOSITO PAZ GOMEZ','0','15.1439146','-88.2363525','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'773','EDWIN RAFAEL RIVERA FERNANDEZ','SAN LUIS SANTA BARBARA  FRENTE A BODEGA YINIER','9579-5974','ABARROTERIA RIVERA','1','15.1250116666666','-88.4424266666666','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'781','RAUL EDGARDO RODRIGUEZ CASTILLO','EL CIRUELO MACUELIZO  CALLE PRINCIPAL','9755-2601','INVERSIONES RODRIGUEZ','1','15.293469','-88.50729','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'782','KATIA ROXANA VELASQUEZ CORTEZ','COFRADIA FRENTE AL PARQUE DONALDO SABILLON','9481-9258','ROXY PLAST','1','15.409528','-88.154734','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'788','MARTA LIDIA GUZMAN','COFRADIA BO SAN MANUEL','96518090','ABARROTERIA LA CENTRAL','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'794','SANDRA YANET ORELLANA','SAN NICOLAS ESQUINA OPUESTA AL PARQUE','9997-1718','ABARROTERIA MARIA JOSE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'454','JOSE MARIO CARDONA','SANTA BARBARA  BARRIO FAROLITO','98553956','BODEGA DON MARIO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'455','BAYRON SAGASTUME','SANTA BARBARA SANTA BARBARA BARRIO FAROLITO. FRENTE A MERCADO MUNICIPAL','95410672','BODEGA Y MINI MARKET ISIS','1','14.918864','-88.233805','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'456','DANILO CHAVEZ COTO','SANTA BARBARA SANTA BARBARA FRENTE A BALNEARIO LAS TORRES.','99840365','PULPERIA DANILOS','1','14.920196','-88.230064','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'457','KEINELO MONCADA PINEDA','COFRADIA  BARRIO EL CENTRO COFRADIA  1/2 CUADRA DE BANCO OCCIDENTE','96486064','MINI SUPER LUCY','0','15.4418637','-88.020564','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'459','WILMER ENAMORADO RIVERA','SANTA BARBARA  COLINAS   SALIDA A SAN LUIS.2 CUADRAS ARRIBA DEL PARQUE','97496780','PULPERIA DUNIA','0','15.1507615','-88.2604878','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'465','YUNI MARCELA RIVERA FERNANDEZ','SAN LUIS  SANTA BARBARA  SAN LUIS  EL CENTRO. FRENTE A BODEGA JUNIER','26572014/31909861','COMERCIAL RIVERA','0','14.9388465','-88.3256468','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'466','GABRIEL PADILLA','SAN LUIS SANTA BARBARA SAN LUIS EL CENTRO. 1/2 CUADRA DE POLLOLANDIA','97874249','ABARROTERIA GABRIEL','1','15.125213','-88.441417','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'467','CARLOS ROBERTO VERAS RIVERA','SAN LUIS  SANTA BARBARA  EL CENTRO  SAN LUIS.1 CUADRA DEL PARQUE CENTRAL','98782801','ABARROTERIA MARIELAS','0','15.1250156','-88.4401986','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'471','MARTA PINEDA','SANTA BARBARA','0000-0000','SUPERMERCADO EL GIGANTE','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'797','HERMINTON ADALID PASCUA SABILLON','TRINIDAD SANTA BARBARA BARRIO EL CENTRO','95229481','MARKET LA CANASTA DEL AHORRO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'803','YONY ALBERTO ECHEVERRIA FIGUEROA','PINALEJO SANTA BARBARA CALLE PRINCIPAL COL. 7 AGOSTO QUIMISTAN','9608-8129/9531-8396','LACTEOS Y ABARROTERIA DOÃ‘A EVELIA','1','15.382309','-88.394439','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'811','JOSE LUIS SABILLON FERNANDEZ','SANTA BARBARA BARRIO SAN JUAN ','0000-0000','ABARROTERIA Y CONFITERIA EL DIAMANTE','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'812','N/A','BARRIO EL CENTRO LA UNION TRINIDAD SANTA BARBARA','0000-0000','ROSARIO ESTELA PEREZ FAJARDO ','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'817','MAYRON OMAR VALLE VALLE','SANTA BARBARA  SAN MARCOS  CALLE PRINCIPAL','3374-9078','MAYRON OMAR VALLE VALLE','1','15.2980116666666','-88.4111599999999','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'820','HERMINTON ADALID PASCUA SABILLON','TRINIDAD SANTA BARBARA ','33749334/95229481','INVERSIONES PASCUA PINEDA S DE R L DE CV','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'823','JOSE ARNALDO PAZ DUBON','SAN MARCOS SANGASPAR SANTA BARBARA','3374-9334','JOSE ARNALDO PAZ DUBON','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'824','LUIS ERRIQUE RIVERA','UNA CUADRA A BAJO DE BODEGA PATA DE PLUMA SANTA BARBARA','95205354','LUIS ENRIQUE RIVERA','1','14.919143','-88.233951','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'825','ELMER ORTIZ PEREZ','SANTA BARBARA BARRIO EL CENTRO UNA CUADRA ABAJO DE BODEGA CARACOL','99137211','BODEGA PATEPLUMA','1','14.918689','-88.233718','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'604','TERESA DE JESUS BORJAS','SANTA BARBARA  BARRIO ABAJO SAN FRANCISCO SAN MARCOS','9462-7276','PULPERIA GOMEZ','0','15.3086059','-88.3578205','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'605','ONDINA MARIEL ROQUE MENDOZA','SANTA BARBARA  COL. EL CENTRO PLAZA ROSA TRINIDAD SANTA BARBARA','9956-2846','CONFITERIA DIAMANTE','0','15.1439565','-88.2332','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'606','BERDA CAROLINA COELLO ENAMORADO','SANTA BARBARA  LA FLECHA  STA BARBARA  CARRETERA A OCCIDENTE','97738738','MINISUPER ENMANUEL','1','15.2958802','-88.4874','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'615','JAVIER ELIAS MEJIA PINEDA','BARRIO EL CENTRO  UNA CUADRA DEL PUNTO DE BUSES  SAN LUIS SANTA BARBARA','9732-2156','LA CONFITERIA # 1  S. DE R. L.','1','15.12537','-88.440899','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'617','CAROLINA ALAS FLORES','SANTA BARBARA CALLE PRINCIPAL PINALEJO QUIMISTAN SANTA BARBARA','9676-0101','ABARROTERIA CAROL','1','15.3914683333333','-88.3929383333333','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'635','FREDYS GEOVANY SAGASTUME PINEDA','CALLE LA HOYA CERCA DE LOS JUZGADOS','98940779','BODEGA Y ABARROTERIA LISSY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'637','MERCI CUBAS','CALLE COMERCIO FRET PUL .EMERSON SAN LUIS STA BARBARA','99198762','JIHRET COMERCIAL','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'651','LEONEL AGUILAR GARCIA','SAN NICOLAS SAN NICOLAS BO EL CENTRO 2 CUADRAS ARRIBA DEL PARQUE','87363837','COMERCIAL BELEN','1','14.9402218','-88.3274','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'654','LUIS DANIEL BU COREA','CALLE AL COMERCIO SAN LUIS SANTA BARBARA','31467322/97762822','INVERSIONES BU','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'472','AMILCAR ORLANDO LOPEZ','SANTA BARBARA','0000-0000','QUESO YOJOA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'478','IRIS BONILLA','QUIMISTAN  PINALEJO','0000-0000','ABARROTERIA ARAGOMEZ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'480','IRIS ORTIZ','SAN NICOLAS SAN NICOLAS FRENTE AL PARQUE. BARRIO EL CENTRO','98163629','ABARROTERIA EDGARDO','1','14.9397016','-88.3274','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'495','RENE BASILIO GOMEZ','SANTA BARBARA  TRINIDAD SANTA BARBARA  BARRIO EL CENRO CALLE HACIA EL COLEGIO','98277249','ABARROTERIA GOMEZ','0','15.1427217','-88.2334371','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'496','FRANCISCO MUNOZ','COFRADIA  COFRADIA 1/2 CUADRA DEL PARQUE ','0000-0000','DEPOSITO Y MINI SUPER EL CENTRO','0','15.411604','-88.1554','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'502','MARIA EUGENIA POU RODRIGUEZ','BO. EL CENTRO PINALEJO','953337263','INALVO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'503','ALDA NOHEMY MORENO','COFRADIA COFRADIA BA EL CENTRO 1/2 CUADRA PARQUE FRENTE A BANCO OCCIDENTE','96763529/99127848','INVERSIONES NOHEMY','1','15.409689','-88.154256','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'504','MARTA VERONICA RODRIGUEZ','COFRADIA CORTES','95326980','ABORROTERIA LIDICEN','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'505','VICTOR ALFONSO ACEBEDO','COFRADIA COFRADIA BARRIO EL CENTRO 3 CUADRAS ARRIBA DEL PARQUE','26721309/31671720','ABARROTERIA ACEBEDO','1','15.412994','-88.1553','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'506','JESUS DAGOBERTO GUTIERREZ','LA ARADA  FRENTE GASOLINERA LA  ARADA  SANTA BARBARA','95708568/2664441','BODEGA GUTIERREZ','0','15.4421858','-88.0203104','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'827','BENEDICTO MELGAR BONILLA','COFADRIA ATRAS DE LOS BOMBEROS ','0000-0000','BENEDICTO MELGAR BONILLA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'835','FREDY LINDOLFO ARITA BARRAZA','AZACUALPA ALDEA EL JOCONAL CALLE PRINCIPAL','96478619','FREDY LINDOLFO ARITA BARRAZA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'837','ELIAS EDUARDO PINEDA PEREZ','EL TIGRE TRINIDAD SB CALLE PRINCIPAL ','97349204','ELIAS EDUARDO PINEDA PEREZ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'850','FERNANDO MISAEL RODRIGUEZ ORELLANA','BO EL CALVARIO','9874-7413','INVERSIONES ANDRES','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'866','OSCAR EDGARDO GUZMAN AMAYA','BO EL NISPERO CALLE PRINCIPAL','9956-3539','INVERSIONES GUZMAN','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'867','JULIA RODRIGUEZ VILLANUEVA','SAN VICENTE CENTENARIO CALLE A SAN NICOLAS SB','9885-0502','INVERSIONES MARTITA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'868','HELGA PATRICIA GARCIA','MEZAPA ATLANTIDA ESQUINA OPUESTA BANASUPRO ','9613-2026','ABARROTERIA SANTA ROSA ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'869','JUAN ANGEL ESCALANTE HERNANDEZ','BO EL LLANON CALLE PRINCIPAL 1 CUADRA ARRIBA DEL MINI PARQUE  COLOR VERDE','9855-6249','ABARROTERIA LUPITA','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'870','IDALMY ROSIBEL ALEMAN SARMIENTO','BO EL LLANON CARRETERA PRINCIPAL A SAN NICOLAS 1/2 CUADRA ARRIBA DE AGROFESA CEL.9722-1041 UNICO NEGOCIO EN EL TRAYECTO','9498-6440','ABARROTERIA EMANUEL','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'660','NORMA GALO','COFRADIA A LA PAR DE POLLO EXPRESS','96460773','CONFITERIA ENMANUEL','0','15.4418269','-88.0205827','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'661','FRANCISCO RAMON MENDOZA GARCIA','BO. EL CENTRO SAN LUIS SANTA BARBARA','9668-7668','INVERSIONES SAMBI','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'669','JUAN ANGEL HERNANDEZ DIAZ','BO TERRA CALLE PRINCIPAL QUIMISTAN','26598533/94608350','ABARROTERIA Y NOVEDADES JACKY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'673','CLMENTINO ROSALES','SANTA BARBARA BO. EL CENTRO LAS CUNTAS MACUELIZO','9517-8903','PULPERIA CLEMENTINO','1','15.338765','-88.4044433333333','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'677','ROBERTO PINEDA RIOS','SANTA BARBARA  BO EL FAROLITO CALLE DEL COMERCIO ATRAS DEL MERCADO MUNICIPAL  SANTA BARBARA','95065978','COMERCIAL SAN CARLOS','1','14.918691','-88.2337788','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'679','JASSUAR ARAHEL TROCHEZ RIVERA','LA ARADA ALDEA EL CABLOTILLO CALLE PRINCIPAL A LA DE BODEGA GUTIERREZ LA ARADA SANTABARBARA','97513411','PULPERIA LA ENTRADA','1','14.9178581','-88.2342','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'681','DENIS MAURICIO PINEDA SAGASTUME','SANTA BARBARA  BO EL CENTRO AVE CONSTITUCION A LA BOD. MARCOG  SANTA BARBARA','98306669','ABARROTERIA SAGASTUME','0','14.9179889','-88.234658','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'725','OLMAN BANEGAS','COL. GRACIAS A DIOS CALLE A OCCIDENTE  COFRADIA CORTES','31814097','INVERSIONES CELESTINO','1','15.406372','-88.145348','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'739','SERVIO TGERUEL SAGASTUME','CUADRA I/2 DEL PUENTE ILAMA SANTA BARBARA','9782-6945','DISTRIBUIDORA DAMER','1','15.065531','-88.2258987','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'163','JUAN ANGEL TROCHEZ','BARRIO EL CENTRO MEJIA CUADRA ARRIBA DEL PARQUE','2664-5739','PULPERIA TROCHEZ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'164','OLGA MUÃƒâ€˜OZ TERRUEL','BARRIO EL CENTRO DOS CUADRAS ARRIBA DEL PARQUE','2664-5627/98111847','COMERCIAL OLGUITA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'165','CARLOS STANLY MUÃƒâ€˜OZ','BARRIO EL CENTRO CONTIGO AL PARQUE CONTIGO A TIGO','2664-5767/99224505','ABARROTERIA MUÃƒâ€˜OZ','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'166','HECTOR ALCANTARA PEREZ','BARRIO EL CENTRO UNA CUADRA ABAJO DEL PARQUE','99656173','COMERCIAL ALCANTARA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'167','JUAN PABLO CHAVARRIAS','SANTA BARBARA  CALLE PRINCIPAL HACIA SANTA BARBARA   LA CEIBITA','9999-6436','MINI SUPER CEIBITA','0','15.1508375','-88.2605981','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'168','EDGAR MANUEL LOPEZ MADRID','BO EL CENTRO COFRADIA 1/2 CUADRA ABAJO PARQUE FTE INVERSIO','2672-2216/98230301','ABARROTERIA LA BENDICION','1','15.411838','-88.1556','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'169','JOSE ANTONIO RAPALO','BARRIO EL CENTRO PINALAJO','9917-7171','ABARROTERIA RUTH','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'450','WILLMER GEOVANI ORTIZ','SAN PEDRO SULA','0000-0000','ABARROTERIA SUPER LA ECONOMICA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'451','YESSI ANARDA DUBON AMAYA','SAN VICENTE','98233170','MINI BODEGA MI ESFUERZO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'99','DANILO POPEZ RIVERA','SANTA BARBARA  COLINAS BARRIO EL CENTRO  ESQUINA OPUESTA DE LA IGLESIA CATOLICA','2657-0025','ABARROTERIA KENIA','0','15.4093715','-88.1268868','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'510','DUNIA MARIBEL AGUILAR RODRIGUEZ','COFRADIA COL DOSMIL CALLE PRINCIPAL','99803887','ABARROTERIA EL REY','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'513','ISRAEL PINEDA SABILLON','BO EL CENTRO CALLE COMERCIO SAN LUI SANTA BARBARA','26572129','BODEGA LELITO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'514','IVAN VLADIMIR POLANCO','BO. LLANO DEL CONEJO STA BARBARA','26432983/99484029','SUPER BODEGA POLANCO','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'534','JOEL BENITEZ PORTILLO','ATIMA ATIMA SANTA BARBARA FRENTE AL PARQUE BARRIO EL CENTRO','99826088','ABARROTERIA BENITEZ','1','14.9315948','-88.4900661','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'539','IVAN VLADIMIR POLANCO','LLANO EL CONEJO FTE CANCHA ARUXA ESTADIO SB','26432983/99484029','COMERCIAL POLANCO','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'550','ALEX SMITH ACOSTA','BRISAS DEL VALLE  BRISAS DEL VALLE  A ORILLA DE LA  CARRTERA A OCCIDENTE','98467038','ABARROTERIA LA BENDICION','0','15.409547','-88.1549358','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'551','ANGEL HERNANDEZ ENAMORADO','FRENTE CALLE PRINCIPAL','99061485','PULPERIA ANGEL','0','15.4418916','-88.0205625','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'879','MARCOS MANRIQUE PINTO MERCADO','COL BUGIRON FRENTE A HONDUTEL','9966-0436','BODEGA EL AMIGO','1','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'881','ADA CAROLINA MEJIA','BO EL CENTRO FRENTE S/M LA COSECHA ','33776414','COMERCIAL MUNGUIA','0','0','0','481');
INSERT INTO Clientes_impulsadoras VALUES(0,'180','ROLANDO MINERO RODAS','PEÃ‘A BLANCA  FRENTE A BODEGA Y LACTEOS DEYSI','95868028','ABARROTERIA LA CAZONA','1','14.969335','-88.027148','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'181','MIRIAM SUYAPA ALVARADO','SANTA CRUZ BARRIO EL CENTRO','2654-8516','ABARROTERIA ALBARADO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'182','ERMI UMAÃ‘A','SANTA CRUZ DE YOJOA  CALLE PRINCIPAL','0000-0000','ABARROTERIA BASICOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'183','ARMANDO MOLINA TURCIOS','BARRIO EL CENTRO CALLE DEL MERCADO','2654-8174/ 3337-1498','ABARROTERIA CLAUDIA','1','14.981129','-87.890779','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'184','BLADIMIR CASTRO LOPEZ','ALDEA EL CHILE  CARRETERA A PUERTO CORTES','9872-9215','ABARROTERIA CRISTEL','1','15.825764','-87.882223','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'185','LEONARDO GOMEZ','COL.LOPEZ UNA CUADRA DEBAJO DE LA DESPENZA','2669-8446','ABARROTERIA CRISTHIAN','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'186','FRANCISCO RAMIRES','BARRIO GENERAL MADRID CALLE PRINCIPAL','2660-5286','ABARROTERIA EBENEZER','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'187','DILMA BRIONES','COL. LOPEZ ARELLANO CALLE AL COLEGIO  FRENTE A ZONA FAMILIAR','2669-8816','ABARROTERIA EL PRECIO JUSTO','1','15.5726866666666','-87.95149','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'188','MARIA LEONOR FERNANDEZ PINEDA','SANTA CRUZ BARRIO EL CENTRO UNA CUADRA AL NORTE DEL MERCADO','9450-7110','ABARROTERIA FERNANDEZ','1','14.9825266666666','-87.8909466666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'189','OSMAR RODRIGUEZ','SANTA BARBARA LA VEGAS  COSTADO DE CAMPO DE AVIACION','96154637','COMERCIAL LAS FLORES','1','14.8741983333333','-88.0718383333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'213','YURY ESQUIBEL','LOPEZ','2695-6304/95323730','ABARROTERIA DANNA # 2','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'214','DANIEL CALDERON','CHOLOMA','9578-5268','ABARROTERIA DANNI','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'215','ANTHONY BERNARDINO SERRANO','BARACOA CORTES ENTRADA A LA CALLE PRINCIPAL','9745-5475','ABARROTERIA EMANUEL','1','15.6155016666666','-87.9376133333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'216','MELVIN GUSTAVO REYES','MERCADO SAN JOSE PUERTO CORTES  EN EL INTERIOR DEL MERCADO','2665-6360/96416836','CONFITERIA MI ESPERANZA','1','15.8465483333333','-87.9450033333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'217','NOLVIA AMAYA','CHOLOMA','9744-7075','CONFITERIA KING','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'218','LOURDES ORTEGA','BO. EL BANCO  CENTRO DE CHOLOMA','9916-6351','CONFITERIA LULA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'219','MARINA ORTIZ REYES','PUERTO CORTES','2665-0139','CONFITERIA REYES','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'220','CLAUDIA LORENZA MEZA STEVES','BO. EL BANCO 3 CALLE A AVE','9626-9988','CONFITERIA SANTA LUCIA','1','15.610913','-87.954161','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'221','RENE OSMIS TROCHEZ','BARRIO EL CENTRO  CALLE PRINCIPAL   1/2 CUADRA DE GASOLINERA','9833-7351','COMERCIAL FABIOLA','1','14.8754233333333','-88.0701783333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'222','JOSE ALFREDO KATAN','CALLE PRINCIPAL MEDIA CUADRA IGLESIA CATOLICA BARRIO LAS FL','2673-8174','ABARROTERIA KATHAN','1','15.229405','-87.965739','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'223','LAZARO PERDOMO ARGUETA','PEÃ‘A BLANCA  CALLEJON ACCESO A SUPERMERCADO LA FAMILIA','3338-7277','DULCERIA EL PANAL','1','14.9669483333333','-88.0255','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'224','DENIS RIVERA','BO. CONCEPCION CALLE PRINCIPAL ESQUINA OPUESTA BANCO CONTINENTAL','2654-8189','ABARROTERIA SUPERMERCADO DENIS','1','15.1129149999999','-87.9311416666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'225','RENE GONZÃƒÂLEZ','SAN BUENA VENTURA CALLE PRINCIPAL','9696-1164','MINI SUPER BETHEL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'226','SANDRA SANCHEZ','FRENTE AL BANCO DE LOS TRABAJADORES LAS VEGAS','2659-3613','ABARROTERIA CAROLINA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'227','KAREN SABILLON','BARRIO LOS PINOS FRENTE A LA ESCUELA','9949-4221','ABARROTERIA EBENEZEER','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'228','DALIA ESPERANZA HERNANDEZ','CALLE PRINCIPAL  ENTRANDO A PEÃ‘A BLANCA','3351-8027','MINI SUPER LA FAMILIA S DE R.L. DE C.V.','1','14.971564','-88.028748','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'229','FELIX ACOSTA','ZONA B CALLE PRINCIPAL LAS CASCADAS','8565-2610','PULPERIA LOS HERMANOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'230','MINI SÃƒÅ¡PER MAS POR MENOS','PEÃ‘A BLANCA','0000-0000','MINI SUPER MAS POR MENOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'231','ELENA QUIROZ VENTURA','CALLE PRINCIPAL SAN ANTONIO ANTES DEL LLEGAR AL PARQUE','2660-5222','PULPERIA ELENITA','1','15.6155221','-87.9376409','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'232','YESENIA BEATRIZ BELTRAN','BARRIO EL CENTRO FRENTE A LA LLANTERA LAS VEGAS','659-3316','MINI SUPER YESENIA','1','14.8743883333333','-88.0702883333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'191','LESLY MARGOT MADRID','BARRIO EL CENTRO FRENTE AL PARQUE CENTRAL','2667-6929','ABARROTERIA MARTINEZ','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'192','ROSA ROMERO','SANTA CRUZ BARRIO EL CENTRO','9549-3164','ABARROTERIA MDO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'193','MARIA DEL CARMEN SOSA','RIO LINDO  CALLE PRINCIPAL A PEÃ‘A BLANCO','9938-6366','ABARROTERIA PATTY','1','15.0426799999999','-87.9877766666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'194','JOSE ALFREDO LUNA MORENO','BO. EL CENTRO SANTA CRUZ FTE AL MERCADO MUNICIPAL','9608-1745','ABARROTERIA SAN JOSE','1','15.4910083333333','-88.0340383333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'195','NELSON CASTELLON','SANTA CRUZ','2654-8667','COMERCIAL DONAL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'196','DAVID CHAVEZ ZUNIGA','FRENTE AL MERCADO MUNICIPAL  CHOLOMA','2669-0460','BODEGA DAVID','1','15.6155099999999','-87.93777','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'197','DANILO DE INOCENTES','PUERTO CORTES','2665-0936','BODEGA IRIS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'198','JOSE MANUEL CALDERON','SANTA RITA BELLA VISTA  1/2 CUADRA DEL DESVIO A YORO','2667-6133','ABARROTERIA ELIZABETH','1','15.204045','-87.8795866666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'199','HUMBERTO YANEZ','SANTA RITA FRENTE AL PARQUE','2667-6150','BODEGUITA LA ECONOMICA','1','15.196675','-87.88074','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'200','XIOMARA YAMILETH CRUZ','CALLE PRINCIPAL DE SANTA RITA','2667-7667','BODEGUITA YOSIENY','0','15.1117506','-88.0392405','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'201','SILVIA YOLANDA PINEDA FERNANDEZ','BARRIO EL CENTRO  FRENTE A BODEGA Y LACTEOS DEYSI','2654-8878','BODEGA ELENITA','1','14.982285','-87.890959','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'202','ONOFRE ENAMORADO','PEÃ‘A BLANCA  CONTIGUO A SUMERCADO CHIQUI','3353-8355','BODEGUITA KAREN','1','14.9679866666666','-88.025815','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'203','SANDRA LIZETH ARDON QUEZADA','BARRIO EL CENTRO CALLE PRINCIPAL  CONTIGUO A FAMACITY','2659-3194','COMERCIAL CABALLERO','1','14.8734533333333','-88.0709416666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'204','EMMA SORTO','COL. LA ESPERANZA  RIO BIJAO','2669-2683/99166107','COMERCIAL EL TRIUNFO','0','15.8467671','-87.9455443','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'205','OSMAN FLORES','COL. ARMANDO GAEL  FTE CAMPO DE FUTBOL','3230-8802','ABARROTERIA FLORES','0','15.6156688','-87.9376288','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'206','ANIBAL CASTELLANOS','BARRIO EL CENTRO LAS VEGAS','2659-3787','COMERCIAL JAIRO','0','14.8743168','-88.0710226','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'207','DAYSI WALDINA BONES','SAN ANTONIO DE CORTES FRENTE AL PARQUE','2660-5127/99230560','COMERCIAL JUANY','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'208','LUIS ALONSO VACA RODRIGUEZ','BARRIO BELLA VISTA','2667-7027','COMERCIAL  LOURDES','0','15.2044396','-87.8796971','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'209','MINI SUPER SAN ANTONIO S DE RL','SAN ANTONIO FRENTE AL PARQUE','2660-5105','MINI SUPER SAN ANTONIO S DE RL','1','15.115831','-88.04011','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'233','MELSI LOPEZ','BARRIO EL CENTRO RIO LINDO','9972-8810','ABARROTERIA MELSI','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'234','ANASTACIA GARCIA','1/2 CUADRA ARRIBA DEL BANCO ATLANTIDA RIO LINDO','9831-9961','PULPERIA LOS REYES','0','15.0446378','-87.9865944','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'235','SALVADOR ORELLANA','CALLE PRINCIPAL DESVIO A LA FE PEÃ‘A BLANCA','2650-0107','PULPERIA ORELLANA','1','14.975435','-88.030279','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'236','MANUEL RAMIRES','UNA CUADRA DEBAJO DE LA TERMINAL','2659-3646','ABARROTERIA RAMIREZ','1','14.877675','-88.06752','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'237','VICTOR ORELLANA','BARRIO EL CENTRO PIMIENTA','26503354','PULPERIA VICTOR','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'238','DOUGLAS CASTILLO','PEÃ‘A BLANCA','0000-0000','SURTI DORA CASTILLO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'239','MIRNA MELENDEZL','CALLE PRINCIPAL A LA PAR DEL BILLAR','9802-4290','TIENDAS MARY','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'240','LUCIA MEDRANO','CALLE PRINCIPAL OMOA','0000-0000','DEPOSITO DINORA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'241','DAVID AGUILAR','CALLE PRINCIPAL SAN ANTONIO CORTES','9608-3126','PULPERIA LUZ','1','15.092635','-87.97739','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'242','JAIME CUELLO','BO. EL CENTRO VILLANUEVA','0000-0000','SUPERMERCADO TOTOS','1','15.3133036','-87.9933098','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'243','PEDRO JOSE BALLADARES','CORTES','2665-0209','ABARROTERIA SUPER BARATO #1','1','15.84711','-87.9466533333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'501','NUVIA LIZETH VASQUEZ','B0.CONCEPCION CONTIGUO A COMERCIAL ROSITA','26548045/97873563','NUVIA LIZETH VASQUEZ SANCHEZ','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'508','NIDIA BELDINDA DELGADO','SECTOR LOPEZ LOMAS DE LAS CASCADAS 3 ETAPA CASA 1637','98330291','ABARROTERIA EBENEZER','1','15.611694','-87.954283','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'521','NORMA RIVERA','POTRERILLOS BO SAN MIGUEL  1 CUADRA ABAJO DE LA MUNICIPALIDAD','26738899','MINI DEPOSITO NYRAB','1','15.2297299999999','-87.9654266666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'522','LUIS ALBERTO LOPEZ','BO EL CENTRO SANTA CRUZ DE YOJOA  FRENTE A BODEGA CLAUDIA','26548115/97428796','L Y M','1','14.981723','-87.890198','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'523','DUNIA YANETH GARCIA','BO EL CENTRO SANTA CRUZ YOJOA','99235067','PULPERIA ALICIA','1','14.983443','-87.891141','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'524','SANTOS PERDOMO','BO EL CENTRO CALLE PRINCIPAL STA CRUZ YOJOA','0000-0000','FRUTAS Y VERDURAS KIQUE','0','14.9830031','-87.8900375','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'525','LUIS ABDON MONTALVAN LOPEZ','RIO LINDO FTE AL PARQUE RIO LINDO','95959254','ABARROTERIA LOPEZ','0','14.9829294','-87.8900476','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'526','OSCAR ANIBAL NUÃƒâ€˜EZ HERNANDEZ','BO EL CENTRO STA CRUZ DE YOJOA','0000-0000','LA FORTALEZA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'527','LUIS MARIO ALONSO','BO EL CENTRO SANTA CRUZ  CALLE PRINCIPAL','0000-0000','NOVEDADES LUIS MARIO','0','14.9830184','-87.890042','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'537','ISMAEL HERNANDEZ HERNANDEZ','CHOLOMA SALIDA A PUERTO CORTES','32327118','ABARROTERIA NORTE','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'244','LUIS ALONZO ESCALANTE GAMEZ','BARRIO CAMAGUEY CALLE PRINCIPAL CORTES','6065-6070','ABARROTTERIA Y NOVEDADES LUISITO','1','15.846895','-87.945125','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'245','CARMEN ANGELICA MEDINA CHACON','CALLE PRONCIPAL DE LA LOPEZ CONTIGUO MULTICABLE','98190645','ABARROTERIA BENDICION','0','15.4935362','-88.0004753','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'246','DANILO CHAVEZ','MERCADO SAN JOSE','2665-0936','ABARROTERIA DAVID','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'247','LIDIA ANTONIA FUENTES MADRID','CALLE HACIA YORO SANTA RITA','2667-7639','ABARROTERIA SAN ANTONIO','1','15.6155233333333','-87.9375316666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'248','MAURICIO GARCIA','BARRIO EL CENTRO CALLE PRICIPAL  SANTA CRUZ DE YOJOA','96251260','PULPERIA RONAL','1','14.983261','-87.891168','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'249','SERGIA LIIDA PINEDA','BARRIO EL CENTRO MEDIA CUADRA DEL CENTRO DE SALUD','2608-3744','ABARROTERIA LIDIA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'250','LUIS ORELLANA','BARRIO EL CENTRO','2654-9199/96168024','ABARROTERIA SANTA CRUZ','0','14.982534','-87.889933','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'251','DENIS MARTINEZ','BARRIO EL CENTRO MEDIA CUADRA ANTES DE FERRETERIA RECORD','9480-0853','ABARROTERIA LA NUEVA','1','14.981004','-87.890331','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'252','GLADYS VELASQUEZ','CALLE PRINCIPAL BARRIO CONCEPCION','2654-5285/97948448','ABARROTERIA VELASQUEZ','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'253','MAIRA JANETHC CRUZ SORTO','02 CALLE 3 Y 4 AVENIDA BO EL BANCO FRENTE TERMINAL BUS CARA','98459332','BODEGA MOISES','1','15.6113366666666','-87.95403','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'254','THELMA SINAI MERCADO','COLONIA LOPEZ CALLE PRINCIPAL','2694-5679/98815244','BODEGA LA ECONOMICA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'255','ELVIA JACKELINE RIVERA','COLONIA TRINCERA FRENTE AL CAMPO','96747098','DEPOSITO JORGITO','1','15.582819','-87.951506','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'256','MIRNA ETHEL MARTINEZ HERNNDEZ','BARRIO EL CENTRO CALLE PRICIPAL','2659-3303','COMERCIAL NAHOMI','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'257','ANTONIO BERNARDINO  SERRANO','BARRIO EL CENTRO CONTIGO A ABARROTERIA CHIQUI.','9847-8241','ABARROTERIA EMANUEL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'258','YADIRA SABILLON/ROGER REYES','BARRIO EL CRUCE A LA PAR DE ABARROTERIA EMANUEL','2650-0157/97937476','ABARROTERIA CHIQUI','0','14.9675026','-88.0257737','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'259','MARIO CARRASCO','BARRIO EL CENTRO CONTIGO A COOPERATIVA USULA','2654-8821','ABARROTERIA ECONOMICA','1','15.543885','-88.0094','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'260','SANTOS REMBERTO CERRATO SANDOVAL','COLONIA SAN JUAN SAN ANTONIO CORTES','9970-0017','DOÃƒâ€˜A SANTOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'261','ROSA MARGRITA MOREIRA MARTINEZ','CALLE PRINCIPAL ENTRADA SANTA RITA YORO','0667-6308','ABARROTERIA MOREIRA','1','15.205041','-87.879252','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'262','MARIBEL LOPEZ','CALLE PRINCIPAL COLONIA INFOP FRENTE AL CAMPO POTRERILLOS','2673-8860','PULPERIA LOS COCOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'264','MARCO ANTONIO PERDOMO','BARRIO EL CENTRO CALLE PRINCIPAL','9842-5573','ABARROTERIA GUAMITO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'265','NADIA PAOLA MEZA DE URBINA','BARRIO EL CENTRO CALLE PRINCIPAL STA RITA YORO','9927-1183','CONFITERIA MARANATHA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'266','GREGORIO MOLINA','COLONIA CEDEN 02 CALLE. SANTA RITA YORO .','9941-1591/26676218','GREGORIO MOLINA','1','15.20382','-87.8814449999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'267','MARIA ISABEL PINEDA NAVARRO','ALDEA LA CAMPANA PUERTO CORTES','94980651','ABARROTERIA ARCA','1','15.8108783333333','-87.85026','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'268','MIRTA JESSENIA CANELAS','COL LA LIVERTAD CALLE PRINCIPAL CEPTOR LOPEZ ARELLANO','97517467','PULPERIA VANESSA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'269','SUYAPA ZUNIGA SOLIS','COL LOPEZ ARELLANO CALLE PRINCIPAL A 1/2 CUADRA IGLESIA CAT','9812-9139','ABARROTERIA YILIAN','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'270','MIRIAM MARGARITA PALMA BONILLA','COL VICTORIA CALLE PRINCIPAL SEPTOR LOPEZ ARELLANO','9918-4957','ABARROTERIA BENDICION','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'271','ENRRIQUE FUENTES','BARRIO VELLA VISTA SALIDA A YORO','9912-2268','ABARROTERIA FUENTES','1','15.2047083333333','-87.8790783333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'272','FANNY PATRICIA PERDOMO SUAZO','BO CONCEPCION CONTIGO A MERCADITO DENNIS SANTA CRUZ YOJOA','9767-8132','ABARROTERIA ADBIEL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'273','JUAN ANGEL MORALES MONTES','COL LIBERTAD SECTOR LOPEZ CALLE PRINCIPAL','9917-0397','ABARROTERIA ANGELES','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'274','WENDY LIZETH LOPEZ RODRIGUEZ','PEÃ‘A BLANCA BARRIO EL CENTRO CALLE PRINCIPAL','9639-2797','MINI SUPER SAFIRO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'275','CINTHIA JACKELINE PINEDA','SAN ANTONIO CORTES','95779999','CINTHIA PINEDA','0','15.0988258','-87.9650398','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'276','REYNA ARGENTINA CASTELLANOS MUÃƒâ€˜OZ','SANTA CRUZ','970040047/96525804','CONFITERIA REYNA','0','14.9822252','-87.8899917','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'277','DAMARA JASMIN CASTELLON','CALLE DE COMERCIO  SANTA CRUZ','25548339','CANDY SNACK DANEL','1','15.6154049999999','-87.9375766666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'278','ELBIN ZABALA ZABALA','SANTA CRUZ CONCEPCION','0000-0000','ABARROTERIA PENIEL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'279','ELDER RENE SANTOS','LOPEZ ORELLANA','0000-0000','ABARROTERIA ASCHELY','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'280','WILMER ANTONIO EUCEDA','CHOLOMA  FRENTE A BODEGA DON POPO','26690682/31930808','ABARROTERIA Y CONFITERIA FLORES','1','15.611313','-87.954311','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'281','SANTOS RODRIGUEZ','CHOLOMA CORTES','95775008','MERCADITO EL AGRICULTOR','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'282','KARLA RODRIGUEZ','RIO LINDO','97578439','MINI SUPER YANELY','0','15.0442548','-87.9871553','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'283','OSCAR DAVID GARCIA','RIO LINDO CALLE PRINCIPAL','0000-0000','MINISUPER EL KIOSKO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'284','LEONCIO FLORES','PIMIENTA CORTES FRENTE ESTACION POLICIAL','99359605','TROPICOS DEL ESTE','0','15.0429389','-87.9877278','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'538','ADAN HERNANDEZ','RIO LINDO CALLE PRINCIPAL FTE BCO ATRLANTIDA','99787374','ABARROTERIA HERNANDEZ','1','15.045038','-87.986544','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'553','MARVIN GERARDO ORTIS ASEGUERA','BARRIO EL BANCO CHOLOMA','97801740','ABARROTERIA EL SUREÃƒâ€˜O','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'554','HECTOR RENE NUÃƒâ€˜EZ','3 CALLE 4 AVE SO B. EL BANCO','26690426','BODEGA NUÃƒâ€˜EZ','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'565','ELIA YAMILETH FERNADEZ','BO EL CENTRO STA CRUZ YOJOA','95695169','ABARROTES NICOLL','0','14.9822435','-87.890476','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'572','LORENA SOZA','EL PORVENIRCORTES FTE A LA OCOTEPEQUE','98187190','ABARROTERIA SOZA','0','15.82385','-87.9276737','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'574','GLORIA CRUZ','SAN MIGUEL PROTRERILLOS  TRES CUADRAS ARRIBA DEL PARQUE','26738118','TAJADITAS GLORIA','1','15.2298383333333','-87.96697','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'576','SERGIO MAURICIO GARCIA','BO EL BANCO A LA PAR E CONF.EMANUEL','26693370','GRANOS GARCIA','1','15.6102316666666','-87.9534316666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'577','NANCY LORENA GUTIERREZ','COL EXITOS # 1 SECTOR LOPEZ COSTADO FERRETERIA','0000-0000','BODEGA GUTIERREZ','1','15.573282','-87.949644','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'578','LORENA SUYAPA SOSA SANCHEZ','BO EL PORVENIR PUERTO CORTES  FRENTE SUPERMERCADO OCOTEPEQUE','98187190','COMERCIAL SOSA','1','15.615625','-87.9377766666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'579','LUIS ARMANDO LON NUÃƒâ€˜EZ','PUERTO CORTES','97314864','CONFITERIA GUARITA N0.2','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'285','RICADO PINTO','RIO LINDO BO EL CENTRO','99919454','CONFITERIA Y PLASTICOS PATTY','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'286','GERSON AVELAR','CHOLOMA CORTES','0000-0000','ABARROTERIA J Y V','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'287','N/A','POTRERIOS CORTES','0000-0000','PULPERIA CHAGUIE','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'288','JOSE LEONEL RAMIREZ','CHOLOMA CORTES','95395548','CONFITERIA LULU','0','15.57292','-87.9514802','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'289','NANCI RAPALO','SANTA CRUZ','0000-0000','MINISUPER EMANUEL','0','15.8418152','-87.9330506','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'291','N/A','OMOA CORTES','0000-0000','ABARROTERIA GETZEMANY','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'411','JUAN MEDINA','ALDEA LOS LLANOS YORO SANTA RITA  1/2 DEL CEMENTERIO','94772519','BODEGA MEDINA','1','15.2069216666666','-87.8799066666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'443','TEDI SANCHEZ','PEÃ‘A BLANCA CALLE PRINCIPAL A LAS VEGAS','88258128','MINI SUPER EL PADRINO','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'444','OSCAR ALEXIS REYES CASTELLANOS','PEÃ‘A BLANCA CALLE PRINCIPAL A LAS VEGAS  CONTIGUO A KAREN','0000-0000','MINI SUPER CHIQUI','1','14.9675183333333','-88.02584','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'452','ROBERTO FLORES','N/A','0000-0000','ROBERTO FLORES','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'475','MAURA LINDALI VILLANUEVA','BARRIO EL CENTRO.','95154659','CONFITERIA EMMANUEL','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'716','PEDRO JOSE BALLADARES ','CARRETERA PRINCIPAL   SALIDA A OMOA   PTO. CORTES','2565-0209','ABARROTERIA SUPER BARATO #2','1','15.8470116666666','-87.9467783333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'717','PEDRO JOSE BALLADARES','2 Y 4 AVE. 8 CALLE  PUERTO CORTES  CORTES ','2565-0209','ABARROTERIA SUPER BARATO #3','1','15.8473799999999','-87.9471533333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'720','FRANCISCO JAVIER CRUZ SERRANO','ALDEA CUYAMEL CALLER PRINCIPAL UNA CUADRA ADELANTE DE BANRURAL','9528-9905','SURTIDORA CRUZ','1','15.8472333333333','-87.9465849999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'722','SOBEIDA YADIRA VALDIVIEZO LOPEZ','BO.ABAJO CHOLOMA FTE A FARMACIA KIELSA 1 CUADRA ANTES DE BANCOCCI','9475-6941','INVERSIONES BARUCK SRL','1','15.611198','-87.949283','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'724','OBDULIO RODIRGUEZ CORTE','CUYAMEL BO. EL CENTRO FTE A CENTRO SOCIAL','3144-0611','MINI SUPER RODRIGUEZ','1','15.6157133333333','-87.9376299999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'745','TANIA KARINA RODRIGUEZ ARITA','CALLE PRINCIPAL COLONIA LOPEZ ARELLANA FTE. A FARMACIA KIELSA','3386-8078','ABARROTERIA LA FAMILIA','1','15.572511','-87.950082','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'747','VICTOR MANUEL GARCIA AMAYA','CALLE PRINCIPAL UNA CUADRA ARRIBA DE POLLOS FRANCISCA SAN ANTONIO DE CORTES CORTES','9556-3885','MERCADITO LA VEINTE','1','15.113314','-88.038722','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'749','JOSE LEONEL RAMIREZ VILLANUEVA','SEGUNDA CALLE TERCERA AVENIDA RECIDENCIAL QUINTA SAN MIGUEL CONT. A GALLO MAS GALLO','95395548','INVERSIONES RAMIREZ MUÃ‘OZ','1','15.611322','-87.953412','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'752','JUNIOR CARIM RAMIREZ MUÃ‘OZ','RESIDENCIAL QUINTA SAN MIGUEL BARRIO EL BANCO 3 AV. 2 Y 3 CALLE','95395548','INVERSIONES LULU JR','1','15.442235','-88.0203116666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'760','HERNAN WILFREDO SANTOS CROASDAILE','BARRIO LEMPIRA CUYAMEL OMOA CORTES ','88727484','ABARROTERIA MI PUEBLO SUPERMARKET','1','15.8470166666666','-87.9467533333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'763','JUAN CARLOS ','RIO LINDO CORTES BARRIO EL CENTRO ','95511595','DISTRIBUIDORA DIPROSAR','1','15.043066','-87.987127','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'768','LINTON JOEL POSANTES SOLIS','COL. LOPEZ ARELLANO CHOLOMA (1 CUADRA AL OESTE DEL PARQUE)','9583-8760','PULPERIA STEVEN','1','15.5715533333333','-87.9535483333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'769','EDNA LILIAN CANALES','ALDEA SAN ISIDRO C. PPAL. STA. CRUZ DE YOJOA','8846-3855','PULPERIA JOHAN','0','14.980859','-87.89059','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'771','EUGENIO DUBAN','B. EL CENTRO LA GRAN PLAZA FTE. A ESTACION DE BOMBEROS CHOLOMA','9717-8077','INVERSIONES MULTIPLES DUBON FIGUEROA S. DE R.L.','1','15.615475','-87.9376549999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'783','CARLOS IVAN MORALES BOJORQUEZ','BARRIO EL CENTRO POTRERILLOS FRENTE AL PARQUE','89314122','PULPERIA EMANUEL','1','15.2297116666666','-87.9658116666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'789','DEYSI ORELLANA MARTINEZ','PEÃ‘A BLANCA CALLE PRINCIPAL  FRENTE A LA CAZONA','3185-9841','BODEGA Y LACTEOS DEYSI','1','14.9691466666666','-88.0271516666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'796','SELVIN JAVIER LOPEZ RAMIREZ','SAN LUIS SACATALES','9901-4998','PULPERIA JAVY','1','15.135045','-87.9091105','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'800','NORA LIZZETT','B. EL CHAPARRO 4TA CALLE 12 AVE FRENTE AL CEIBON','97829765','SURTIDORA LIZZETT','1','15.609735','-87.9525049999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'801','GLADIS OSIRIS VALDEZ CRUZ','B EL BANCO 3RA CALLE 4TA AVE CHOLOMA','3147-4879','COMERCIAL ALYS','1','15.6155916666666','-87.9377183333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'810','BAYRON ROLANDO OLIVA ESQUIVEL ','SECTOR VILLANUEVA COMEDOR EL TRIANGULO SALIDA A TEGUCIGALPA','0000-0000','WAL BRO DISTRIBUIDORA Y SUPERMERCADOS S DE RL ','0','15.6154016666666','-87.9376949999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'815','SURTIDORA CHOLOMEÃ‘A','BOULEVAR FRENTE A TEXACO  CHOLOMA','95395548','JOSE LEONEL RAMIREZ VILLANUEVA','1','15.613072','-87.957055','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'819','SANDRA RAQUEL LOPEZ ESTEVEZ','BO EL CENTRO CALLE DEL COMERCIO PEÑA BLANCA','9838 5803','INVERSIONES ISABELLA','1','14.9675983333333','-88.0258716666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'821','SANDRA RAQUEL LOPEZ ESTEVEZ','BARRIO EL GUAYABO CARROT HACIA LA FE ','0000-0000','SANDRA RAQUEL LOPEZ ESTEVEZ','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'8359','LINDA NOHELIA AMAYA MORALES ','OMOA CALLE PRINCIPAL DE CORTESITO FRENTE A EVENTO PESCADO','33064519/ 25543881','DISTRIBUIDORA  OLAMAYA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'849','LETICIA YOJANA MIRANDA VASQUEZ','BARRIO CONCEPCION  SANTA CRUZ DE YOJOA','9680-7618','ABARROTERIA MIRANDA','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'851','PEDRO JOSE BALLADARES','BO. SAN FERNANDO  CARRETERA CA-13 FRENTE A MUNICIPALIDAD DE OMOA','2565-0209','ABARROTERIA SUPER BARATO #4','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'582','GLENDA CALLEJAS','CALLE PRINCIPAL LOPEZ ARELLANAO','0000-0000','BODEGUITA DAYANI','1','15.5727083333333','-87.9514799999999','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'612','CINTIA DINORA LOPEZ AGUILAR','EL CENTROFRENTE A FINSOL','3357-9760','CONFITERIA CINTIA','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'614','YADIRA CONSUELO SABILLON','PEÃƒâ€˜A BLANCA BOE L CENTRO CRUCE HACIA LAS VEGAS','26500157/97937476','ABARROTERIA AARON','0','14.9682542','-88.026274','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'622','OSCAR ROLANDO LOPEZ','B CONCEPCION FRTE CONFITERIA COREA','26548051','PULPERIA LOPEZ ROMERO','0','14.9830288','-87.890332','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'623','PETRONA MANCIA ENAMMORADO','1/2 CUADRA ABAJO DE PARQUE CALLE PRINCIPAL','0000-0000','MANA ABARROTERIA','0','14.9829709','-87.8899543','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'624','JOSE ABRAHAN PUERTO VENTURA','1/2 CUADRA DE MERCADITO DENIS','98303677','BODEGA EL BUEN PRECIO','0','14.9821619','-87.8900065','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'628','BELINDA YANETH JULIN','CERRO VERDE LOMAS DE CASCADA LA LOPEZ CALLE PRINCIPAL FRENTE AL PALLASO','9693-2483','ABARROTERIA GRACIAS A DIOS','1','15.5637666666666','-87.9340916666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'629','ELIA ROSINA CASTELLANO PUERTO','BO. EL CENTRO SANTA CRUZ DE YOJOA','0000-0000','DISTRIBUIDORA ORISA','0','14.9826008','-87.8901463','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'633','BODEGA DON POPO','BARRIO EL BANCO  FRENTE A CONFITERIA FLORES  CHOLOMA','99653522','BODEGA DON POPO','1','15.6155416666666','-87.9375166666666','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'652','JOSE CIPRIANO SORTO FAJARDO','COL LOPEZ FRENTE A PRECIO JUSTO','0000-0000','ZONA FAMILIAR','1','15.5727816666666','-87.9500483333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'657','JULIO CESAR MORAZAN MARTINEZ','COL. 25 DE MAYO FRENTE AL CAMPO PEÃƒâ€˜A BLANCA CORTES','9760-4229','BODEGA JULIO CESAR','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'658','PASTORA PINEDA HERNANDEZ','REAL DEL PUENTE VILLANUEVA CASA 15 BLOQUE 16','32455141','CONFITERIA ALEJANDRO','0','15.8467704','-87.9455492','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'659','CARMEN YESSENIA SOSAN VELASQUEZ','PEÃƒâ€˜A BLANCA','0000-0000','CONFITERIA GRACIAS A DIOS','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'663','INGRID YANETH CASTRO','COL. EL CAPIRO BLOQUE 25 CASA 25','9748-7365','ABARROTERIA CASTRO','0','14.9826008','-87.8901463','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'664','LUIS ALONSO HERNANDEZ','BO. EL CENTRO','0000-0000','ABARROTERIA LA PRINCIPAL','0','14.98253','-87.891302','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'666','LUIS JIMENES PINEDA','CHOLOMA BO EL BANCO FRENTE TERMINAL ETIMACK','6694784','COMERCIAL PATE PLUMA','0','15.609863','-87.954152','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'668','JEFRY DOMINGO QUINTNILLA','SANTA RITA CALLE PRINCIPAL BO EL CENTRO','96993933','PULPERIA HERMANOS QUINTANILLA','1','15.6155099999999','-87.9376233333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'678','JOSE OBDULIO BONILLA','SANTA CRUZ CALLE PRINCIPAL','97738066','FRUTAS Y VERDURAS DEL CAMPO','0','15.3196936','-87.9863396','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'210','MARIO EDGARDO LOPEZ','SAN ANTONIO DE CORTES','2660-5052/99321089','COMERCIAL TIFHANI','1','15.116753','-88.040139','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'211','MECEDES MEJIA','BARACOA  CORTES','9737-4246','ABARROTERIA LA FE','0','15.7786048','-87.853036','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'212','JOSE RAMIRES','LOPEZ','9993-2881','CONFITERIA CANDY','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'190','ABARROTERIA LAS VEGAS','LAS VEGAS  SANTA BARBARA','2659-3205','ABARROTERIA LAS VEGAS','0','14.8735002','-88.070715','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'859','GABRIELA BORJAS AGUILAR','CALLE PRINCIPAL DE SALIDA  FRENTE A POLLO POULTRY','3291-6600','ABARROTERIA HANSEL','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'860','MARCO TULIO ESPINOZA CONTRERAS','BO LAS FLORES  2DA CALLE PRINCIPAL DE TIERRA','0000-0000','ABARROTERIA LAS FLORES S. DE R. L. DE C. V.','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'861','MARISTELA ALEJANDRA DIAZ HERNANDEZ','BO EL BANCO  CONTIGUO A ABARROTERIA EBENEZER','9802-3596','MERCADITO EMANUEL','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'885','MARIA ESTELA CONTRERAS ALVARADO','PEÑA BLANCA ALDEA AGUA AZUL CONTIGUO A MS AGUA AZUL','9892-9874','MINI SUPER CLAUDIO','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'886','FREFIS ADALID MACIAS MEDINA','ALDEA AGUA AZUL SIERRA','9968-5362','ABARROTERIA AGUA AZUL','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'887','MIGUEL ANGEL ROSA MORENO','ALDEA AGUA AZUL SIERRA ULTIMO TUMULO SALIDA CARRETERA INTERNACIONAL','9799-7953','ABARROTES Y MINISUPER SOPHIA','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'893','JOEL LOPEZ MALDONADO','BARRIO MINERVA FRENTE AL POLICLINICO ','3177-4950','PULPERIA CAMILA','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'904971','DISTRIBUIDORA SAN PEDRO','BOULEVAR DEL SUR  KM5   CONTIGUO A CANASA','0000-0000','DISTRIBUIDORA SAN PEDRO SA DE CV','1','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'476','ADEN DUBON','BARRIO EL BANCO  CALLE PRINCIPAL.','0000-0000','ABARROTERIA DUBON','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'477','CARMEN ANGELICA MEDINA','COL LOPEZ ARELLANO CALLE PRINCIPAL','98190645','ABARROTERIA LA BENDICION','0','0','0','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'497','YESI GEOVANNY FIGUEROA HERNANDEZ','CALLE PRINCIPAL','0000-0000','ABARROTERIA LOPEZ','0','14.982983','-87.8899994','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'680','JAIRO JOSUE REYES CONTRERAS','CHIVANA BO EL CENTRO  CARRETERA A OMOA','3275-6266','SUPERMERCADO MONTE DE SION','1','15.44215','-88.0203333333333','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'689','ANIBAL ZELAYA SAUCEDA','BO. EL CENTRO CALLE PRINCIPAL   ESQUINA OPUESTA A TRENDOR CAMPAN','8819-3953 / 9560-4454','MINI SUPER ZELAYA','0','15.8469477','-87.9454992','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'694','JOSE ABRAHAN PUERTO VENTURA','BO. EL CENTRO  FTE. CONFITGERIA DANIEL  STA. CRUZ DE YOJOA','9830-3677','BODEGA EL BUEN PRECIO','0','14.9829709','-87.8899543','482');
INSERT INTO Clientes_impulsadoras VALUES(0,'15311','ERROR','N/A','0000-0000','NO UTILIZAR -ERROR','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'292','JAVIER ARMANDO PORTILLO','BARRIO EL CENTRO 5 AVE. FRENTE AL MERCADO EL PROGRESO YORO','2647-2822/98040118','BODEGA ALEJANDRINA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'293','LUÃƒÂS FERNANDO LEÃƒâ€œN','BARIO EL CENTRO 2 CALLE 2 Y 3 AVE. EL PROGRESO YORO','2647-7116','CONFITERIA SAMPEDRANA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'294','MARIA MODESTA GONZALEZ','SULACO YORO   FRENTE A CALLE PRINCIPAL','98876162/99120506','SUPER MERCADO Y BODEGA ELVIS','1','14.911388','-87.26426','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'295','RIGOBERTO CHAVES','SULACO','2674-0121/99589322','VARIEDADES ESTHER','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'296','BELARMINA FUENTES RIVERA','TELA ATLANTIDA','24481649','BOEGA PLASTICENTRO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'297','HUMBERTO MARTINEZ BARAHONA','LAS VEGAS  FRENTE A CAMPO DE FUTBOL','2754-3436','BODEGA ECONOMICA','1','15.3203421','-87.6011141','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'298','ISIS CARBAJAL','TELA ATLANTIDA','2691-1320','BODEGA MI CASITA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'299','JUAN FRANCISCO VALLECILLO ANDRADE','TELA CENTRO  BARRIO EL CENTRO A LA PAR DE CONFITERIA LA COLMENA','2448-1490','ABARROTERIA DANY','1','15.7821938','-87.4504933','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'300','CARLOS ROBERTO MARTINEZ','TELA CENTRO','26425059/99469688','TIENDA LA ECONOMICA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'303','JOSE DAVID MIRALDA','YORO  FRENTE A BODEGA DAYANA B. EL CENTRO','95322973','BODEGA GISSELA','1','15.13884','-87.1298383333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'304','NOVERCIDO REYES URBINA','YORO  FRENE A CALLE PRINCIPAL  BARRIO EL CENTRO','2671-2447/97531081','BODEGA FUENTE DE VIDA','1','15.143438','-87.127993','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'305','EMILIO GALEAS','BARRIO EL CENTRO  PROGRESO FRENTE A FARMACIA SAN ANTONIO','9995-0415','BODEGA EMILIO GALEAS','1','15.4030216666666','-87.8065266666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'306','YESSENIA ACOSTA BANEGAS','CALLE PRINCIPAL YORO BARRIO EL CENTRO','2671-3336','BODEGA GEOVANNY','1','15.142305','-87.12783','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'307','HECTOR CANTARERO','TELA','2448-8304/96597881','BODEGA LUIS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'308','MARTHA ROSALES PERALTA','YORO BARRIO EL GUANACASTE','2671-2461/96877798','BODEGA MARTHA','0','15.320335','-87.6011198','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'309','SANDRA LOPEZ','PUNTA OCOTE','2608-1921/96440272','BODEGA LOPEZ','0','15.3211517','-87.5986768','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'310','SONIA ELIZABETH GOMEZ','MORAZAN YORO  FRENTE A CALLE DEL COMERCIO FRENTE A COMERCIAL SARAHI','2691-0560','BODEGA LOS ANGELES','1','15.3217815','-87.5979461','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'311','JOSE ESTEBAN MARQUES','YORO  BARRIO EL CENTRO FRENTE A CALLE DEL COMERCIO','2671-2082/2671-2682','BODEGA MARQUEZ','1','15.1399283333333','-87.1276833333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'312','JORGE ULLOA UMANZOR','PROGRESO YORO','95846220','BODEGA UMANZOR','1','15.4033113','-87.8078243','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'313','EFRAIN CANALES','FRENTE AL MERCADO VIEJO BO EL CENTRO EL PROGRESO','26472219','BODEGA ALEX','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'314','MARIA JOSE GARCIA FERNADEZ','PROGRESO YORO  BARRIO EL CENTRO MERCADO MUNICIPAL','26471237','BODEGA # 16','1','15.4028348','-87.8070017','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'315','CRISTIAN CAROLINA ORTIZ','BARRIO EL CENTRO PROGRESO','95278099','COMERCIAL Y ABARROTERIA KAROL','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'316','ANA LETICIA OSEGUERA','BARRIO EL CENTRO TELA','95006109','BODEGA ANA','0','15.783849','-87.4500075','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'317','VILMA JANETH LOPEZ','BARRIO EL CENTRO MORAZAN  FRENTE A TALABARTERIA POPUPAR','2691-0214','BODEGA POPULAR','1','15.3211566666666','-87.5971933333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'318','ELIZABETH CARBAJAL','MORAZAN YORO  UNA CUADRA DE BODEGA CARMENCITA   FRENTE A CALLE PRICIPAL','2690-4211','BODEGA ELIZABETH','1','15.322085','-87.596509','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'319','IRIS LORENA CARBAJAL','MORAZAN YORO','31751289/31751495','BODEGA CARBAJAL','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'320','ROSA MIRIAN BARAHONA CUEVAS','PROGRESO YORO','92827830/96827830','ABARROTERIA ROSSY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'321','MARIO ABEL OCHOA','BARRIO EL CENTRO PROGRESO  ENTRADA A PROGRESO FRENTE AL SEMAFORO','2647-3502/99390628','INVERSIONES EBRIN','1','15.4027683333333','-87.81468','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'322','ADRIANA COELLO REYES','VICTORIA YORO','26711394/95453619','BODEGA VICTORIA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'323','MARCO URQUIA','YORITO','2656891','BODEGA ANGELES','0','15.3211517','-87.5986768','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'324','BLANCA SUYAPA HANDAL','MORAZAN YORO','2691-0568/99733728','COMERCIAL SUYAPA','0','15.3210036','-87.5995353','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'325','MAISELA FIGUEROA MURILLO','VICTORIA YORO','98129527','BODEGA TIERRA BLANCA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'326','HUMBERTO BARAHONA','SULACO','2674-0134','BODEGA BARAHONA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'327','MARIA DE LA CRUZ CALIX','YORITO','2671-4066/32200235','COMISARIATO EL CENTRO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'328','FRANCISCO CASTRO CALIX','YORITO  A DOS CUADRAS DEL PARQUE','22468720/95769012','PULPERIA EL CENTRO','1','15.067555','-87.2839433333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'329','NORMA ELIZABETH REYES','SULACO  YORO ATRÃS DE SUPERMERCADO ELVIS','26640222','BODEGA EKANO','1','14.910675','-87.2633766666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'330','DORIS EUGENIA BARGAS','PROGRESO YORO  A LA PAR DE PESCADERIA EL DELFIN  BARRIO EL CENTRO','26472104/98387533','CONFITERIA GABY','1','15.403225','-87.80801','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'331','VILMA ALEJANDRINA CASTRO','TELA','2691-0224','BODEGA OSMANY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'332','JULIA PEÃ‘A','TELA  BARRIO EL CENTRO MEDIA CUADRA DE GASOLINERA UNO CENTRO','2448-2233/88510413','CONFITERIA Y BODEGA  LA COLMENA','1','15.7824166666666','-87.4501116666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'333','SAIDA XIOMARA MARTINEZ','TELA','24488135/96895933','BODEGA RICO QUESO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'334','OSCAR RAMOS','NEGRITO YORO','2690-0414','BODEGA ROCK','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'335','JUANA MARGARITA HERNANDEZ','MORAZAN YORO  FRENTE A SUPERMERCADO MARQUEZ','2691-0519','BODEGA THAMY','1','15.320162','-87.601577','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'336','MARIA JUANA ORELLANA VASQUEZ','SARROSA  FRENTE A FERRETERIA URREA','2608-5847/98651950','BODEGA URREA','1','15.2929066666666','-87.8479099999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'337','GERMAN DAVID ARMENDIA','BARRIO EL CENTRO PROGRESO','99640910','BODEGA NEIMAR','0','15.1408411','-87.12764','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'338','MARLON BANEGAS','NEGRITO YORO','2691-0315','BIODEGA NEGRITEÃ‘A','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'339','MARIA ANGUIE LARIOS','YORO','98906677','BODEGA ANGUIE','0','15.1389122','-87.1297478','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'340','WILLAN MALDONADO','NEGRITO YORO  FRENTE A FERRETERIA EL TRIANGULO','2690-0386','ABARROTERIA MALDONADO','1','15.2992183333333','-87.7001083333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'341','ARMEN VILLELA GALEAS','MORAZAN YORO  FRENTE A ENTRADA DE LA CALLE PRINCIPAL   FRENTE A MOTOMUNDO','2691-1360/97102465','BODEGA CARMENCITA','1','15.321408','-87.596193','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'342','BESSY CANTARERO','TELA','95590528','MINI SUPER EL AHORRO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'351','ELIU BENITES','YORO','2671-3475/98306332','SUPERMERCADO MICHELLE','0','15.1393643','-87.1268747','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'352','DONALDO JAVIER URBINA','YORO','26713096/99292797','BODEGA DONALD','0','15.136426','-87.1242387','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'353','NERY SANTIAGO RAMIREZ','YORO  FRENTE A BODEGA GISELA BARRI EL CENTRO','98488590','BODEGA DAYANA','1','15.1390683333333','-87.1296316666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'354','ALLAN GEOVANY RAMIREZ','YORO','26713354/97743569','BODEGA ALEJANDRA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'355','ALVARO MARTINEZ MALDONADO','YORO','26712774','BODEGA EL DESCUENTO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'356','TERESA MARTINEZ','EL PROGRESO','0000-0000','BODEGA LA ESQUINA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'357','EDUARDO MALDONADO','EL PROGRESO','0000-0000','BODEGA OMAR','0','15.4017756','-87.8079874','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'358','PEDRO ANTONIO LEON','B SAN JOSE 4 CALLE 4 AVENIDA EL PROG','2648-1649','INVERSIONES LA COLMENA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'359','JOSE DE JESUS GONZALES','EL PROGRESO','26482288/99648937','LA PROVEEDORA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'360','MARIO JOSE GARCIA','CALLE PRINCIPAL PROGRESO BARRIO EL CENTRO','2647-1220','BODEGA ADAN','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'361','YADIRA VILLEDA','PROGRESO YORO   BARRIO EL CENTRO FRENTE A TERMINAL DE BUSES CATISA SPS','2647-9456','CONFITERIA OBSEQUIOS','1','15.4032466666666','-87.80766','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'362','GERMAN CARRASCO MENDOZA','PROGRESO YORO','98253101','BODEGA PROGRESO # 2','0','15.4029284','-87.8073965','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'363','EDWIN JOSE HERNANDEZ','EL NEGRITO MEDIA CUADRA AL PARQUE BARRIO EL CENTRO','2690-0005','ABARROTERIA  RAMOS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'364','AGUSTO CASTRO','EL NEGRITO BARRIO EL CENTRO  UNA ATRÃS DE BODEGA GIORGIO','2690-0060','BODEGA LA FORTALEZA','1','15.3115549999999','-87.6952949999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'365','JHONY OCHOA','5 Y 6 AVENIDA 7 CALLE SUR LAS MERCEDEZ','26473099','BODEGA SAMIR','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'366','JOAQUIN GARCIA GALES','MEZAPA ATLANTIDA  FRENTE AL PARQUE','9917-8827','BODEGA DALES','1','15.6026822','-87.6580748','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'368','DELMA AIDA REYES ADEIGADA','SUBIRANA YORO FRENTE AL CAMPO','95099494','INVERSIONES MONTEFRESCO','0','15.139016','-87.1296076','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'369','CARLOS ANDRES INESTROZA','MEZAPA CALLE PRINCIPAL','2429-0207','SUPERMERCADO SANTA ROSA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'370','ANA LUISA MURILLO','SULACO LIBERTAD YORO','98584938','BODEGA Y COMERCIAL KATY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'371','MARCO PONCE','ALDEA GUACAMAYA YORO','97691070/99271431','BODEGA REYNA','1','15.3036733333333','-87.8415983333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'372','FANY XIOMARA VARELA VARELA','MEZAPA ATLANTIDA EN EL CEIBON','2429-0252','SUPERMERCADO FANNY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'373','JESUS ANAEL AGUILAR','AVE MEXICO BARRIO EL CENTRO','9812-4823','BODEGA JOSE MANUEL','0','15.1394119','-87.1258628','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'374','BERNARDO BARAHONA','NEGRITO YORO BARRIO TATUMBLA  ENTRADA A FERTICA','9917-8051','BODEGA EMILSON','1','15.3135344','-87.6975927','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'375','GLORIA SUYAOA SERNA','TELA CENTRO','95764127','COMERCIAL CAROLINA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'376','GLORIA VARELA VARELA','YORITO YORO','26714378','COMERCIAL KAIROS','0','15.0675304','-87.2830341','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'377','RIGOBERTO GONZALES GONZALES','TELA CENTRO','9980-8867','BODEGA SU MEZA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'378','VICTOR HUGO MENDOZA','TELA BARRIO LEMPIERA','94656782','BODEGA VICTOR','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'379','NELSON MOISES MURILLO','BARRIO SAN JOSE TELA','2448-1317','BODEGA MURILLO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'380','ADALI MEJIA','TELA EL CENTRO','99946287/24481994','BODEGA MEJIA','0','15.7817555','-87.4507169','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'381','ONEYDA TORRES','SUBIRANA','9949-1880/22462722','BODEGA LA COSECHA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'382','ALBERTO ULLOA RAMOS','SUBIRANA YORO','95652640','BODEGA BETO','0','15.3042883','-87.6031741','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'383','ELVIS MUNGUIA','PUNTO DE OCOTE YORO FRENTE CARRETERA INTERNACIONAL','96515137','MINI SUOER BRISAS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'389','ANA LETICIA OSEGUERA','AVE CUBA FTE TERMINAL DE BUSES ETIZA TELA ATLANTIDA','94831205','BODEGA ANA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'390','JORGE ALBERTO CRUZ ZUNIGA','LAS MINAS DE ORO','27846119','COMERCIAL ROCAJOS','0','15.3203229','-87.6014519','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'391','CRISTIAN RAMON ANDRADE HENRIQUEZ','GUAYMITA BARRO EL CENTRO  FRENTE AL PARQUE','2625-7099/98430160','TIENDA EL OFERTON','1','15.4997816666666','-87.7141483333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'392','DARIO ARMANDO ALVARADO','SAN ALEJO CALLE PRINCIPAL TELA ATLANTIDA','95680535','BODEGA CERRITO','1','15.7256432','-87.5696465','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'393','JORGE ALBERTO MONJE','BO LEMPIRA CALLE IGLESIA SANPEDRANA SAN PABLO','24480110/97984381','BODEGA MONJE','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'394','MANUEL DE JESUS MARTINEZ','NEGRITO YORO','98082074','BODEGA GEMELOS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'395','ANGELA CAROLINA REYES','MORAZAN YORO','26910335/99096680','BODEGA JADE','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'396','HAIDA CRISTINA CASTRO','TELA EL CENTRO','96989631','BODEGA HERNANDEZ','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'398','ENRRIQUE ORLANDO CANO','YORITO YORO','26674015','BODEGA COMERCIAL DIMETRI','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'399','ANGEL PALMA MARTINEZ','YORITO YORO','26714129','BODEGA PALMA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'400','ERICKA UCLES LUIS','PUNTO DE OCOTE YORO','99367150','BODEGA BRISAY','0','15.1957081','-87.2873229','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'401','MARIA ELENA RODAS','LAS VEGAS  YORO A LA PAR DE BODEGA LOS HERMANOS','96412890','BODEGA CRISTINA','1','15.006551','-87.440594','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'402','ERADIO FIGUEROA','LAS VEGAS','27176670','BODEGA JAVIER','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'403','MARIA SILVIA ALVARADO','MORAZAN YORO  CALLE PRNCIPAL FRENTE A BODEGA LOS ANGELES','26910386/98090437','COMERCIAL SARAHY','1','15.3217783333333','-87.5964899999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'404','ARACELI CABALLERO','BOULEVAR VENECIA','24485308','BODEGA ALI','0','15.4995319','-87.7136293','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'405','MARIA VICTORIA LARIOS','YORO  BARRIO EL CENTRO FRENTE A HOTEL VILLAREAL','26712416/99978789','BODEGA LA COPANECA','1','15.137575','-87.127343','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'406','CARLOS ANIBAL ROSALES PACHECO','YORO YORO BARRIO EL CENTRO','96712652/98854650','BODEGA LA FRAGATA','0','15.2586581','-87.3943891','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'407','BENSON LOCUE CABALLERO','TELA CENTRO','26484309','ABARROTERIA LUIS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'408','WILMER CHONG','TELA ATLANTIDA BARRIO EL CENTRO','24483213','ABARROTERIA LUI','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'409','JORGE LUIS PINTO','NEGRITO YORO  CALLE PRINCIPAL FRENTE A FARMACIA REGIS','98837684','BODEGA GIORGIO','1','15.3215313','-87.5960849','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'410','TRANQUILINO HERNANDEZ','LAURELES','99770974','BODEGA LOS LAURELES','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'412','CATALINO MARQUEZ','MORAZAN YORO  BARRIO EL CENTRO FTRENTE A CALLE DEL COMERCIO','2691-1041/99071803','SUPERMERCADO MARQUEZ (MORAZAN)','1','15.3202483333333','-87.601925','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'445','EFRAIN MALDONADO CABAÃƒâ€˜AS','SUBIRANA CALLE PRINCIPAL SALIDA CARRETERA A TEGA','0000-0000','BODEGA MALDONADO','0','15.2993315','-87.7009872','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'453','EDNY ELIZABETH TREJO GOMEZ','BARRIO MONTEVIDEO  MERCADO NUEVO  FRENTE A NOVEDADES VIMAR.','26472357/98844857','BODEGA BORJAS TREJO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'462','ARNALDO REYES RIVAS','VICTORIA YORO CALLE PRINCIPAL.','99079175','BODEGA REYES','1','14.938049','-87.390822','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'463','LUIS ROSALES PERALTA','YORO CALLE PRINCIPAL ABAJO DEL HOTEL LEONELITO.','26787298','BODEGA LEONELITO','1','15.1413674','-87.127844','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'464','JOSE LUIS ALMENDARES URBINA','YORO FRENTE AL ESTADIO BARRIO LAS ACACIAS.','26081942/98974143','BODEGA MIRNA','1','15.1363898','-87.1243348','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'468','JAYRA PATRICIA MARTINEZ DIAZ','TELA  CENTRO  CALLE PRINCIPAL.','95685626','BODEGA MARTINEZ','1','15.44915','-88.0216666666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'469','WILFREDO GARCIA','MEZAPA ALDEA LOS CATRACHOS BATAN.','96834521','BODEGA GARCIA','1','15.6042933333333','-87.6955049999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'473','ALBERTO INESTROZA','MORAZAN YORO  CALLE PRINCIPAL MERCADO CENTRAL MUNICIPAL','26910492/97786227','BODEGA JORGITO','1','15.32211','-87.5980566666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'549','LUIS ALONZO TRIGUERO','NEGRITO YORO  FRENTE A TIENDA USA 2','99583277/98047738','ABARROTERIA TRIGUERO','1','15.312017','-87.697617','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'559','EUGENIO FELIPE SANCHEZ','SULACO YORO CALLE PRINCIPAL','26740049/96318324','MINI SUPER PAUL','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'560','OSCAR RENE CARBAJAL','SAN ANTONIO SULACO  YORO','96326078','BODEGA CARVAJAL','0','14.983868','-87.292075','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'568','HECTOR CASTRO','TELA CENTRO  BARRIO EL CENTRO A UNA CUADRA DE TERMINAL DE BUSES CATISA','22562464','BODEGA LA ECONOMICA','1','15.6994493','-87.5865643','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'569','RIGOBERTO GARCIA','TELA BARRIO EL BAY','98700209','INVERSIONES GARCIA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'571','JORGE GEOVANY JUAREZ','PROGRESO YORO  BARRIO EL CENTRO A LA PAR DE BODEGA CHIKI','96645879','BODEGA JUAREZ','1','15.4039016666666','-87.808375','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'594','MIRIAN ROSALES ROSALES','YORO B. CENTRO FRENTE A FERRETERIA MARQUEZ','26714375/98306332','BODEGA MIRIAN','1','15.3129549999999','-87.6966333333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'595','MARLON MODESTO LOPEZ','BO EL CENTRO FRENTE A GASOLINERA UNO','0000-0000','ABARROTERIA GISSEL','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'599','NEIBY YOSELI VARELA','BARRIO EL CENTRO MEDIA CUADRA DE BACO ATLANTIDA  PROGRESO  YORO','98793322/99235380','INVERSIONES VARELA','1','15.4492716666666','-88.0217333333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'474','BLAZ ARMANDO MARTINEZ','MORAZAN YORO DOS CUADRAS ENTES DE HOTEL LUNA','26910224','COMERCIAL  HONDURAS','1','15.320045','-87.6018716666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'481','NELSON FRANCISCO MEJIA CASTILLO','EL CENTRO  ATRAS DE HOTEL NELSON','26712269','BODEGA NELSON','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'482','ALFREDO DAVID BONILLA','CALLE PRINCIPAL  BARRIO LAS ACACIAS.','32493121/94642435','BODEGA BONILLA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'483','JOSE ANTONIO CARRASCO','PROGRESO MERCADO CENTRAL','0000-0000','DISTRIBUIDORA PROGRESO # 1','0','15.4117691','-87.8712012','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'484','LUIS ROSALES ROSALES PERALTA','CALLE PRINCIPAL  EL CENTRO.','26713298','BODEGA LEONELITO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'485','ESTHER AGUILAR','OFICINAS DE BOCADELI','0000-0000','CAFETERIA ESTHER','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'486','ELMER YONI MARTINEZ VEKASQUEZ','AGUA BLANCA  CALLE PRINCIPAL.','98948131','BODEGA EL EXITO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'487','OBDULIO JOVEK ARAU','TELA CENTRO','96111946','BODEGA YAHIR','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'488','ONDIN MARIA MENDOZA','BARRIO EL CENTRO  MEDIA CUADRA DE MONUMENTO A LA PAZ  EL PROGRESO','95828738','CONFITERIA DIAMANTE','1','15.4043733333333','-87.8070933333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'493','ALEX JUARES RODRIGUEZ','FRENTE AL PARQUE','97784979/97753840','BODEGA TORRE FUERTE','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'809','DARWIN GENARO UMANZOR FERNANDEZ ','BARRIO LOS ANGELES 13 AVE','97895928/97806506','DARWIN GENARO UMANZOR FERNANDEZ ','1','15.404965','-87.8067449999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'813','PEDRO YAMIL BONILLA CANO','VICTORIA YORO ','98920666','PEDRO YAMIL BONILLA CANO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'814','JOSE FRANCISCO NAVARRO VENTURA ','MORAZAN YORO BARRIO JASMIN ','3186-3647','JOSE FRANCISCO NAVARRO VENTURA ','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'826','GIAN FERNANDO MACHADO','BARRIO EL CENTRO TELA ESQUINA OPUESTA AL TALLER DELIFAN CALLE DIONISIODE HERRERA','95183605/94414288','ABARROTERIA MARIEL ','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'828','JESUS HERNANDEZ PEREZ','YORO  BARRIO CABAÃƒâ€˜AS FRENTE A BODEGA GEOVANNY','9555 7400','JESUS HERNANDEZ PEREZ','1','15.1422066666666','-87.1276816666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'829','YORLENY LINETH PONCE ZUNIGA ','LA SABANA DE SAN PEDRO ','98529370','YORLENY LINETH PONCE ZUNIGA ','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'833','JORGE ANEL BONILLA GARCIA','BARRIO LAS MERCEDES  2 Y 3 CALLE 4 AVE FERENTE A TRIGO','97773003','JORGE ANEL BONILLA GARCIA','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'839','ELVIN IVAN UMANZOR ALVAREZ','BO MONTEVIDEO 3 Y 4 CALLE 4 Y 5 AVE EL PRORESO YORO','98605045','ELVIN IVAN UMANZOR ALVAREZ','1','15.403955','-87.8077','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'862','VICTOR CESAR PINTO','MEZAPA CALLE PRINCIPAL COL SANTA ROSA FRENTE AL CAMPO','9674-1144','INVERSIONES LUNA AZUL','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'600','JOSE CUPERTINO MERAZ','BO CABAÃƒâ€˜AS YORO','98377613','BODEGA JESSY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'607','FREDY ADONAY MONTOYA','BO MONTEVIDEO 7 CALLE A PROGRESO','94731284','BODEGUITA NENA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'608','ALEX ARMANDO CASTILLO','BO MONTEVIDEO EL PREGRESO','33487621','ABARROTERIA EL CENTAVO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'620','BRIDEN EMERITA PINEDA ULLOA','YORO','99525341','PULPERIA JULIA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'621','EVER JAVIER MERAZ ALEMAN','BO LAS DELICIAS','87664089/97699415','BODEGUITA MERAZ','0','15.720019','-87.5749105','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'627','MARLON MODESTO LOPEZ FLORES','BARRIO EL CENTRO FRENTE A GASOLINERA 1','9849-9078','BODEGA KRISTEL','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'634','CARLOS LUIS LOPEZ CRUZ','BO EL CENTRO','24481482/99053912','ABARROTERIA GRANOS Y MAS','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'638','MARIA AUDELINANREYES LEMUS','BO MERCEDES 2-3 CALLE 4 AVE','96812271','BODEGA FAMILIAR MOLINA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'639','KARLA JOHANA MENDOZA','MERCADITO POPULAR FRENTE PAQUE LAS MERCEDES','95877574/88626353','CONFETERIA KARLA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'643','IRME OSMAN LEZAMA BUSTILLO','ALDEA MEZAPA  COLONIA MUNICIPAL DOS CUADRAS ANTES INSTITUTO TECNICO MEZAPA','99556397','BODEGUITA LEZAMA','1','15.4419766666666','-88.0204349999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'863','ALEXANDER NOE GUILLEN DURON','ALDEA TOYOS CARRETERA A TELA','9682-0160','ABARROTERIA BELLA','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'865','LEONEL ANTONIO CANALES CANALES','ALDEA TOYOS FRENTE AL CAMPO DE FUTBOL','9825-4147','ABARROTERIA ELVIN','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'868','HELGA PATRICIA GARCIA','MEZAPA ATLANTIDA ESQUINA OPUESTA BANASUPRO ','9613-2026','ABARROTERIA SANTA ROSA ','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'871','ALBA LUZ MIRANDA SERRANO','ALDEA TOYOS A LA PAR DE FERRETERIA ALEJANDRA','9643-3343 9942-1994','PULPERIA TOYOS','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'873','WILMER FIDEL SORTO YANES','COL MANGANDI CALLE PRINCIPAL FRENTE AL PERLA','9436-7153','SURTIDORA LA NIÑA','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'874','EVA GABRIELA PINEDA CABALLERO','BARRIO MONTE VIDEO 3 CALLE 6 Y 7 AVE','9501-4231','BODEGA SUPER MAX','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'875','RONAL BRIAN GALEAS PEÑA','BARRIO MONTE VIDEO 4 CALLE ','9700-5579','BODEGA GALEAS','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'876','JOSUE OMAR VELASQUEZ MOLINA','MEZAPA BARRIO EL CENTRO','9882-0686','BODEGUITA ALVES','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'877','GUSTAVO ENRIQUE MADRID BANEGAS','BARRIO TATUMBLA FRENTE A HOTEL PLAZA  MORAZAN','9441-5016','MINI-MARKET VANASUPRO','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'878','DENIS IOVANI CABALLERO RAMIREZ','BARRIO SAN MIGUEL 5 CALLE 12 AVE EL PROGESO','3180-9393','DISTRIBUIDORA CABALLERO','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'644','DAYSI MARINA JIMENEZ JUAREZ','NEGRITO YORO A UNA CUADRA DEL PARQUE','99118453/26900098','ABARROTERIA CARLITOS','0','15.3131554','-87.6967749','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'647','MANUEL UMANZOR VASQUEZ','PROGRESO 2 CALLE 4 Y 5 AVE1/2 CUADRA DEL MERCADO','26474564','BODEGA UMANZOR','0','15.4031097','-87.8082924','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'648','MANUEL UMANZOR VASQUEZ','BO MERCEDES 5 A 4 Y 5 CALLE PROGRESO YORO','26470989','BODEGA UMANZOR S DE R L  DE CV','1','15.4491666666666','-88.0217016666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'653','LUCIA HERCULES LOPEZ','SAN JOSE FRENTE ESTADIO MORAZAN YORO','98849815','PULPERIA SISSI','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'662','MARLON MIGUEL LAGOS ALVAREZ','BO. LEMPIRA  MORAZAN YORO A UNA CUADRA DE METROCENTRO','9917-2581 Y 2691-0253','ABARROTERIA NAZARETH','1','15.320652','-87.601286','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'691','ANA VANNESA CASTELLANOS MALDONADO','BO. EL CENTRO   TELA ATLANTIDA CONTIGUO A BANCO ATLANTIDA','3319-5328  9553-2959','SNACKS PLUS','1','15.782474','-87.4517559','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'693','SANDRA ETELBINA CERNA GIRON','BO. EL CENTRO   AVENIDA MEXICO  TELA ATLANTIDA','9873-1020','COMERCIAL NICOLE','0','15.4045993','-87.808037','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'695','OSCAR IVAN URBINA NOLASCO','BARIO CABAÃ‘AS  YORO FRENTE A HOTEL MARQUEZ','2671-2271','SUPERMERCADO CABAÃ‘AS  S. DE R. L. DE  C.V.','1','15.1393533333333','-87.1266583333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'696','WILBER AYALA GIL','ALDEA LA SRROSA CALLE HACIA STA. RITA EL PROGRESO YORO','0000-0000','SUPERMERCADO CASA DE PAN','1','15.2978816666666','-87.8468016666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'697','DELMY LETICIA RAMIREZ MOLINA','CALLE PRINCIPAL  ALDEA EL FILON ENTRADA POR PUENTE EL GUAYMON','9949-6033/9946-5784','BODEGA DELMY','1','15.5468556','-87.6517529','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'700','DAGOBERTO REYES AREVALO','BO. GUANACASTE E L NEGRITO YORO','9886-3918','ABARROTERIA NICOLL','1','15.311799','-87.701494','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'703','GABRIELA SUAMIR MACEDO KATTAN','1 CUADRA ANTES DE PARQUEO MUNICIPAL EL PROGRESO YORO','0000-0000','INVERSIONES JARA','1','15.403359','-87.80767','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'704','MIREYA CHACON FLORES','ATRAS DE  HONDUTEL  SULACO   YORO','9682-6869','PULPERIA MAS POR MENOS','0','15.3131888','-87.6966105','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'706','DELVIS JUSETH PEÃƒâ€˜A PEREZ','BO. EL CENTRO  FTE. AL PARQUE CENTRAL   TELA   ATLANTIDA','95956172','ABARROTERIA BLASSIN','0','15.7838118','-87.4516191','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'709','SINTIA GISSEL ELVIR HERNANDEZ','ALDEA LA 13   CRRETERIA A TELA  CALLE PRINCIPAL','9861-2777-- 9861-2977','MINI SUPER TOÃƒâ€˜O','0','15.7820604','-87.4500074','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'718','IRIS GUADALUPE RIVERA CRUZ','SUBIRANE BO. EL CENTRO 2 CUADRAS DEL PARQUE YORO YORO','9916-4721','PULPERIA LA ECONOMICA','1','15.1958099999999','-87.441975','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'729','DELMY YANET CASTRO VASQUEZ','BARRIO GUANACASTE . YORO','9827-1775  /  9827-1775','INVERSIONES LEMPIRITA','0','15.4424142','-88.0203274','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'730','CARLOS ALEJANDRO ROSALES LEON','BARRIO EL CENTRO  YORO FRENTE A TERMINAL DE BUSES','0000-0000','SURTIDORA YOREÃ‘A','1','15.139286','-87.12711','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'731','SAUL VARGAS NAVARRO','BARRIO MONTEVIDEO FTE A BANCATLAN EL PROGRESO YORO','2625-6843','INVERSIONES  Y REPARACIONES VARGAS SRL DE CV','1','15.403219','-87.806594','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'732','DELMIS SELENA GUILLEN CASTILLO','ALDEA EL GUAYMON   CALLE PRINCIPAL   EL NEGRITO YORO','3215-9933','INVERSIONES MULTIPLES BRISAS DEL GUAYMON','0','15.7820218','-87.4499932','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'733','CLAUDIA PATRICIA ARIAS RAMIREZ','FRENTE AL PA','3176-0544','LA DULCERIA ','0','15.401391','-87.807736','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'734','ERICK RAFAEL FLORES MARTINEZ','BO MONTEVIDEO EL PROGRESO YORO','9937-3003','BODEGA EL REY','1','15.403837','-87.807649','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'743','BLADIMIRO ALEXANDER CASTRO REYES','BO. EL CENTRO   A LA PAR DE MERCADO SAN ANTONIO  TELA ATLANTIDA','97089287','NO USAR','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'744','RAFAEL GARCIA MEJIA','BO. EL CENTRO PARQUEO DEL MERCADO SAN ANTONIO TELA','99472900','BODEGA LA BENDICION','1','15.7842083333333','-87.4502749999999','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'748','EVER GEOVANY REYES ARGUETA','BARRIO EL CENTRO FRENTE A BANCO DE OCCIDENTE','9995-4923','BODEGA REYES','1','15.402729','-87.808015','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'751','ERIBERTO LEZAMA BUSTILLO','LA 36 GUAYMAS CALLE PRINCIPAL FRENTE A COLEGIO ERNESTO PONCE','95495934','PULPERIA LEZAMA','1','15.537132','-87.6985494','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'754','NESTOR DANILO HERNANDEZ','SUBIRANA  SALIDA AL CEDRITO','98047902','ABARROTERIA HERNANDEZ','1','15.1947766666666','-87.4496583333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'384','MAIRA YADIRA AVILA AVILA','COYOLITO VICTORIA YORO','9895-1746','BODEGA AVILA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'385','ORLI CERRATO CERRATO','5 CALLE 6 AVE BARRIO MONTEVIDEO','26481221/96052314','CONFITERIA JULIO','0','15.320206','-87.6014972','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'386','ROSA MIRIAM BARAHONA','PROGRESO YORO BARRIO EL CENTRO','9579-9532','BODDEGA ROSSY','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'387','SANTO CECILIA CANALES LAINEZ','TELA BARRIO  EL CENTRO FRENTE AL MERCADO MUNICIPAL','20482049/24481047','BODEGA TELEÃ‘A','1','15.7842383333333','-87.4503516666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'388','ADA  NOHEMY MORENO','BO MONTEVIDEO   8 CALLE  3 AVE  EL PROGRESO   YORO','26171039/99661134','BODEGA COMERCIAL MORENO','1','15.4030933333333','-87.8085533333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'301','TEREZA MARTINEZ','PROGRESO YORO  FRENTE A INVERSIONES DEL REY   BARRIO EL CENTRO','2647-0516/97887221','BODEGUITA LA ESQUINA','1','15.40345','-87.80672','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'302','JORGE FIDEL ELIAS','CALLE PRINCIPAL CABAÃ‘AS YORO','2671-2987','BODEGA EVELIN','0','15.1377657','-87.1286875','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'343','CARLOS ALBERTO HUGON LOPEZ','MORAZAN YOROBARRIO EL CENTRO','98110781','BODEGA KARLA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'344','ESLAN AMAYA','PUNTA OCOTE  FRENTE A CALLE PRICIAPAL QUE CONDUCE A YORO','2608-3627','SUPERMERCADO JUNIOR','1','15.19565','-87.287226','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'345','HUGO JAVIER FUNES','NEGRITO YORO  FRENTE AL PARQUE','2690-0460','SUPERMERCADO EL PREFERIDO','1','15.3134673','-87.6977149','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'346','OSCAR ARMANDO URBINA','YORO','22662254/26712481','BODEGA CABAÃ‘AS','0','15.1404906','-87.1278132','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'347','JANET EVELIN PALMA','LAS CAÃƒâ€˜AS (VICTORIA)','9969-7728','BODEGA JANETH','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'348','NELSON OSORIO','AGUA BLANCA  FRENTE A CALLE PRINCIPAL QUE VA A SANTA RITA','95377835','BODEGA OSORIO','1','15.245015','-87.8788316666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'349','MARCOS TULIO URBINA','LA HABANA  FRENTE A POSTA POLICIAL','96782978','BODEGA TULITO','1','15.22732','-87.3491083333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'350','JOSE CATALINO MARQUES','YORO','2671-2149','SUPERMERCADO MARQUEZ (YORO)','1','15.139225','-87.127945','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'758','JOSE WUEDY HANDAL HANDAL','MORAZAN YORO BARRIO EL CENTRO CALLE PRINCIPAL FRENTE A LA MINERA','26910568','SUPERMERCADO HANDAL','1','15.321187','-87.599144','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'764','RAMON ERAZO ESTEBAN','EL PROGRESO YORO FRENTE LA BODEGA DE LA ESQUINA','31815353','INVERSIONES DEL REY','1','15.4035633333333','-87.8065666666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'774','MIRIAN GABRIELA BENITES ROSALES','BARRIO AL CENTRO CALLE DEL MERCADO YORO','3296-0921','INVESIONES ALEJANDRO','1','15.1391833333333','-87.1284816666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'777','NERIS YOVANY MENDOSA MURILLO','PROGRESO BARRIO LAS MERCEDES CONTIGUO A FARMACIA CASTILLO','9616-2098','INVERSIONES DANY','1','15.400506','-87.806528','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'798','HECTOR JAVIER CHAVEZ LOPEZ','BARRIO EL CENTRO CONTIGUO A MONARCAS CL 95927301','95927301','PRODUCTOS KIARA ABIGAIL ','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'802','RONY ADONAY URBINA','YORO BARRIO CABAÃ‘AS CALLE PRINCIPAL MEDIA CUADRA ARRIBA DE BODEGA YOBANI Y COMERCIAL PINEDA','97667211','RONY ADONAY URBINA','1','15.141728','-87.127831','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'804','MAGDA LILIANA MEJIA','COL. LAS MERCEDES 4 CALLE 3 Y 4 AVENIDA','3292-5684/3345-9883','MAGDA LILIANA ','0','15.400085','-87.8076766666666','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'807','EDA GLORIA MARTINEZ','BARRIO CABAÃ‘AS  YORO LOCAL ABAJO DE HOTEL PLAZA','97627053','EDA GLORIA MARTINEZ','1','15.139257','-87.126588','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'889','SINDY WUALQUIRIA REYES ALVARADO','COL RAFAEL DIAS CHAVEZ ','3159-5109','PULPERIA SUPER BARATO','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'891','IVAN ALFREDO PORTILLO ORELLANA','BARRIO EL COL CENTRAL 25AVE BLOQUE 2','31749450','DISTRIBUIDORA JEA','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'892','ADONY ARMANDO AVILA FERNANDEZ','BARRIO EL CENTRO FRENTE AL PARQUE CENTRAL','99184167','INVERSIONES AVILA ANDINO','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'893','JOEL LOPEZ MALDONADO','BARRIO MINERVA FRENTE AL POLICLINICO ','3177-4950','PULPERIA CAMILA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'894','REYNIERY OSMANY GODOY LOPEZ','BARRIO MONTE VIDEO FRENTE A LA UTH','3396-5088','TIENDA DE CONVENCIONES SANTA LUCIA','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'904972','DISTRIBUIDORA SAN PEDRO','BOULEVAR DELSUR  KM 5  CONTIGUO A CANASA','0000-0000','DISTRIBUIDORA SAN PEDRO SA DE CV','1','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'494','RICARDO FUNES','CALLE PRINCIPAL','0000-0000','BODEGA YEIMI','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'509','LIDIA RAQUEL GIRON ROSALES','SUBIRANA BO PORVENIR YORO DOS CUADFRAS AL SUR DE PULP LA ECONOMICA','99284471','INVERSIONES  SOFIA','1','15.196142','-87.443784','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'511','FANY XIOMARA MARTINEZ GALVEZ','BO CABAÃ‘AS FRENTE A HOTEL SANDOVAR YORO YORO','9612-5903/9716-9939','INVERSIONES MEGA BARATO','1','15.140858','-87.129311','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'515','BELINDA ELIA ESCOBAR RODEZNO','LAS VEGAS  YORO A LA PAR DE BODEGA CRISTINA','98330437','PULPERIA EL HERMANO','1','15.0060316666666','-87.440395','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'516','JUVENIA LAZO ESPINAL','CENTRO  PROGRESO YORO','26476479','BODEGA LAZO','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'517','DELMIS SUYAPA CASTILLO','GUAYMON ATLANTIDA','98489520','BODEGA BRISAS DEL GUAYMON','0','15.7817555','-87.4507169','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'518','DOMINGO LOPEZ LOPEZ','PROGRESO YORO  FRENTE A MERCADO MUNICIPAL BARRIO EL CENTRO','99722207','BODEGA CHIKY','1','15.404025','-87.8077233333333','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'519','MARTHA JULIA PINEDA','TELA CENTRO  CONTIGUO A TERMINAL DE BUSES CATISA','98640512','PULPERIA MARTHA JULIA','1','15.7841383333333','-87.44899','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'520','ARMANDO CASTRO VASQUEZ','EL CENTRO FRENTE A BCO ATLANTIDA','26474844/88189056','ABARROTERIA MANA','0','0','0','485');
INSERT INTO Clientes_impulsadoras VALUES(0,'15340','N/A','N/A','0000-0000','CODIGO MAL REGISTRADO -NO USAR','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8001','DUBLAS ANTONIO MELGAR','DULCE NOMBRE COPAN','98781029','MINI SUPER EL EXITO','1','14.7813266666666','-88.7651783333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8002','BLANCA R0SA MEJIA','SULA SANTA BÁRBARA FRENTE A CARRETERA INTERNACIONAL','26574024','ABARROTERIA MARY','1','15.2477816666666','-88.5567516666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8003','SONIA ESPERANZA PERDOMO','AZACUALPA SANTA BÁRBARA B. EL CENTRO','25587158/97647705','ABARROTERIA NIKCY','1','15.34048','-88.553006','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8004','DORIS VIDAL PONCE','FLORIDA COPAN B EL CENTRO','26512360','DESPENSA OASIS','1','15.0595016666666','-88.7530916666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8005','CARLOS ALBERTO MEJIA CHINCHILLA','LA ENTRADA COPAN B. EL PROGRESO','26612589/95435242','CARLOS ALBERTO MEJIA CHINCHILLA','1','15.06315','-88.749477','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8006','CARLOS ALBERTO MEJIA CHINCHILLA','LA ENTRADA COPAN CO TRIANGULO','26612589','CARLOS ALBERTO MEJIA CHINCHILLA','1','15.0629333333333','-88.7492016666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8007','DAVID PORTILLO','B. EL CENTRO QUEZAILICA','0000-0000','BODEGA PORTILLO','1','15.0623516666666','-88.7564616666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8008','FRANCISCA ORELLANA','TRACERROS FRENTE CALLE PAVIMENTADA','0000-0000','BODEGA LAS GEMELAS','0','15.0621166666666','-88.7506749999999','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8011','BRENDA MARITZA VALLE','LA ENTRADA COPAN CO TRIANGULO','26612774','BODEGA JORGES','1','15.0583133333333','-88.7539766666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8012','YURY LYNN CANTARERO','SULA SANTA BÁRBARA FRENTE A CARRETERA INTERNACIONAL','99964013','BODEGA KARLITA','1','15.248363','-88.556197','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8013','MIGUEL ESTUARDO PACHECO','LA ENTRADA COPAN CO TRIANGULO','2612196','BODEGA LA CAMPESINA','1','15.060726','-88.755504','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8014','ZOILA ELENA TORRES','SANTA RITA COPAN','26567217','BODEGA LAS GEMELAS','1','14.86728','-89.094792','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8015','WILLIAM PEÑA','COPAN RUINAS B EL CENTRO','0000-0000','BODEGA LOS PEÑAS','1','14.8387233333333','-89.1566849999999','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8016','JOSE ALBERTO WELCHES GUERRA','COPAN RUINAS B EL CENTRO','26514608','BODEGA WELCHES','0','14.8372433333333','-89.1564699999999','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8017','KARLA PATRICIA MUÑOZ','LA ENTRADA COPAN SALIDA A FLORIDA FRENTE A PAVIMENTDA','0000-0000','BODEGA NICOLE','0','15.0627866666666','-88.7573283333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8018','DELMI ARACELY VILLANUEVA JIRON','LA ENTRADA COPAN B. EL PROGRESO','26613054','BODEGA PATY','1','15.0628983333333','-88.7492166666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8019','EVA YOLANDA ERAZO','LA ENTRADA COPAN CO BANEZA','26612127','BODEGA PEÑA','1','15.0606883333333','-88.7555133333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8020','DUNIA RIVERA','B EL CENTRO CHALMECA COPAN','0000-0000','BODEGA TREBOL','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8021','AMINTA MIRANDA ORTES','CALLE PRINCIPAL CALLEJONES SANTA BARBARA','0000-0000','BODEGA ESTRELLA','1','15.193784','-88.640385','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8022','CARLOS FRANCISCO CARRANZA','SANTA RITA COPAN','26567518','COMERCIAL ALEJANDRA','1','14.8683033333333','-89.095735','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8023','ALEXIS PONCE','LA UNION LEMPIRA','0000-0000','ALEXIS PONCE','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8024','CESAR HUMBERTO PACHECO','LA ENTRADA COPAN CO BANEZA','99954106','COMERCIAL CESAR','0','14.7839516666666','-88.7792966666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8025','BERTHA BUESO','COPAN RUINAS B EL CENTRO','26514081','COMERCIAL CRUZ BUESO','1','14.8392316666666','-89.1549683333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8026','ELIZABETH TORRES','SANTA RITA COPAN','26517139','COMERCIAL EMANUEL','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8027','FREDY ANIBAL SORTO','SAN RAFAEL LEMPIRA','94638006','BODEGA FREDY','1','14.7767699999999','-88.7790716666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8028','OSCAR OBDULIO GÁLVEZ','AZACUALPA SANTA BARBARA B. EL CENTRO','26587167','COMERCIAL GALVEZ','1','15.344655','-88.5525183333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8029','JESÚS ALBERTO SANABRIA','SANTA RITA COPAN','26567153','COMERCIAL HEIDI','1','14.86737','-89.0942966666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8030','REINA VICTORIA DUBON SANABRIA','LA ENTRADA COPAN CO BANEZA','26612192','COMERCIAL LA REYNA','1','15.0581116666666','-88.7542616666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8009','WENDY KARLET  REGALADO','COPAN RUINAS B EL CENTRO','26514197','BODEGA GLORIAS','1','14.838693','-89.156574','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8010','ISABEL GOMES','LAS BODEGAS FRENTE CARRETERA INTERNACIONAL','9845 2938','BODEGA GOMEZ','1','14.77675','-88.779045','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8061','DENIS MAURICIO HERNÁNDEZ','CALLE PRINCIPAL CALLEJONES SANTA BARBARA','26050647/99181742','COMERCIAL  EL TREBOL','1','15.1941066666666','-88.63989','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8062','RENE ENRRIQUE VILLEDA','LA ENTRADA COPAN B. EL DORADO','99035735','PULPERIA VILLEDA','1','15.0628933333333','-88.749205','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8063','GUSTAVO FLORES','NARANJITO SANTA BARBARA FRENTE A LA PLAZA','98109851','PULPERIA JAQUELINE','1','14.7768566666666','-88.7792616666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8064','MARIA SELINA PORTILLO','AZACUALPA SANTA BARBARA B. EL CENTRO','26587150','BODEGA JESICA','1','15.344635','-88.5523883333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8065','CARLOS FLORES','NARANJITO SANTA BARBARA B. EL CENTRO','33755776','TIENDA NARANJITO','1','14.7769','-88.7791816666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8066','VARIEDADES LA CARRETA','SANTA RITA COPAN','0000-0000','VARIEDADES LA CARRETA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8067','LINDER HIMBERTO PÉREZ','B EL CENTRO CABAÑAS COPAN','98547725','BODEGA LINDER','1','14.9176783333333','-88.98684','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8068','VICTORIANO AYALA CABALLERO','BARRIO EL CENTRO LA ENTRADA COPAN','26613814/97306301','BODEGA J. VICTOR','0','14.8372683333333','-89.1565016666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8037','PABLO ERASMO DE JESUS','TRACERROS FRENTE CALLE PAVIMENTADA','97219087','BODEGA PABLO','1','14.781295','-88.7652733333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8038','ROGELIO DIAZ','LA UNION LEMPIRA','98080398','ROGELIO DIAZ','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8039','VICTOR RAMON BUESO','FLORIDA COPAN B EL CENTRO','26512291','MINI SUPER LOS ALMENDROS','1','15.026935','-88.8331633333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8040','RAMON GARCIA','MACUELIZO SANTA BARBARA B EL CENTRO','97663767','MINI SUPER EL CENTRO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8041','DILIA RIVERA','B EL CENTRO CHALMECA COPAN','26410034','MI BODEGUITA','0','15.2475516666666','-88.556395','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8042','GLADIS MARITZA BARRERA','LA ENTRADA COPAN B. MORAZAN','26613976','BODEGA GABY','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8043','SONIA IVETH ARITA MADRID','EL PARAÍSO B EL CENTRO','26511029','MULTI NEGOCIOS MAYNOR','0','15.0241383333333','-88.9831383333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8044','MANUEL EDAGARDO MEJIA','EL PARAÍSO B EL CENTRO','26511016/97765918','PULPERIA ALY','1','15.02356','-88.9820933333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8045','BARTOLA GUARDADO','FRENTE A CARRETERA INTERNACIONAL CHIQUILA SANTA BARBARA','94878172','PULPERI CRISTIAN','1','15.2253283333333','-88.5902216666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8046','ROBERTO RUIZ','EL OCOTON SAN ANTONIO COPAN','0000-0000','PULPERIA EL VEINTE','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8069','JOEL QUINTANILLA','BARRIO MORAZAN LA ENTRADA COPAN','0000-0000','INVERSIONES QUINTANILLA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8070','MARCO TULIO HERNANDEZ DIAZ','BO. EL TRIANGULO LA TERMINAL DE BUSES ENTRADA A COPAN','26613086','ABARROTERIA MARCOS','1','15.057925','-88.7542816666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8071','YOLANI GUTIERRES','BARRIO MORAZAN LA ENTRADA COPAN ANTES DEL COLEGIO','97085343','BODEGA ANGEL','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8072','REINA LETICIA BUESO','BARRIO EL CENTRO SAN AGUSTIN COPAN','99167261','PULPERIA LETICIA','1','14.818514','-88.939707','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8073','SUYAPA MILLA','BARRIO EL CENTRO SAN AGUSTIN COPAN','96412975','PULPERIA SUYAPA','1','14.819247','-88.938591','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8074','MELVA LORENA FUENTES','BARRIO EL CENTRO SAN AGUSTIN COPAN','97868707','PULPERIA LORENA','1','14.819223','-88.937327','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8075','HUMBERTO CRUZ PAREDES','BARRIO EL CENTRO SAN AGUSTIN COPAN','99542274','MI BARATILLO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8076','CESAR OMAR DUBON','UNA CUDRA ANTES DE LA ESCUELA DULCE NOMBRE COPAN','26579292/96005439','BODEGA DUBON','1','14.849096','-88.835643','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8077','ELVIS NAPOLEON ARDON','SALIDA A SAN AGUSTIN DULCE NONBRE COPAN','26579070/98780245','MI PREFERIDA','1','14.849489','-88.832742','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8078','GERSON DORIANO MEJIA','CALLE PRINCIPAL CANDELARIA DULCE NOMBRE COPAN','96668679','PULPERIA MEJIA','1','14.858193','-88.864483','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8079','JULIA ROSA VASQUEZ MELGAR','BARRIO EL CENTRO DULCE NOMBRE COPAN','26579123','PULPERIA LAS JULIAS','1','14.857824','-88.834537','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8080','EDGAR ROLANDO PORTILLO GALVEZ','SALIDA A COPAN RUINAS  SANTA RITA COPAN','99495048','MI SUPER','0','14.7839654','-88.7796121','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8081','DANIEL ALMASAN','CALLE PRINCIPAL SANTA RITA COPAN','0000-0000','COMERCIAL DEYNI','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8082','DANIA ROCIO MENA','BARRIO EL CENTRO  FRENTE AL MERCADO  EL PARAIZO COPAN','96271305','PULPERIA GOSENM','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8084','CERVELIO MEJIA','BARRIO EL CENTRO LA UNION LEMPIRA','98257593','BODEGA CERVELIO','1','14.776945','-88.7792216666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8085','MILTON JUARES DUBON','BARRIO EL CENTRO LA UNION LEMPIRA','97587233','MILTON JUARES DUBON','0','14.77133','-88.77589','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8086','KARLA PATRICIA JUAREZ','BARRIO EL CENTRO LA UNION LEMPIRA','0000-0000','CARLA PATRICIA JUARES','0','14.810875','-88.4127366666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8087','DORIS MARIBEL VASQUEZ','FRENTE A CARRETERA INTERNACIONAL  COLONO 6 DE MAYO  LOS TANGOS C.','96850405','BODEGA DEYLI','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8195','PULPERIA SAN ANTONIO','SANTA ROSA DE COPAN','97609928','PULPERIA SAN ANTONIO','1','15.0186133333333','-88.8742666666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8196','MARTHA LIDIA ERAZO DUBON','LA ENTRADA DE COPAN','26612087','BODEGA LA COPANECA','1','15.0629066666666','-88.7492133333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8197','BLANCA ERAZO','SAN ANTONIO DE COPAN','98445093','PULPERIA GLENDA','1','15.024185','-88.98326','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8200','KELVIN MAURICIO MORENO','BARRIO FLORIDA','96513190','MINI SUPER ECONOMICO','1','14.857708','-88.834937','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8201','ALEXIS PONCE','LA UNION LEMPIRA','96396400','ABARROTERIA PONCE','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8202','ROGER LEONEL MORALES','COPAN RUINAS','26514557','RICOPAN','1','14.83789','-89.156505','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8217','SERGIO ALVARADO','LA ENTRADA COPAN','0000-0000','ABARROTERIA LA NUEVA','1','15.0630233333333','-88.7502483333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8218','ROSA ELENA SOLER','BARRIO LAS FLORES','0000-0000','PULPERIA EL PROGRESO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8227','JUAN CARLOS VEGA','SANTA RITA COPAN','95692463','J.J. PREBASICO','0','14.9176933333333','-88.9107216666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8228','LEONEL RODRIGUEZ','EL PARAISO COPAN','98324359','BODEGA PORTILLO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8237','JUAN PABLO MARTINEZ ALVARES','LA ENTRADA CB. BO MIRAFLORES','26612788','DISTRIBUIDORA GLORIAS','1','14.7768083333333','-88.779225','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8238','ROSEBEL SANTOS CANALES','LA ENTRADA BO. EL PROGRESO','97220087','MINI BODEGA DIMA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8239','CLAUDIA ABIGAIL TRIGUEROS','STA RITA COPAN BO. EL CENTRO','26567470/96352774','PULPERIA J.J','1','14.866457','-89.095895','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8047','LUCAS FERNANDO RAMOS','B. EL CENTRO DULCE NOMBRE COPAN','95141414','PULPERIA ESCOTO','0','14.7768483333333','-88.7792116666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8048','CRUZ FLORES','NARANJITO SANTA BARBARA B. EL CENTRO','0000-0000','PULPERI FLORES','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8049','GERMAN SORTO','SAN RAFAEL LEMPIRA','96256885','BODEGA GERMAN','1','14.7813766666666','-88.7651483333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8050','A NA LIDIA ARITA','B. EL CENTRO DULCE NOMBRE COPAN','26579082','PULPERIA YOHANA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8051','KENIA MARINA MEJIA TABORA','EL PARAÍSO B EL CENTRO','99175818','BODEGA KAREN','1','15.0122383333333','-88.9576933333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8052','HERNAN ARGUETA','B EL CENTRO CHALMECA COPAN','96146070','PULPERIA LA CHINITA','1','15.19423','-88.6402266666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8053','MARGARITA VALLECILLO','TRACERROS FRENTE CALLE PAVIMENTADA','26081454','PULPERIA MERGARITA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8054','MARGARITA DUARTE','EL PARAÍSO B EL CENTRO','26511410','PULPERI MELVIN','1','14.7787233333333','-88.7793816666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8055','LESBIA ANTONIA ARITA','FLORIDA COPAN B EL CENTRO','26512441','ABARROTERIA NAYELY','1','14.7776433333333','-88.77915','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8056','ELISABEHT','COPAN RUINAS B EL CENTRO','0000-0000','BODEGA BBB','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8240','HECTOR OBDULIO GUERRA','COPAN RUINAS BO. EL CENTRO','0000-0000','MINI SUPER SALEM','1','14.838675','-89.1573083333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8241','JAVIER ANTONIO TABORA','FLORIDA  BARRIO EL PLAN','26512069/99480950','BODEGA EL PUNTO','1','15.0286549999999','-88.8329516666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8246','LUCIA IGLESIAS FERNANDEZ','STA ROSA DE COPAM','96727776','PULPERIA ANA BELEN','0','14.7767237','-88.7793122','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8271','WALTER PINEDA MORALES','LA ENTRADA COPAN BO LA SIERRA','97859047','ABARROTERIA PINEDA','1','15.058454','-88.751754','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8272','JOSE DAVID LOPEZ LUNA','BO LA RONDA','96636300','SUPER ABARROTERIA LUNA','1','14.777365','-88.7787433333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8273','ANGEL ANTONIO ARGUETA','COPAN RUINAS','26612292/99074984','DEPOSITO COPAN','0','14.8172316666666','-88.7772216666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8276','AMAN ALDANA','RIO AMARILLO','99286183','BODEGA YANCARLO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8277','MANUEL DE JESUS MADRID DUBON','BO. EL CENTRO FLORIDA COPAN','99629126','LA BODEGA','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8278','JOSE AFREDO GUTIERREZ','BO. LA FLORIDA','98402094','BODEGA ALFREDO','0','14.8532933333333','-88.8302533333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8286','MAIRA YESSENIA TABORA ALVARADO','SANTA ROSA DE COPAN BARRIO DOLORES','26622580','MERCADITO LIDIA','1','14.775214','-88.771052','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8288','PEDRO DANILO AMAYA GOMEZ','NUEVA PAZ UNION LEMPIRA','98129790','ABARROTERIA DANILO','0','14.7812233333333','-88.7652766666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8289','ALAN IZAIAS REYES','NUEVA PAZ UNION LEMPIRA','94572251','PULPERIA BLADIMAR  Y ROSITA','1','14.77723','-88.779405','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8290','JOSE ANTONIO TORO','BRRO EL CENTRO','95591566','ABARROTERIA GEISSEL','0','14.7767933333333','-88.779475','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8291','YARITSA MAYGOTH ALVARADO','BO EL CENTRO','98417935','PULPERIA Y ABARROTERIA YARY','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8305','MARIO ROBERTO COREA VALLE','BO MIRAFLORES LA ENTRADA','9896-8590','DISTRIBUIDORA MARIOS','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8306','CARLOS ANTONIO PERDOMO MARTINEZ','BO EL CENTRO','9903-5690','ABARROTERIA CARLITOS','1','14.771235','-88.7758666666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8320','OSCAR MAURICIO MORALES MORALES','CONTIGUO A BANCO ATLANTIDA  COPAN RUINAS','0000-0000','RENANCER','0','14.7767533333333','-88.7791833333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8322','KARLA PATRICIA MIRIANDA CABALLERO','TRINIDAD COPAN','3153-1156','EL PROVEDOR','1','14.7714333333333','-88.7759483333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8323','MANUEL ENRIQUE VILLELA CACERES','SANTA RITA DE COPAN','2656-7183','TIENDA VILLELA','1','14.867015','-89.09564','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8328','WALESKA SULAY CASTILLO GONZALES','BO DOLORES SANTA ROSA DE COPAN','87955036','DISTRIBUIDORA DE ALIMENTOS RIVERA','1','14.8683433333333','-89.0958066666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8336','LUIS ELIAZAR PEÑA MADRID','SAN FERANDNDO FTE. A PARQUE CENTRAL OCOTEPEQUE','98541288','BODEGUITAS LAS PEÑAS','1','14.8683433333333','-89.0958066666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8337','JOSE ROBERTO VALLE AREVALO','LA ENTRADA COPAN FTE A A TERMINAL DE BUSES','2661 3354','ABARROTERIA LA TERMINAL','1','14.7768683333333','-88.7791633333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8341','NIBIA ORELIN PORTILLO','BO . LAS ACACIAS  CALLE PRINCIPAL  SANTA ROSA COPAN','9573-9646','MINI SUPER LAS ACACIAS','0','15.0732549999999','-88.73951','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8348','SANDRA ELIZABETH PORTILLO GALVEZ','SALIDA A COPAN RUINAS SANTA RITA DE COPAN','99493048','GRUPO RODES BAMBU SRL','1','14.8687066666666','-89.0959366666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8351','NOLVIA DEL CARMEN CRUZ GALVEZ','LA ENTRADA COPAN BO. EL PROGRESO','8936-2074','MINI SUPER EL AHORRO','1','15.0628716666666','-88.7491783333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8355','RITA MARIA ALVARES MEJIA','BARRIO EL CENTRO SANTA RITA COPAN','31507067','INVERSIONES ALVAREZ','1','14.866795','-89.0961033333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8357','HUGO NAUN ESPAÑA MARTINEZ','BO EL TRIANGULO LA ENTRADA COPAN','3170-0426','MINISUPER EL DESCUENTO','1','15.062749','-88.749546','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8365','FERMIN RIVAS','COLONIA 6 DE MAYO MACUELIZO SANTA BARBARA','97859642','PULPERIA LOS HERMANOS','1','15.176586','-88.646921','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8366','RONY ANTONIO LARA AGUIRRE','COL. SAN JOSE LA ENTRADA COPAN','96647138','INVERSIONES LARA','1','15.0607016666666','-88.7553183333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8057','JOSE OBEL URBINA MARQUEZ','A LA ORILLA DE LA CARRETERA CANDELARIA','98349606','BODEGA OBEL','0','14.7768954','-88.7792534','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8058','GRACIELA MATA','MACUELIZO SANTA BARBARA B EL CENTRO','97178658','PULPERIA ONAN','1','15.315583','-88.540864','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8059','ORALMA MEJIA','SAN RAFAEL LEMPIRA','951883731','PULPERIA ORALMA','1','14.7267','-88.4188966666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8060','TELMA YOLANDA MEJIA TORRES','EL PARAÍSO B EL CENTRO','98833664','PULPERIA SAN JOSE','1','15.0257183333333','-88.9833516666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8367','JOSE ALFREDO MEJIA GARCIA','BO. LOS ANGELES 1 CUADRA NORTE DEL 12AVO BATALLON CASA COLOR AMARILLO CON GRIS','9896-6656','JOSE ALFREDO MEJIA GARCIA','0','14.777344','-88.767543','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8373','EDGAR ROLANDO PORTILLO','BO EL TRIANGULO LA ENTRADA COPAN','0000-0000','INVERSIONES GUAYACAN','1','15.054635','-88.7555083333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8380','HERMEX OBDULIO MURCIA','ALDEA AGUA BLANCA 100 MTS DE LA POSTA POLICIAL SALIDA A FLORIDA','9865-1986','INVERSIONES MURCIA','1','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8382','JOSE HUMBERTO GALLEGOS ALVARADO','BO LA FUENTE CALLE PRINCIPAL ','8816 6263 Y 9847 3922','ABARROTERIA ZOE','1','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8031','MAXIMO RAMIREZ','SAN RAFAEL LETICIA','99354040','BODEGA MANCHO','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8032','ISAURA CASTILLO CONTRERAS','EL PARAÍSO B EL CENTRO','26511075','COMERCIAL MAYRA','1','15.0239599999999','-88.9826433333333','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8033','MILTON DUBON','LA UNIÓN LEMPIRA','0000-0000','MILTON DUBON','1','14.771285','-88.7759','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8034','RIGOBERTO HERNÁNDEZ','SAN RAFAEL LEMPIRA','96083886','BODEGA RIGO','1','14.7630766666666','-88.7834916666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8035','SAYDA MARIA GÁLVEZ','SANTA RITA COPAN','26567180','MULTI INVERSIONES ALFA Y OMEGA','1','14.86905','-89.0688216666666','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8036','SERVELIO PONCE','LA UNION LEMPIRA','0000-0000','SERVELIO PONCE','0','0','0','486');
INSERT INTO Clientes_impulsadoras VALUES(0,'8107','FRANCISCO ESCALANTE','ESQUINA OPUESTA A BANCO ATLÃNTIDA GRACIAS LEMPIRA','26561250','BODEGA VEINTE Y DIEZ MENOS','0','14.5917604','-88.5864716','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8108','OSCAR MELECIO CRUZ DERAS','AL PAR DE COMERCIAL MARIOS BARRIO SANTA TERESA','26624479','BODEGA CRUZ','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8109','ENOC CRUZ CASTILLO','ESQUINA OPUESTA A PARQUE CENTRAL ERANDIQUE LEMPIRA','0000-0000','BODEGA CRUZ CASTILLO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8110','ERIKA LETICIA GOMES G.','CO MIRA FLORES','0000-0000','SUPERMERCADO EL VEINTE MENOS','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8111','DILCIA BUESO POLANCO','FRENTE A CARRETERA INTERNACIONAL BARRIO EL CALVARIO CUCUYAGU','26510684/99205445','ABARROTERIA EL AHORRO','1','14.652816','-87.649','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8112','SANTOSA RIVERA RIVERA','BARRIO BUENOS AIRES SAN MARCOS OCOTEPEQUE FRETE AL BULEVAR','0000-0000','BODEGA EL BUEN AMIGO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8113','BELMA ESPINAL TABORA','BARRIO SANTA TERESA SANTA ROSA DE COPAN','96590059','BODEGA EL CAMPESINO','1','14.58535','-88.5813516666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8114','JOSE ESTEBAN LÓPEZ','BARRIO SAN JUAN SAN MARCOS OCOTEPEQUE','26634282/99663471','BODEGA EL DESCUENTO','1','14.4117516666666','-88.9533933333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8115','ORLANDO GARCÍA SANTA MARIA','SAN MARCOS OCOTEPEQUE','26634480/97393478','ABARROTERIA EL ANGEL','1','14.4128983333333','-88.9551583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8160','MANUEL SERRANO','GUANIJIQUIL LA VIRTUD LEMPIRA','97038142','BODEGA SERRANO','1','14.079752','-88.695585','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8161','GERMAN EVELIO LOPEZ AMAYA','CALLE PRINCIPAL MAPULACA LEMPIRA','98050725','PULPERIA SARAI','1','14.0300616666666','-88.6168116666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8162','DEISY VSQUEZ','BARRIO SAN JUAN LEPAERA LEMPIRA','0000-0000','DEISY VASQUEZ','1','14.77855','-88.588831','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8163','SONIA YOLANDA LÓPEZ','BARRIO MIRAFLORES ATRAS DE TERMINAL DE BUSES','26621369/97012298','ABARROTERIA KRISTY','1','14.777465','-88.7782816666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8164','REINALDO MARQUES GARCA','BRRO LAS DELICIAS LEPAERA LEMPIRA','26555473/97479935','PULPERIA YASSILI','1','14.781004','-88.591689','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8165','LUIS MARTINEZ','BARRIO EL CENTRO FRENTE A PLAZA ERANDIQUE LEMPIRA','0000-0000','PULPERIA EL AMIGO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8166','YESSENIA YAMILETH CHINCHIA P.','FRENTE A TERMINAL DE BUSES SAN JOSE OCOTEPEQUE','26533950/95918116','SURTIDORA CHINCHILLA','1','14.4365716666666','-89.1836533333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8167','ERIKA LETICIA GOMES G.','CO MIRA FLORES','0000-0000','SUPERMERCADO EL 0 20 MENOS','0','14.7780863','-88.7789755','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8168','JOSÉ ÁNGEL ABREGO','FRENTE A CALLE HACIA MAPULACA LA VIRTUD','98319038','ABARROTERIA SAN JOSE','1','14.059595','-88.6928283333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8169','JOSE ADOLFO CABALLERO','POR PANADERIA TABORA SANTA ROSA COPAN','26625998/97658491','JOSE ADOLFO CABALLERO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8170','GERARDO ESPINAL','FRENTE ACARRETERA INTERNACIONAL SALISA A OCOT SRC','95297855','COMERCIAL EL CAMPESINO #2','0','14.7626753','-88.774461','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8171','MARIO CESAR LOPEZ RAMOS','FRENTE A COPAN INDUSTRIAL SANTA ROSA C.','26626972/98214563','COMERCIAL MARIOS','1','14.7637833333333','-88.776675','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8172','DALILA VALLE','FRENTE A TERMINAL DE BUSES OCOTEPEQUE','26532351/99218934','COMERCIAL JUNIOR','1','14.437447','-89.182793','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8173','YIMI WASNER TOVIAS','BARRIO EL PROGRESO SANTA ROSA','96827786','ABARROTERIA TOVIAS','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8174','YAMILET POLANCO','CALLE A LA NORMANL OCOTEPEQUE','26532623/99981257','ABARROTERIA EL EXITO','1','14.437118','-89.184316','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8175','BERNARDINO MEJIA MEJIA','BARRIO EL CENTRO FRENTE AL MERCADO GRACIAS LEMPIRA','26561446/94746030','MINISUPER  MAS POR MENOS','1','14.589294','-88.582696','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8176','ISABEL CRISTINA VALLECILLOS','BARRIO EL CENTRO LEPAERA LEMPIRA','26555128/98885535','COMERCIAL BLANCA NIEVES','1','14.778906','-88.589285','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8177','MARIA ORBELINA FERRERA AMAYA','BARRIO EL CENTRO LEPAERA LEMPIRA','97564733','ABARROTERIA JOSTIN','1','14.7787773','-88.589251','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8095','JUAN MANUEL ESPINOSA ESPINOSA','BARRIO SAN JOSE 1 CALLE ADOQUINADA A CO SAN ANTONIO OCOTEPE','0000-0000','AQBARROTERIA ESPINOSA','1','14.4378533333333','-89.1823066666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8096','EDIN ORLANDO TRIGUEROS','BARRIO EL CALVARIO FRENTE A CARRETERA INTERNACIONAL CUCUYAGU','95738900','ABARROTERIA INTERNACIONAL','1','14.652699','-88.8756','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8097','REINA MARGARITA CARRANZA CHINCHILLA','BARRIO CONCEPCION FRENTE A COMERCIAL NORMA OCOTEPEQUE','0000-0000','ABARROTERIA JOSUE','1','14.4373399999999','-89.1836566666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8098','OLGA LETICIA MEJIA','BARRIO EL CENTRO GRACIAS LEMPIRA','99669336','PULPERIA LETTY','0','14.5893554','-88.5823429','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8099','MARCELINO MARQUEZ GABARRETE','CALLE HACIA GUARITA TERLACA LEMPIRA','98548126','PULPERIA GABARRETE','0','14.2146103','-88.8297674','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8100','LUÍS ALONSO AGUILAR','UNA CUADRA DEBAJO DE GASOLINERA DIPSA SAN MARCOS OCOT.','26634399/99545202','MINISUPER  MAS POR MENOS','1','14.4117516666666','-88.9533933333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8101','ISRAEL MORALES','LA LABOR MUNICIPIO DE OCOTEPEQUE','26635283/95855392','PULPERIA MORALES','0','14.4157228','-89.1942742','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8102','ERIK PORTILLO VALLE','BARRIO CONCEPCION OCOTEPEQUE','26533649/33498452','ABARROTERIA PORTILLO','1','14.436245','-89.1825249999999','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8103','LUZ ARGENTINA FUENTES','BARRIO EL CENTRO LEPAERA LEMPIRA','26655291','ABARROTERIA PRECIOS BAJOS','1','14.780603','-88.590783','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8116','ESPERANZA HANDAL DE JAAR','BARRIO EL CENTRO CORQUIN COPAN','26558333/94696564','BODEGA JAAR CAROLINA','1','14.5637416666666','-88.8730316666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8117','BERNARDO MEJIA','BARRIO EL CENTRO GRACIAS LEMPIRA','26561446/94746030','SUPLIDORA LA GRACIANA','0','14.4376151','-89.1829139','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8118','MARILU ALVARADO ORELLANA','BARRIO EL CENTRO LEPAERA LEMPIRA','99992809','BODEGA ALVARADO','1','14.7794316666666','-88.5883499999999','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8119','REINA E. VILLEDA VALLE','BARRIO CONCEPCIÓN FRENTE CARRETERA INTERNACIONAL OCOTEPEQUE','26533046','BODEGA SAN FRANCISCO','1','14.437432','-89.182846','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8120','JOSE SANABRIA','FRENTE A DEPOSITO COTO OCOTEPEQUE','0000-0000','BODEGA SAN JOSE','1','14.4375183333333','-89.1822116666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8121','NELSON JOVANI LPEZ','A LA PAR DE COMERCIAL ROMERO CUCUYAGUA COPAN','26510381/98744522','ABARROTERIA DANIELA','1','14.65449','-88.8751016666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8122','OLGA MARINA PACHECO SOTO','BARRIO EL CAPUARIO FRENTE A ABARROTARÃA KAREN CUCUYAGUA COPA','26510247/98671301','ABARROTERI DAVID','0','14.6507057','-88.876595','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8123','MARIA MARTÍNEZ','TERLACA GUARITA LEMPIRA','99772473','PULPERIA JERUSALEN','1','14.2107316666666','-88.8292383333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8124','ERIK JAVIER BULNES','BARRIO SAN JOSE OCOTEPEQUE','26533724/99742267','COMERCIAL BULNES','1','14.4384616666666','-89.1825766666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8178','JOSE NEFTALI PINTO CASTRO','CONTIGUO A LA AMACA PEATONAL LEPAERA LEMPIRA','26555079/99272962','COMERCIAL ERIKA','1','14.779635','-88.5911366666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8179','DAYSI ONDINA VASQUEZ','SALIDA A ARENALES LEPAERA LEMPIRA','26555199/98586943','ABARROTERIA LA BENDICION','1','14.7785283333333','-88.5890383333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8180','JORGE NERY AGUILAR','BARRIO EL CENTRO SAN MARCOS OCOTEPEQUE','26634226/96765231','MINISUPER MIKE','1','14.4105316666666','-88.9548516666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8181','SERVIO OMAR BAUTISTA','BARRIO EL CENTRO LEPAERA LEMPIRA','96582186','MINISUPER PAPA CHEPE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8182','JOSE ANTONIO VILLEDA','BARRIO EL CENTRO LEPAERA LEMPIRA','0000-0000','ABARROTERIA MONTECRISTO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8183','ARNULFO ESCALANTE ALVARENGA','BARRIO EL ROSARIO GRACIAS LEMPIRA','98726707','BODEGA LOS GEMELOS','1','14.5875866666666','-88.5833333333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8184','RAMON AMAYA PORTILLO','BARRIO EL CENTRO ARRIBA DEL MERCADO GRACIAS LEMPIRA','95258778','ABARROTERIA PORTILLO','1','14.5896083333333','-88.5822016666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8185','ARNULFO AGUIRRE','BARRIO EL CENTRO GRACIAS LEMPIRA','26560372/99640067','ABARROTERIA MEYDI','1','14.587192','-88.582942','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8186','MIRNA LIZETH GONZALES','FRENTE ACARRETERA INTERNACIONAL SALISA A OCOT SRC','26621452/98074191','ABARROTERIA MICHELLE','1','14.7635233333333','-88.7740799999999','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8125','JOSÉ LINO','B. GUALMACA MEDIA CUADRA ANTES DE LA PLAZA ERANDIQUE LEMPIRA','26556070/97849604','COMERCIAL CACERES CHACON','0','14.0305659','-88.6201223','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8126','OSCAR ARMANDO CARCAMO','FRENTE A PLAZA ERANDIQUE LEMPIRA','97249453','COMERCIAL CARCAMO','1','14.2371899999999','-88.4642416666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8127','LESBI MARIA RIVERA','CO CALVARIO CUCUYAGUA COPAN','26510028/95109616','COMERCIAL CAROL','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8128','ALBA INES CARTAGENA','BARRIO EL CENTRO LEPAERA LEMPIRA FRENTE A JUZGADOS','26556091/99072448','COMERCIAL ENRIQUE','1','14.7793883333333','-88.5926','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8129','IVAN M CARRANZA','FTE TERMINAL DE BUSES SAN JOSE BO. CONCEPCION.OCOTEPEQUE','26533358','COMERCIAL IVAN','1','14.4375726','-89.1829988','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8130','MELVIN PORTILLO','BARRIO SAN JOSE OCOTEPEQUE','0000-0000','MELVIN PORTILLO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8131','NORMA TELMA MORAN IRIARTE','BARRIO CONCEPCION FRENTE A ABARROTARIA JOSUE OCOTEPEQUE','26533991/98995008','COMERCIAL NORMA','1','14.4371916666666','-89.1836766666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8132','CARLOS HUMBERTO RAJO','FLOR DEL COPAN FRENTE A BOULEVARD SANTA ROSA DE COPAN','26620412/97940085','COMERCIAL RAJO','1','14.7751916666666','-88.7772316666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8133','JOSE DONALDO ROMERO','FRENTE AL BANCO DE OCCIDENTE CUCUYAGUA COPAN','26510086/99582728','COMERCIAL ROMERO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8187','EMERITO MEJIA SANTOS','FRENTE A GASOLINERA TEXACO LA REINA SANTA ROSA C.','99523787/98304767','ABARROTERIA EL CAMPECHANO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8193','MAVEL JOHANA CARRANZA','D','26555381/99316427','ABARROTERIA YOSSELIN','0','14.4088885','-88.9545827','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8194','ABARROTERIA FABIOLA','D','0000-0000','ABARROTERIA FABIOLA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8198','ABARROTERIA BRAYAN','GRACIAS LEMPA','0000-0000','ABARROTERIA BRAYAN','1','14.5862366666666','-88.5810816666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8199','PULPERIA ENAMORADO','ERANDIQUE','0000-0000','PULPERIA ENAMORADO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8203','ALBA LUZ GONZALES','TERMINAL DE BUSES SANTA ROSA DE COPAN','26626049/99834421','PULPERIA LOS HERMANOS','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8204','LIDIA MARIA RAMOS','FRENTE A MERCADO SANTA TEREZA SANTA ROSA DE COPAN','26621307/95241732','ABARROTERIA LIDIA','0','14.7625721','-88.7749217','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8205','ROSA DIANA PORTILLO MALDONADO','FRENTE A MERCADO SANTA TEREZA SANTA ROSA DE COPAN','99270343','ABARROTERIA ROSSY','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8206','KAREN PATRICIA MORALEZ','FRENTE A MERCADO SANTA TEREZA SANTA ROSA DE COPAN','33248933','INVERSIONES EL PROVEEDOR','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8207','RUDY SADITH LOPEZ ALVARADO','DESVIO A CORQUIN COPAN CUCUYAGUA COPAN','26510442/98913294','MINI SUPER LOPEZ','1','14.4117516666666','-88.9533933333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8208','JOSE ADILIO NU‘EZ','FRENTE A LA PLZA GUARITA LEMPIRA','0000-0000','VILLARES GUARITA','1','14.18358','-88.8222225','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8209','JOSUE  ABEL CARTAGENA','BARRIO EL CENTRO TOMALA LEMPIRA','95406029','PULPERIA EL BUEN HERMANO','1','14.2257933333333','-88.7847583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8210','JULIO ELIAZAR CARTAGENA','TOMALA LEMPIRA','99026049','PROVEEDORA EL DESCUENTO','1','14.226733','-88.784356','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8211','MIGUEL ANGEL DIAZ','SALIDA A ARENALES LEPAERA LEMPIRA','97141664','ABARROTERIA ENMANUEL','1','14.786852','-88.59447','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8212','LAURA JANETH CHINCHILLA','CUCUYAGUA COPAN','26510216/96719179','ABARROTERIA CHINCHILLA','1','14.6480133333333','-88.8897583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8213','MAYRA CAROLINA ROSA','CONCEPCION  OCOTEPEQUE','26533100/97743430','COMERCIAL LA FE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8214','ISMELDA ESTEVEZ','BARRIO BERLIN CORQUIN COPAN','26558280/96567037','COMERCIAL GUEVARA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8215','YESSENIA MARILU LANDAVERDE','BARRIO BERLIN CORQUIN COPAN','26558419/99091189','COMERCIAL MILENIA','1','14.0799833333333','-88.6952633333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8216','MARIA LIDIA GARCIA','BO. SANTA TERESA','0000-0000','ABARROTERIA LIDIA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8219','NELY LILIANA RODRIGUEZ','BO. SAN JOSE OCOTEPEQUW','26533443/96667143','ABARROTERIA GABRIEL','1','14.4374116666666','-89.1820466666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8134','EDGARDO TABORA','BARRIO SANTA TERESA SANTA ROSA DE COPAN','26621169/99674996','COMERCIAL TABORA','1','14.7630416666666','-88.7747933333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8135','SANDRA MARISOL CARTAGENA','FRENTE A CALLE PRINCIPAL TOMALA LEMPIRA','98595917','COMERCIAL MARISOL','1','14.2252','-88.7847966666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8136','HECTOR MANUEL TABORA','A LA PAR DE EDIFICIO TABORA SANTA ROSA DE COPAN','26620420/99583116','DEPOSITO MARY','0','14.7636755','-88.7762616','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8137','PETRONILA ESPINOZA PORTILLO','BARRIO EL CENTRO LEPAERA LEMPIRA','26555172/97880419','DEPOSITO Y ABARROTERI PORTILLO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8138','RAFAEL ANTONIO HERNNDEZ','BARRIO BERLIN 1/2 CUADRA DE LA PLAZA CORQUIN COPAN','96018909','COMERCIAL HERNANDEZ','1','14.568057','-88.870475','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8139','RAFAEL ANTONIO MIRANDA','BARRIO EL CENTRO FRENTE A PARQUE INFANTIL SAN MARCOS OCOTEPE','26634481/97850216','ECONOSUPER','1','14.408449','-88.952914','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8140','JOSE ESTEBAN HERNANDEZ','FRENTE A MICELANIA BAUTISTA ERANDIQUE LEMPIRA','99085282','COMERCIAL INVERSIONES HERNANDEZ','1','14.2348199999999','-88.4657583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8141','DORA NAVARRO','FRENTE A CALLE HACIA GUARITA TERLACA LEMPIRA','98393968','INVERSIONES NAVARRO','1','14.2158583333333','-88.8301583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8142','CARLOS REYES AYALA','FRENTE AL MATERNO INFANTIL LA VIRTUD LEMPIRA','95948117','ABARROTERI REYES','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8220','YASCENY C. GUERRA','BO. CENTRO LEPAERA LEMPIRA','26555363/97245909','ABARROTERIA SAN DIEGO','0','14.7793621','-88.5894273','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8221','MARIO ARNULFO AMAYA','BO. CENTRO GRACIAS LEMPIRA','26561779/96918898','ABARROTERIA AMAYA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8222','MANUEL DE JESUS ELVIR CORTEZ','BO. EL CENTRO LEPAERA LEMPIRA','96179273','INVERSIONES MI REY','1','14.7786866666666','-88.5889233333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8223','MARLENY GLENDY ARGUETA','BARRIO CENTRO LEPAERA LEMPIRA','95063335','ABARROTERIA MARLENY','1','14.7793666666666','-88.5894783333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8224','JOSSELIN DANIELA HERNANDEZ LOPEZ','BO CALVARIO CUCUYAGUA COPAN','98642979','ABARROTERIA MORENO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8225','ODILIA DEL CARMEN PORTILLO','CONCEPCION OCOTEPEQUE','26533414','COMERCIAL CHINCHILLA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8226','KAREN PATRICIA MORALES','BO STA TERESA 1/2 CUADRA SUR BUFETE CRUZ','33248933','INVERSIONES EL PROVEEDOR','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8230','AGUSTIN GABARRETE MELGAR','BO EL CENTRO GUARITA LEMPIRA','0000-0000','BODEGA EL CENTRO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8231','MERLIN DANERY CHINCHILLA','BO. CALVARIO CUCUYAGUA COPAN','96957196','COMERCIAL REY','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8235','DELMI MARINA VASQUEZ','BO CONCEPCION OCOTEPEQUE','99810225','PULPERIA CAMPECHANO','1','14.4373283333333','-89.18297','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8143','JOSEARTURO HERRERA','ESQUINA OPUESTA MERCADO MUNICIPAL GRACIAS LEMPIRA','0000-0000','MINI SUPER EL MILAGRO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8144','DAYSI SUYAPA COREA PINEDA','BARRIO EL CENTRO ERANDIQUE LEMPIRA','0000-0000','COMERCIAL BAUTISTA','1','14.2343837','-88.464597','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8145','MARCO TULIO RAMIREZ','FRENTE A PLAZA GUARITA LEMPIRA','0000-0000','MARCO TULIO RAMIREZ','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8146','ERIK CASTILLO MENENDEZ','FRENTE A PLAZA ERANDIQUE LEMPIRA','99629594','PULPERIA CASTILLO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8147','OMAR CHICAN','FRENTE AL CAMPO DE FUTBOL MAPULACA LEMPIRA','0000-0000','OMAR CHICAN','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8148','GLORIA ESTELA PASCUAL','BARRIO EL CENTRO VALLADOLID LEMPIRA','99651702','PULPERIA GLORIA','1','14.1537449999999','-88.7362383333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8149','ELENA DIAZ BAUTISTA','BARRIO EL CENTRO LEPAERA LEMPIRA','26555269','ELENA DIAZ BAUTISTA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8150','PABLO ENAMORADO','MEDIA CUADRA DE MISELANIA BAUTISTA ERANDIQUE LEMPIRA','26556226','PULPERIA ENAMORADO','1','14.2331866666666','-88.46478','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8151','PAULA ALVARENGA LOPEZ','PRIMERA CALLE ENTRADA VALLADOLID LEMPIRA','95924987','PULPERIA ERLINDA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8152','MARIA PAZ ALEMN','FRENTE A REGISTRO NACIONAL VALLADOLID LEMPIRA','0000-0000','PULPERIA EVELIN','1','14.156875','-88.735652','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8236','MERLIN ALEXNDER ROJAS','B. CENTRO CUCUYAGUA COPAN','98766945','COMERCIAL ALEXANDRA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8242','MARGARITA ERAZO CASTELLANOS','BO DOLORES S.R.C.','26622093/99336505','BODEGA KATHERINE','1','14.773591','-88.772371','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8243','SILDA DUBANY BARRAZA PAZ','COL EDEN CALLE INTERNACIONAL SINUAPA','0000-0000','COMERCIAL SARITA','0','14.4431823','-89.1927004','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8244','DENNIS FERNANDO GOMEZ','SAN JUAN LEPAERA','98786957','PULPERIA GOMEZ','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8245','ARTURO SOLIS GONZALES','B. MIRAFLORES','26621369','PULPERIA JENNIFER','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8247','ROSA BESY ESPINOZA  GARCIA','BO MIRAFLORES FTE GASOLINERA LA REYNA','98923710','ABARROTERIA CORTES','1','14.7773766666666','-88.778265','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8248','GERMAN MATIAN JACINTO','GRACIAS LEMPIRA','95795260','INVERSIONES SARAHI','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8249','SINTIA YAMILETEH CRUZ PORTILLO','BO. EL ROSARIO GRACIAS LEMPIRA','96761847 /9988-5037-26560714','INVERSIONES VICTORIA','1','14.5906185','-88.5848784','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8250','LORENA AUXILIADORA PEREZ','BARRIO EL CENTRO LA UNION COPAN','9579-1386','ABARROTERIA DANIELAS','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8251','MERLIN ALEXANDER ROJAS CONTRERAS','BO. EL CALVARIO FRENTE MERCADO MUNICIPAL','9876-6945','COMERCIAL ALEXANDRA','1','14.6543983333333','-88.8751333333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8252','BELKIS YOLANY MORENO','BO. EL CENTRO 1 CUADRA ARRIBA DEL PARQUE CENTRAL','9924-0543','COMERCIAL MARIA JOSE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8253','KARLA VARELA','COLONIA LOMA LINDA CARRETERA INTERNACIONAL','98011041','VARIEDADES Y ABARROTERIA ALEXANDRA','1','14.761315','-88.77504','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8254','IRIS MARLENE ZACAPA','BRRO MORENO TERMONAL DE BUSES','98897781','BENDICION DE JESUS','0','14.5917604','-88.5864716','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8255','REINA ISABEL LAINEZ','GRACIAS LEMPIRA','99652821','PULPERIA ARON','0','14.5894451','-88.5822264','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8256','VILMA ARELY ESCALANTE','BRRO EL ROSARIO FTE COOPERATIVA COVISMAL','99379959','PULPERIA ESCALANTE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8257','JUAN RAMOS','GRACIAS LEMPIRA','99011391','PULPERIA RAMOS','1','14.5916','-88.586684','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8258','GLORIA CARMEN GUEVARA','GRACIAS LEMPIRA','26561409/96963328','MERCADITO DENISSE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8259','ALBA ADELINA RODRIGUEZ','TAMALA LEMPIRA','96846169','PULPERIA MI DIOS ES FIEL','1','14.2269933333333','-88.7854033333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8260','AGUSTIN GAVARRETE MELGAR','GUARITA LEMPIRA BRRO EL CENTRO','99603727','INVERSIONES A GYD','1','14.18339','-88.8231125','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8261','DEISY LORERA CABALLERO','TERMINAL DE BUSES CONTIGUO BODEGA JENIFER','99868117','PULPERIA MELGAR','1','14.7769233333333','-88.7794516666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8268','ALBA ESTELA ROMERO','BO LAS BRISAS EN MEDIO DE LLANTERA','0000-0000','PULPERIA MARIA','0','14.4366557','-89.1832131','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8270','CONCEPCION GUARDADO','BARRIO EL CENTRO VALLADOLID LEMPIRA','88810065','PULPERIA KENIA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8274','AMANDA CASTILLO','ERANDIQUE LEMIRA','2655-6113','COMERCIAL COTY CASTILLO','1','14.2360289','-88.4634746','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8275','ESWIN MAUDIEL RIVERA CALDERON','SAN MARCOS OCOTEPEQUE','26634506','SUPERMERCADO RIVERA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8279','MOISES ALBERTO POLANCO PORTILLO','BO SINUAPA','96554155','COMERCIAL OCOTEPEQUE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8280','ROSA ELIDA SANTAMARIA','SAN MARCOS DE OCOTEPEQUE','99451203/98174157','MERCADITO NAZARETH','1','14.413535','-88.9547766666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8281','PEDRO GONZALES MARQUEZ','SAN JUAN GUARITA','96599946','PULPERIA GONZALES','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8282','JULIO CESAR PORTILLO','GRACIAS LEMPIRA','26560671/99337223','ABARROTERIA JULISSA','0','14.7610657','-88.7750945','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8284','YESMIN JOHANA SERRANO','BO ROSARIO ESQUINA OPUESTA CEMENTERIO','95412981','ABARROTERIA Y VENTAS GRANOS JAZMIN','1','14.5852316666666','-88.581015','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8286','MAIRA YESSENIA TABORA ALVARADO','SANTA ROSA DE COPAN','26622580','MERCADITO LIDIA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8287','KARLA HERNANDEZ','MERCADO SANTA TERESA','98580102','PULPERIA NINA','0','14.7631977','-88.7764567','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8295','YENNI GONZALES LARA','BO BRISAS DEL RIO','2656-0636','ABARROTERIA MI BENDICION','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8296','ABEL ANTONIO PINEDA','COLONIA VELLA VISTA','26627229/32493281','INVERSIONES PINEDA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8297','FREDY EDGARDO RIVERA','BO DOLORESCONTIGUO PUL ELENITA','33236938','PULPERIA MI VARIEDAD','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8298','ERWIN ARNALDO RAMIREZ LOPEZ','CORQUIN COPAN','2664-9122','ABARROTERIA R Y C','1','14.5741883333333','-88.8693166666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8299','YESSENIA BOJORQUES ROMERO','CUCUYAGUA COPAN','0000-0000','PULPERIA BOJORQUES','1','14.0799783333333','-88.6953633333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8300','GERARDO ULISCES MENJIVAR','BO. LA HERMITA 1/2 CUADRA ANTES DE LA ESCUELA','9665-5693','VARIEDADES DARELLY','1','14.4145166666666','-88.9554033333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8301','SONIA ARGENTINA LAMBUR VALLE','CARRETERA INTERNACIONAL FRENTE A GASOLINERA TEXACO','9831-6337','MINISUPER KAIROS','0','14.651019','-88.875878','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8302','EDGARDO ANTONIO BENITEZ MOLINA','BO EL ROSARIO GRACIAS LEMPIRA','26561969/98018497','ABARROTERIA GLORIA','1','14.588895','-88.583026','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8304','SERGIO ANDRES URBINA MEJIA','BO SAN JUAN 21/2 ABAJO DE MINISUPER +X-','94922348 - 2663-4378','COMERCIAL URBINA','1','14.4125683333333','-88.95299','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8332','BRENDA JULISA PALENCIA RIVAS','BARRIO SAN JOSE  OCOTEPEQUE','2653 3360 / 9981-8588','SUPER MERCADO EL SOL   SA DE CV','0','14.4376578','-89.1821019','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8333','SOBEIDA LISSETH VILLEDA','BARRIO SAN JOSE ATRAS DE LA TERMINAL DE BUSES OCOTEPEQUE','2653-3931/ 9587-8940','ABARROTERIA VILLEDA','1','14.436655','-89.181455','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8334','NERLIN ANIBAL MERCADO PORTILLO','OCOTEPEQUE','9529-1265','NERLIN ANIBAL MERCADO PORTILLO','1','14.554592','-88.940023','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8335','KAREN PATRICIA CARTAGENA CARTAGENA','BO. EL CENTRO TOMALA LEMPIRA','9909-7610','VARIEDADES LUIS ANDREE','1','14.4126383333333','-88.954675','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8339','MARINA ISABEL GONZALEZ MURCIA','COLONIA SAN ANTONIO 2 1/2 CUADRAS ARRIBA DE ESC. EL ADELAN OCOTEPEQUE','9493-7350','DISTRIBUIDORA GENESIS','1','14.6549983333333','-88.87507','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8340','LUIS ANDRES CARTAGENA LOPEZ','ALDEA TERLACA  CALLE PRINCIPAL   GUARITA   LEMPIRA','9553-1775   9846-1908','INVERSIONES MILAGROS','0','14.2146048','-88.8297958','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8343','JOSE ANSELMO CORTES ESPINOZA','BARRIO EL CENTRO LEAPAERA LEMPIRA','0000-0000','ABARROTERIA GEXEMANI','1','14.7767766666666','-88.779165','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8344','YESSENIA YAMILETH REYES GARCIA','BO. MERCEDES FTE A BCO ATLANTIDA GL SRC','9794-8872','MINISUPER YESSENIA','1','14.5895833333333','-88.5823033333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8345','AMILCAR GARCIA','BO. MERCEDES   GRACIAS   LEMPIRA','3309-5877','PULPERIA LA BENDICION','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8311','EDWIN EDIMIR MEJIA PINEDA','SAN MARCOS DE OCOTEPEQUE MERCADO CENTRAL','99463781','ABARROTERIA MEJIA','0','14.4110506','-88.9537275','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8312','FRANCISCO ALEXANDER ESCALANTE CAMPOS','CALLE PRINCIPAL 1/2 CUADRA ARRIBA BCO ATLANTIDA','26560631','INVERSIONES SAN FRANCISCO','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8313','ROBEERTO ENRRIQUE ALVARADO','BO MIRAFLORES BLVD JORGE BUESO ARIAS','26622725','FOOD MART LA REYNA','0','14.7770391','-88.778371','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8314','ODALIS YANETH BUESO ALVARADO','BO.SAN ANTONIO CARRETERA INTERNACINAL CUCUYAGUA COPAN','9463-8880','ABARROTERIA LA ECONOMICA','1','14.6564402','-88.873587','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8315','JUAN ARNALDO PERDOMO ALVARADO','BO EL ROSARIO FTE A COOPERATIVA COMISMAL','0000-0000','PULPERIA CRISTIAN','1','14.5881','-88.582767','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8316','DORIS PAOLA HENRIQUEZ HENRIQUEZ','BO. CONCEPCION 2DA CALLE 4TA AVE 1/2 CUADRA DEL MERCADO MUNICIPAL','8828-0887','ABARROTERIA EL DESCUENTO','1','14.439365','-89.1832516666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8318','MANUEL DE JESUS SANTOS LOPEZ','BO. EL CENTRO   GRACIAS LEMPIRAS','276320','INVERSIONES ALEJANDRA #2','1','14.5886036','-88.5826653','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8319','LITHZA SAGRARIO CASTRO PEREZ','BO. EL CENTRO FRENTE ABARROT. CARMINDA LEPAERA LEMPIRA','9510 6491','PULPERIA SAN ANTONIO','1','14.778595','-88.5893183333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8321','ALEX ARTURO LOPEZ INESTROZA','BO. CALVARIO CARRETERA INTERNACIONAL','9879 4582','SUPERMERCADO AHORRA MAS S DE RL','1','14.654579','-88.875204','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8346','LUDWIN  ONAN MEJIA ROMERO','2.1/2 DE ECONOSUPER   SAN MARCOS   OCOTEPEQUE','9959-5656','PULPERIA ONAN','0','14.7796428','-88.5911475','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8347','RUDI ALEXANDER DERAS PINEDA','EL AGUAJE DE TALGUA  LEPAERA LEMPIRA','9948-1717','ABARROTERIA DERAS','1','14.764627','-88.775712','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8349','ANA MARIBEL ELVIR CASTRO','COLONIA LOMA LINDA CARRETERA INTERNANCIONAL SRC','9585-5053','INVERSIONES M Y MS  DE RL DE CV','1','14.761062','-88.775013','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8350','OSCAR EDGARDO ESPINAL TABORA','BO. SANTA RERESA 1/2 CUADRA ARRIBA DE LA CRUZ ROJA SRC','9527-9612  //  17','INVERSIONES EL CAMPESINITO','1','14.762788','-88.776913','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8352','ROBERTO ENRRIQUE ALVARADO MEJIA','INTERIOR DE LA TEXACO LA REYNA  SANTA ROSA DE COPAN  COPAN','2662-5890    9979-6634','INVERSIONES ALVALI SA DE CV','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8353','DANIA ONDINA LAGOS ALVAREZ','BARRIO MIRA FLORES AL COSTADO DE LA ESCUELA MEMBREÃ‘O','98325767','ABARROTERIA Y CONFITERIA SUPER PRECIO','0','14.7767916','-88.7791928','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8354','ABEL TEJADA DOMINGUEZ','LA ARICONADA','98606196','INVERCIONES DIVERSAS','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8356','MIRNA MARISOL SANTOS VILLEDA ','BARRIO SAN JOSE FRENTE ARAS CHOP ','99062907','INVERSIONES ALDANA SANTOS ','0','14.43789','-89.18217','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8358','MARLON OMAR GUTIERREZ VALLE','ALDEA FRATERNIDAD SECTOR DE EL CHEMIA','9872-1394','BODEGA VALLE','0','14.0799741','-88.6952628','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8361','CESAR ALEXANDER HERNANDEZ GUEVARA','BARRIO SAN JUAN SENSENTI OCOTEPEQUE','99214628','INVERSIONES Y ABARROTERIA ABC','1','14.4996','-88.93822','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8362','IRIS ROSARIO DIAZ SUAREZ','BARRIO LAS DELICIAS LEPAERA  LEMPIRA','9918-5520','MERCADITO DIAZ','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8363','SANTOS DANILO CARTAGENA SERRANO','ALDEA TERLACA GUARITA LEMPIRA','9502-5948','ABARROTERIA CARTAGENA','1','14.2218583333333','-88.8313183333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8364','JOSE LEON MARTINEZ','BARRIO GUALMACA ERANDIQUE LEMPIRA','9829-9085','VARIEDADES LAS TRES HERMANAS','1','14.2387665','-88.4634223','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8368','ADA SARAHI GARCIA GONZALEZ','B0 SAN JOSE 1/2 CUADRA ABAJO DEL NUEVO PALACION DE JUSTICIA OCOTEPEQUE','9931-2318','ADA SARAHI GARCIA GONZALES','1','14.4371883333333','-89.1828166666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8370','ARNOL OSVELO TORRES MEDINA','LEMPIRA GRACIAS FRENTE A LA TERMINAL DE BUSES','0000-0000','ARNOL OSVELIO TORRES MEDINA','1','14.590565','-88.584995','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8371','SANDRA ELIZABETH PORTILLO GALVEZ','BARRIO BRISAS DEL CELAQUE','0000-0000','SUPERMERCADO MI SUPER','1','14.59206','-88.5798833333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8372','SANDRA ELIZABETH PORTILLO GALVEZ','BO SAN JOSE OCOTEPEQUE','0000-0000','SUPERMERCADO MI SUPER','0','14.436561','-89.180848','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8374','JOSUE OSMANY LOPEZ PORTILLO','BARRIO SAN JOSE  OCOTEPEQUE','32344026','ABARROTERIA LOS ALMENDROS','1','14.4376633333333','-89.1828333333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8153','EMELINA FUENTES MEJIA','BARRIO CONCEPCION FRENTE A COMERCIAL BULNES OCOTEPEQUE','26533763','PULPERIA GRECIA MARIA','0','14.4382175','-89.1830937','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8154','MARIA ELENA URBINA LOPEZ','AL PAR DE GASOLINERA MAPULACA LEMPIRA','99329652','PULPERIA LOPEZ URBINA(ELENA)','1','14.0394566666666','-88.6530433333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8155','MARIA ENMA GARCIA MARTINEZ','BARRIO MERCEDES GRACIAS LEMPIRA','26560853/96345307','MARIA ENMA GARCIA MARTINEZ','1','14.5855042','-88.5813253','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8156','IVAN CASTILLO MENENDEZ','FRENTE A PLAZA ERANDIQUE LEMPIRABO BO.GUALMACA','99451135','INVERSIONES CASTILLO','1','14.2372716666666','-88.4631583333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8157','MARCELINO MARQUEZ GABARRETE','CALLE PRINCIPAL HACIA GUARITA LEMPIRA BO EL CENTRO TERLACA LEMPIRA','98548126','RESTY CLUB KARAOKE EL TROBADOR','1','14.2178933333333','-88.7827516666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8158','JOSE LEON MARTINEZ','ESQUINA OPUESTA A CATEDRAL ERANDIQUE LEMPIRA','26556147/98299085','PULPERIA ELSA','0','14.7760801','-88.7784317','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8159','JUAN FRANCISCO SARMIENTO','MAPULACA LEMPIRA','97679501','ABARROETRI KATERIN','1','14.0304333333333','-88.61914','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'15225','EMPRESA DE SERVICIOS MULTIPLES','BILLAS DEL ROSARIO CALLE QUE CONDICE MERCADO','98203760','PROGRESANDO JUNTOS','1','14.5899616666666','-88.58398','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'15240','RONY FERROFINO DUBON','BO SAN JOSE A LA PAR DE PASTELERIA LOLITA','97930150','PULPERIA ALEJANDRA','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8104','FATIMA DINORA REYES AUXUME','UNA CUADRA ARRIBA DE BIBLIOTECA PUBLICA CUCUYAGUA COPAN','26510048/99237666','ABARROTERIA REYES','1','14.647634','-88.875801','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8105','WILMER ALEXANDER VALLE','BARRIO CONCEPCION OCOTEPEQUE','26533055/98840634','ABARROTERIA VALLE','1','14.7454971','-88.7768609','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8106','JUAN AQUILEO','MERCADO MUNICIPAL GRACIAS LEMPIRA','0000-0000','BASAR QUELLY','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8307','TERESA DE JESUS ARITA MEJIA','BO CONCEPCION OCOTEPEQUE','26533624/97890695','ABARROTERIA SAGRADO CORAZON','1','14.4363599999999','-89.1836599999999','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8308','FRANCISCO ALBERTO ESPINOZA PORTILLO','SAN JOSE OCOTEPEQUE','95883916','ABARROTERIA LA FAMILIA','1','14.438169','-89.182894','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8309','DAISY CAROLINA ESPINAL TABORA','BO SANTA TERESA ','98269037','INVERSIONES DEL PUEBLO','0','14.763723','-88.775325','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8310','MARIA EVA LEMUS','BO EL CENTRO LEPAERA LEMPIRA','26555109/98199201','TIENDA LEMUS','1','14.7785133333333','-88.5889933333333','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8262','ALEJANDRA MARGARITA COTO','LABOR OCOTEPEQUE','99082915/26635265','ABARROTERIA ISAAC','0','14.648744','-88.8895698','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8263','MARIA SANTOS ORELLANA','MAPULACA LEMPIRA','0000-0000','PULPERIA ALEMAN','1','14.0300949999999','-88.6160066666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8264','REINA MARILU GUERRA','BO EL CALVARIO 1/2 CUADRA BCO DEL PAIS','94641547','MINI SUPER EL SOL','1','14.654466','-88.875323','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8265','ELVIS WILFREDO COTO','BO EL CENTRO FRENTE A OPDF','0000-0000','ABARROTERIA DAVID','0','14.4101163','-88.9533364','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8266','SABEIDA ISABEL RAMIREZ','BO SANTA TERESA','26626139','COMERCIAL NAHOMY','1','14.762734','-88.774415','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8267','SILVIA MARLEN FUENTES','SAN MARCOS DE OCOTEPEQUE','99240359','ABARROTERIA FUENTES # 2','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8324','MANUEL DE JESUS SANTOS LOPEZ','BO. EL ROSARIO   GRACIAS  LEMPIRA','9676-1847','ABARROTERIA Y BASICO LA SUPER BARATO','0','14.7626597','-88.7744709','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8325','FRANCISCO OBDULIO PEREZ FUENTES','BARRIO EL CENTRO LEPAERA LEMPIRA','9905-0309','PULPERIA PEREZ','1','14.7785699999999','-88.5896716666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8327','JULIO CESAR REGALADO MARTINEZ','BARRIO EL CENTRO CORQUIN COPAN','99206986','PULPERIA EL  CAMPESINO','1','14.4134466666666','-88.9511466666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8329','IRVING JONATHAN LARA CHINCHILLA','BO CONCEPCION   OCOTEPEQUE','99610471','INVERSIONES LARA','0','14.4364811','-89.1833496','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8330','CELSO BARRERA AMAYA','BO. EL ROSARIO GRACIAS LEMPIRA','9554-7030','CONFITERIA MI FIESTA','1','14.5871249999999','-88.5823749999999','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8331','MIRIAN ESPERANZA VASQUEZ','BARRIO DR. VIRIGILIO RODEZNO ANTIGUA OCOTEPEQUE','0000-0000','ABARROTERIA HERNANDEZ VASQUEZ','1','14.7773583333333','-88.7789216666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8375','OLGA MARINA PASCUAL SANCHEZ','BARRIO EL ROSARIO CUADRA ANTES DE PROGESANDO JUNTOS  GRACIAS  LEMPIRA','97221956','ABARROTERIA PASCUAL','1','14.588785','-88.58276','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8376','LIDIA DEL CARMEN REYES HERNANDEZ','BARRIO SAN JOSE  CALLE INTERNACIONAL HACIA EL SALVADOR  OCOTEPEQUE','96949255','INVERSIONES ISABELLA','1','14.4375616666666','-89.182755','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8377','JUAN CARLOS SANTOS ERAZO','BO SAN JOSE','0000-0000','INVERSIONES SANTOS PERAZA','1','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8378','MIGUELITO ANTONIO REYES GARCIA','ALDEA EL ZAPOTAL','9783-3068','PULPERIA LA BENDICION','1','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8379','BETTY YANDELY PEÑA CASTELLON','BO SAN JOSE','97116387 Y 98336369','ABARROTERIA ARIANA','1','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8381','LUIS FERNANDO YANES RAMIREZ','SAN JOSE','9765 3778 Y 9842 5757','ABARROTERIA LA BENDICION','1','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'22010','WALTER ALEXIS SANCHEZ CARBAJAL','SRC','0000-0000','WALTER ALEXIS SANCHEZ CARBAJAL','1','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8083','ALEXIS PONCE','BARRIO EL CENTRO LA UNION LEMPIRA','0000-0000','ABARROTERIA PONCE','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8088','MARIA BETULIA ESPINOZA','BARRIO EL CENTRO LEPAERA LEMPIRA','0000-0000','ABARROTERIA ALEJANDRA','1','14.779029','-88.588372','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8089','CARMINDA BAUTISTA','BARRIO EL CENTRO LEPAERA LEMPIRA','0000-0000','ABARROTERIA CARMINDA','1','14.7787899999999','-88.589485','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8090','AURA BEATRIZ HERNANDEZ DIAZ','BARRIO EL CENTRO LEPAERA LEMPIRA','0000-0000','AURA BEATRIZ HERNANDEZ DIAZ','0','0','0','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8091','MANUEL HUMBERTO OCHOA','BARRIO SAN JOSE','98592087','ABARROTERIA DANIELA','1','14.4366716666666','-89.1835716666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8092','ERIKA VANESA DIAZ','BARRIO SANTA TERESA SANTA ROSA DE COPAN','26627276/99187137','ABARROTERIA DIAZ','1','14.763075','-88.774657','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8093','YOHANA LANDAVERDE','FRENTE A PARQUE CENTRAL SAN MARCOS OCOTEPEQUE','26633892/98353411','ABARROTERIA EL CENTRO','1','14.410308','-88.954683','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'8094','VILMA GLADIS ABREGO LOPEZ','UNA CUADRA ANTES DEL PARQUE CENTRAL LA VIRTUD LEMPIRA','0000-0000','BODEGA EL CENTRO','1','14.0621416666666','-88.6955966666666','487');
INSERT INTO Clientes_impulsadoras VALUES(0,'15001','JUAN ANTONIO GOMEZ GOMEZ','OLANCHITO CALLE PRINCIPAL ENTRADA COPANECA COYOLES CENTRAL','99084584','PULPERIA ELIEZER','1','15.44914','-86.670035','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15002','CARLOS AGUSTO  TOMAS LANDAVERDE','EL CARRIL FRENTE ANTIGUA CLINICA INFANTIL COYOLES CENTRAL','977227349','BODEGA LA COPANECA','0','15.6596246','-86.0060405','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15003','ENNA MEJIA PINEDA','EL CARRIL A LA PAR DE LA ESCUELA','31579859','CASA DELMY','0','15.6596921','-86.0060454','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15004','DELMIS LOURDES FUENTES MOLINA','COL PONCE A LA PAR DE TALLER DE LOS MENDOZA BO CENTRO OLANCHITO YORO','24464700','RINA COMERCIAL','1','15.4840683333333','-86.5681233333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15005','DUNIA CATALINA CRUZ CALIX','OLANCHITO BO EL CENTRO CONTIGUO BCO ATLANTIDA OLANCHITO YORO','24463920  99826147','INVERSIONES ALFREDITO S DE R.L. DE CV','1','15.4833849999999','-86.5680116666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15006','MARTHA ISABEL REYES','OLANCHITO BO EL CENTRO FRENTE MERCADO MUNICIPAL','24466408/98786961','LA FLOR DE BELEN','1','15.483281','-86.569881','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15007','ROBERTO GALVEZ VELASQUEZ','BO. EL CENTRO CALLE PRONCIPAL OLANCHITO YORO','24465534/94928604','PULPERIA GALVEZ','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15008','CONCEPCION NECTALINA NUÃƒâ€˜EZ NUÃƒâ€˜EZ','OLANCHITO B0. EL CENTRO ESQUINA OPUESTA FERRET. EL BODEGON','98098510','DISTRIBUIDORA EL EXITO','1','15.4844466666666','-86.570365','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15011','NELMY JUDITH POSAS GONZALES','COL LIBERTAD SUR TERMINAL DE BUSES','94840986','PULPERIA LA CONFIANZA','0','15.4822815','-86.5704923','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15012','LEDIS SUYAPA GARCIA','OLANCHITO COLONIA PONCE OLANCHITO','97711237/24464652','BODEGA GENESIS','1','15.482855','-86.569255','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15013','RUDI CONCEPCION DURAN','BARRIO EL CENTRO CONTIGUO A POLLO REY  OLANCHITO YORO','2446-3606 /94643980','BODEGA LA ESMERALDA','1','15.483901','-86.570171','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15014','JANETH MATUTE ANTUNEZ','OLANCHITO COL. SITRA BARIMASA .CUADRA ABAJO HONDUTEL OLANCHITO','98824952/96659675','PULPERIA SUYAPITA','1','15.4839066666666','-86.5700199999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15015','MAIRA SUYAPA RAMOS PUERTO','ESQUINA OPUESTA EDIF ALVAREZ OLANCHITO YORO','95655832/24463946','BODEGA MARIELY','0','15.6596825','-86.0055294','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15016','JOSUE MODESTO POSAS TORRES','COL.LIBERTAD SUR 1 CUADRA ABAJO DE BANRURAL ANT. LOCAL ENEE OLANCHITO YORO','95354444  /9847-8662','LACTEOS QUEYMA','1','15.482189','-86.571863','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15017','LUIS ALFONZO PEÃ‘A','OLANCHITO SAN LUIS FRENTE A LA CARRTERA PANAMERICANA','98182700','MINI SUPER LA ESQUINA','1','15.4682283333333','-86.3340516666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15018','DENIS ENOT VENTURA','OLANCHITO CARBAJALES FRENTE AL CAMPO DE FUTBOL','99494097','PULPERIA Y DEPOSITO LA PROVIDENCIA','1','15.5061783333333','-86.3367249999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15019','EDA YESENIA ROSALES DUARTE','CALLE DEL BOULEVARD BONITO ORIENTAL','97641036/24389728','MINI DEPOSIT Y BODEGA ISIS','1','15.7519733333333','-85.7350683333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15020','NOE ESPINAL','BONITO ORIENTAL CARBONALES BO EL CENTRO','97293276','BODEGA 2 HERMANAS','1','15.74361','-85.738098','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15021','JESSICA YADIRA CHIRINOS RODRIGUEZ','BONITO ORIENTAL CARBONALES FRENTE AL TRIANGULO','97188195/24389124','DEPOSITO ROSITA','1','15.743452','-85.738253','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15022','FREDY LEONEL PUERTO MEJIA','BONITO ORIENTAL CALLE PRONCIPAL FRENTE A GASOLINERA UNO','97779956/24389128','MERCADITO YANIRA','1','15.743133','-85.738105','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15023','BENERANDA PADILLA','BONITO ORIENTAL CARBONALES BONITO ORIENTAL FRENTE AL TRIANGULO','98384293','BODEGA CARBONALES','1','15.743445','-85.7389366666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15024','NADIA JOHANA HERNANDEZ LEMUS','BO. EL CENTRO CARBONALES','24389802','BODEGA DENNIS','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15025','SUYAPA MEDINA HERNANDEZ','BONITO ORIENTAL CARBONALES BO EL CENTRO','24389495/97384328','BODEGA SUYAPA','1','15.743908','-85.738816','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15026','MERCY DE MEDINA','BONITO ORIENTAL CALLE SALIDA A TOCOA CARBONALES','24389132','BODEGA RICCI','1','15.7444649999999','-85.738725','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15027','SANDRA SUAZO','BO EL CENTRO CARBONALES','24389136','BODEGA LOS CANECHOS','0','15.7439909','-85.7386047','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15028','SANTOS ANTONIO AGUILERA','COL. BRISAS DE ORIENTE FRENTE A MADERAS MPNTOYA','99557945','BODEGA EL CENTRO','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15029','JORGE WILMER ZELAYA','HONDURAS AGUAN FRENTE A CARRETERA PANAMERICANA','99845412','BODEGA MAIRA','0','15.4819305','-86.5719634','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15030','ANACLETO ALVARADO','BRISAS DEL AMAR FRENTE A LA IGLESIA','99677744','VARIEDADES OSMAN','0','15.8726357','-85.7580959','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15031','ROGER ALBERTO VARGAS TORRES','QUEBRADA DE ARENAS FRENTE A LA PANAMERICANA','98689344','MINI SUPER VARGAS ','1','15.738954','-85.882323','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15032','JUAN BARRERA PINEDA','TOCOA QUEBRADA DE ARENAS FRENTE A PANAMERICANA','95998631/24082670','BODEGA BRAIAN','1','15.738733','-85.883351','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15033','ANDRES CARBALLO','SALAMA CALLE PRONCIPAL','98596320','DEPOSITO CARBAYO','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15034','LORIA ORELLANA','JUTIAPA ALDEA EL PORTILLO JUTIAPA ATLANTIDA','87961260 / 32620538','PULPERIA LORIA','1','15.51102','-86.22914','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15035','AGUSTIN ABEL MARTINEZ','BONITO ORIENTAL COROCITO FRENTE A PANAMERICANA','24388067','BODEGA ANITA','1','15.7741083333333','-85.7944783333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15036','WILBERTO URBINA CASTILLO','CALLE DEL MERCADO TOCOA FTE PUNTO DE BUS SONAGUERA','24445352/96046426','BODEGA CASTILLO','0','15.6601756','-86.0035584','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15037','ONDINA CASTAÃ‘EDA','TOCOA CALLE DEL CENTRO TOCOA','24442149','COMERCIAL LILY','1','15.653933','-86.00514','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15038','CONCEPCION MEDINA CASTAÃƒâ€˜EDA','TOCOA CALLE DEL MERCADO TOCOA','24442334','BODEGA CONCHITA','1','15.6600333333333','-86.0040866666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15039','MARIO CHINCHILLA','FRENTE A LA TERMINAL TOCOA','24443287/98943821','LICORERA Y SUPERMARCADO LA CANASTA','0','15.6601014','-86.0045972','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15040','EMMA LIDIA HERNANDEZ AMAYA','BARRIO LAS FLORES  MERCADO MPAL. FRENTE A PUNTO DE BUSES  TOCOA COLON','24445765/97605720','COMERCIAL DANIRA','1','15.6601349999999','-86.0046466666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15041','DORIS ALCIRA ZELAYA','TOCOA COLON  BARRIO LA ESPERANZA MDO. MPAL. FRENTE A TERMINAL','24441016/98316889','COMERCIAL ALCIRA','1','15.660392','-86.004761','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15042','MIGUEL RAFAEL CORDOVA CARBAJAL','BARRIO LAS FLORES  FRENTE AL MERCADO MPAL.  CONT. A HOTEL CONCHITA  TOCOA COLON','24440876/97692656','MERCADITO SAN MIGUEL','1','15.660369','-86.004878','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15043','ANDRES ALEXANDER CORDOVA CARBAJAL','BARRIO LA FLORES  FRENTE AL MDO. MPAL  TOCOA  COLON','98695218','MERCADITO ALEX','1','15.660371','-86.004556','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15044','TOMAS RAMIREZ MARTINEZ','TOCOA FRENTE A LA TERMINAL TOCOA','24441351/98431089','BODEGA MARTINEZ','1','15.660485','-86.004825','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15045','BERTIN ANTONIO CARBAJAL PAZ','TOCOA BO LAS FLORES FRENTE AL MERCADO','24443213/99970494','COMERCIAL CARBAJAL','1','15.660295','-86.004795','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15046','VALENTIN MENDOZA','TOCOA BOULEVARD ESQUINA OPUESTA MRCDO MUNICIPAL','24442432','BODEGA MARIANELA','1','15.6597833333333','-86.005975','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15047','ARTURO CASTAÃ‘EDA','TOCOA BOULEVARD DEL PUNTO TOCOA','24443816','COMERCIAL CASTAÃ‘EDA','1','15.6596816666666','-86.0058216666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15048','DANIA GERALDINA MORADEL GALEAS','BARRIO LA ESPERANZA AL FINAL DEL BLV.EFRAIN SORTO  FRENTE A MDO  MPAL  TOCOA COLON','24443094','BODEGA 4 HERMANOS','1','15.6603633333333','-86.0062433333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15049','JULIAN AVELAR BONILLA','TOCOA CALLE DEL MERCADO TOCOA','96105800/24442542','ABARROTERIA JULIAN','1','15.6608185','-86.0056417','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15050','MARITZA VELASQUEZ VANEGAS','CALLE DEL MERCADO TOCOA','32941971','BODEGA CESY','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15051','MARVIN QUINTANILLA','CALLE DEL CEMENTERIO TOCOA','99085422','BODEGA SANDRA','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15052','MARIO ROBERTO CHINCHILLA','TOCOA BO LAS FLORES FRENTE A FERRETERIA JAVIER Y BANCO DE OCCIDENTE','24443926/98895409','MERCADITO MARIO','1','15.659916','-86.003976','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15053','MAURICIO CASTILLO MARTINEZ','COL. LA PISTA  FRENTE A MALL MEGA PLAZA C. PANAMERICANA  TOCOA COLON','97218990','DISTRIBUIDORA DE ALIMENTOS LA BALANZA','1','15.66217','-85.992153','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15054','ELSA MARINA','CALLE CHELA TOCOA','98953184','PULPERIA TITA','0','15.4819549','-86.5719217','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15055','ANTONIO MENDEZ','CALLE CHELA TOCOA','24443571','BODEGA FATIMA','0','15.4819549','-86.5719217','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15056','ROBERTO RODRIGUEZ','BO EL CENTRO CALLE DEL PUNTO TOCOA','24443984','BODEGA ABIGAIL','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15057','EDRAS NAHUN LARA RAMOS','CHURRUQUERA SONAGUERA','99385504/98714011','DEPOSITO DANEY','0','15.524328','-86.229029','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15058','ARNULFO WILFREDO BARRALAGA PADILLA','TRUJILLO ILANGA SONAGUERA CALLE PRONCIPAL','97995538','MINI SUPER DORIS','1','15.7028299999999','-86.0869183333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15059','JOSE CRUZ VASQUES','COL LAS PALMAS TOCOA','98641729','DISTRIBUIDORA VASQUEZ','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15060','INGRIS MARISOL MARTINEZ','ALDEA EL CARRIL FRENTE AL CAMPO FUTBOL','95777551','PULPERIA MARISOL','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15127','ELENA','SONAGUERA B EL PORVENIR SONAGUERA','88652141','CARNICERIA GABY','1','15.6176816666666','-86.26592','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15179','CARLOS HUMBERTO SANTOS OCHOA','COLONIA SALOMON MARTINEZ 3 CUADRAS DE LA SELEMENH','0000-0000','MERCADITO 4 HERMANOS','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15180','CARLOS DANILO ZELAYA','COL-STANDARD FRENTE AL BLVD','97643613/96214396','DISTRIBUIDORA ZELAYA','0','15.5226247','-86.2321451','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15181','ELVIN FAJRDO','OLANCHITO TROJAS ALDEA','95749069','CASA FAJARDO','1','15.51088','-86.2291216666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15182','MARIO EUGENIO','TRUJILLO CALLE RIO NEGRO TRUJILLO','24344801','MARIO EUGENIO','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15183','MARIA EUGENIA ZANDOVAL','BARRIO RIO NEGRO TRUJILLO','24344801/97553356','SUPERMERCADO ALBERTO # 1','1','15.921654','-85.950512','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15184','YESSENIA MARTINEZ MARTINEZ','CALLE 18 DE MAYO TRUJILLO','0000-0000','SUPERMERCADO 18 DE MAYO','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15185','ELVIN OTONIEL RAMOS MARTINEZ','OLANCHITO ESQUINA OPUESTA GAOLINERA PUMA CALLE CALVARIO','97924756','SUPLIDORA EL CENTRO','1','15.4832616666666','-86.5713066666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15186','JAIME GALO','CALLE 18 DE MAYO TRUJILLO','97544868','CAMERCIAL GALO','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15187','DEYSI ANTONIA SANABRIA','CALLE 18 DE MAYO  TRUJILLO','95077644','DEYSI ANTONIA SANABRIA','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15208','JAIME RAFAEL MARTINEZ','B. EL COYOL SALIDA OLANCHITO FTE INST 4 SEP.','24247743/95555248','SUPERMERCADO ROSITA S. DE R.L.','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15214','CARLOS ANTONIO BANEGAS','TOCOA TOCOA COLON LAS FLORES','98493033','INVERSIONES LOS TRES SOCIOS','1','15.5242009','-86.2290475','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15215','ELI XIOMARA MEJIA RODRIGUEZ','SABA FRENTE A LA IGLESIA MENONITA','96848406','BODEGA LA COPANECA','0','15.5200794','-86.2327811','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15216','JOSE RAUL LOPEZ CARTAGENA','ATRAS IGLESIA ASAMBLEA DE DIOS','24053542','PULPERIA YAHIRA','0','15.6114338','-86.3871522','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15220','CESAR VILLANUEVA','LOS LEONES','99028286','ACCESORIOS VILLANUEVA','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15221','MARIA GLADIS  HERANDEZ VARELA','TRUJILLO BO BUENOS AIRES FTE. AL PUNTO DE BUSES CRISTINA TRUJILLO COLON','94739253 /9884 5238','MINIDEPOSITO G Y G','1','15.922844','-85.943729','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15222','GUSTAVO ACOSTA PACHECO','TRUJILLO LOS LEONES','88255826/95045967','PULPERIA THONIA','1','15.8823416666666','-85.8288916666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15223','JORVIN ADONAY BANEGAS CRUZ','TRUJILLO HONDURAS AGUAN','33552834','PULPERIA JONY','1','15.883943','-85.8293279','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15224','KARLA MARIA VILLEDA CABALLERO','TRUJILLO 0','24343078 / 95213935','SUPERMERCADO LA BALANZA','1','15.923678','-85.938156','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15232','MARIA DEL CARMEN RAMOS ANTUNEZ','LAS FLORES CALLE MAXI DESPENSA','24443630/96821499','BODEGA Y DEPOSITO SICO','0','15.6597028','-86.0014059','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15233','JUAN RAMON RAMOS','OLANCHITO BARRIO EL CENTRO FTE GASOLINERA PUMA','21166366','SUPERMERCADO RAMOS','1','15.4818449999999','-86.5717616666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15235','REYNALDO ANTONIO MORALES','FTE BCO DAVIVIENDAOLANCHITO','24466558/98029573','BODEGA EL REY','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15237','REYNALDO ANTONIO MORALES','COL. MEJIA 1/2 CUADRA ABAJO DE TRANSPORTE CRISTINA','9902-7628','BODEGA EL REY','0','15.4824272','-86.567822','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15238','OBESY CAROLA MEJIA RODRIGUEZ','COL LA LIBERTAD FRENTE A BATERIAS RAYO','9647-2291','BODEGA HERMANOS MEJIA','0','15.48243','-86.5717551','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15239','MARCO TULIO MOLINA','TOCOA BO LA ESPERANZA FTE MERCADO MUNICIPAL TOCOA','24443738','PULPERIA Y BODEGA RINA','1','15.659981','-86.005339','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15242','ANA ELIZABETH VILLEDA CABALLERO','TOCOA BARRIO LAS FLORES','0000-0000','COMERCIAL LORENS','1','15.659719','-86.003244','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15244','DUNIA CATALINA CRUZ CALIX','TOCOA BARRIO EL CENTRO','2446-3715','INVERSIONES ALFREDITO S DE R.L. DE CV','1','15.6556083333333','-86.0016583333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15245','DUNIA CATALINA CRUZ CALIX','SABA FRENTE AL HOTEL DOAMAR SABA COLON','9982-61477 24463715','INVERSIONES ALFREDITO S DE R.L. DE CV','1','15.6556447','-86.0016851','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15249','ELVIRA DE JESUS INESTROZA GUIFARRO','NUEVA SINAI','9960-8193','PULPERIA NUEVA SINAI','0','15.6595489','-86.0059673','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15250','EDIN HUMBERTO GUARDADO PADILLA','COL. LA NORTEÃƒâ€˜A   ESQUINA OPUESTA A LA TIENDA CONSUMO','9561-8161','PULPERIA TRES HERMANOS','0','15.6595489','-86.0059673','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15251','ROLANDO ARNOLDO ARIAS LADINO','CALLE PRINCIPAL  TRUJILLO   COLON','9462-7998','MINI SUPER LA ECONOMICA','0','15.6595089','-86.0059939','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15253','LIDIA AZUCENA LOPEZ AYALA','OLANCHITO ALDEA COYOLES FTE A LA CALLE REAL PANAMERICANA LA CEIBA','9803-6156','PULPERIA EL MANGO','1','15.4724333','-86.6876378','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15255','IRMA ARACELY DOMINGUEZ HERRERA','OLANCHITO FTE. BODEGA ELIEZER CALLE PRINCIPAL COYOLES CENTRAL','9952-0037 /9452-5978','MINI SUPER LA COPANECA S DE RL DE CV','1','15.4490516666666','-86.6701283333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15256','ROSA MARIA CASTRO','TOCOA COLON  COLONIA 18 DE SEPTIEMBRE','88914752','BODEGA MIS TRES SOLES','0','15.4441395','-86.4919715','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15258','CARLOS MANUEL VILLEDA SANABRIA','COL. BUENA VISTA ESQUINA OPUESTA KINDER ZOILA DURON','98782136','COMERCIAL FERRETERIA Y DEPOSITO LA CANASTA TOCOA','0','15.6595024','-86.0059937','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15259','RUBEN ALCIDE VENTURA GUTIERRREZ','SONAGUERA ISLETA CALLE PRINCIPAL','9964-1754','COMISARIATO CENTRAL','1','15.606215','-86.1855887','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15260','MARIA CARMEN LEMUS SANTIAGO','A LA PAR DE KILBERT','95182414','MINI SUPER LEMUS','0','15.6595895','-86.0060109','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15261','RAFAEL LEONARDO ALVAREZ','EDIFICIO ALVAREZ  LA CEIBA','9787-1723','RAFAEL LEONARDO ALVAREZ','0','15.6594235','-86.005806','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15263','ANTONIO JOVEL LOPEZ','CARBONALES SALIDA A OLANCHO   FTE. AL MERCADO ','9595-7038','BODEGUITA MILTON','0','15.4820481','-86.57206','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15264','ANA ELIZABETH VILLEDA CABALLERO','TOCOA CALLE CHELA AL FINAL TOCOA COLON','2444-0155','COMERCIAL EL CASTAÃ‘O','1','15.6497349999999','-85.994385','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15265','MANFREDO STANLEY  FLORES PAVON','SABA ELIXIR COLON FTE. AL CENTRO DE SALUD','9888-5257','PULPERIA Y DEPOSITO FANNY','1','15.5375552','-86.2076618','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15267','ANA ELIZABETH VILLEDA CABALLERERO','CALLE CHELA TOCOA   COLON','2444 0153','COMERCIAL EL CASTAÃƒâ€˜O','0','15.6598907','-86.0039728','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15269','IRMA ARACELY DOMINGUEZ HERRERA','COLONIA LIBERTAD SUR  OLANCHITO  YORO','9738 8340','BODEGA Y MINI SUPER LA COPANECA','0','15.6594565','-86.0058438','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15270','ANANIAS ORTEGA LOPEZ','BO. EL CENTRO  SALIDA A COLON A LA PAR DE KIA MOTORS   LA CEIBA','2440 5571','INGENIERIA ORTEGA S DE RL ','0','15.7706214','-86.7559505','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15271','SONIA MARIBEL CHINCHILLA GOMEZ','TOCOA FRENTE A LA IGLESIA BAUTISTA CUACA. LA CEIBA','99373458','PULPERIA VIANNEY','1','15.5371016666666','-86.2082483333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15273','DEISY SUSANA DIAZ NUÃƒâ€˜EZ','SABA BO. LA PAVA. FTE TRIANGULO SALIDA TOCOA COLON','9494-5677  // 2424-8288','FOOD MART TEXACO KARIN','1','15.521899','-86.2336056','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15277','JOSE RAUL PINEDA MARTINEZ','ABICINIA UNA CUADRA ARRIBA DE LA IGLESIA CATOLICA  LA CEIBA ','9888-6524','PULPERIA JOSTIN','1','15.6598316666666','-86.0058566666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15315','EDUIN ORLANDO RAMIREZ GOMEZ','TOCOA ALDEA ZAMORA 3 CUADRA AL SUR DEL DEVIO A COYO SIERRA LA CEIBA','9816-5538','PULPERIA LOS 3 HERMANOS','1','15.61034','-86.0763316666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15316','KENIA YOLIBVETH PAREDES NOLASCO ','ALDEA CAYO SIERRA ORILLA DE CALLE PRINCIPAL   LA CEIBA ','8865-4764','BODEGA MI BENDICION','0','15.586685','-86.0791666666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15317','EDGAR VENTURA LOPEZ FLORES','TRUJILLO PARAGUA A LA PAR DEL CAMPO FUTBOL ALDEA GUADALUPE CARNEY TRUJILLO COLON','9909-2338  // 2408-1305','INVERSIONES EDA','1','15.9197089','-85.8739438','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15319','FATIMA NOHELIA CENTENO AMAYA','OLANCHITO TEJERA A LA PAR DE LAS QUESERAS OLANCHITO YORO','9768-8307','BODEGA NOHELIA','1','15.432236','-86.76091','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15320','NOEL GUTIERREZ CUBAS','TRUJILLO FTE. A LA CARRETERA PANAMERICANA TRUJILLO COLON','9487-1384 // 9830-6976','MINI SUPER NISSY / NOEL GUTIERREZ CUBAS','1','15.929023','-85.931866','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15321','ODALMA NOHEMY CHINCHYILLA ARITA','TRUJILLO FRENTE A LA CARRETERA PANAMERICA LA CEIBA','9492-6784  //  9562-2626','DEPOSITO GUADALUPE CARNEY','1','15.9205932','-85.8721874','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15329','YESENIA YOLIBET ROMERO DEL  CID','A LA PAR DE BODEGA MARTINEZ  TOCOA   COLON','9908-5422','QUINTAS BODEGAS Y DISTRIBUCIONES ','0','15.6608597','-86.0044447','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15338','KRISTIAN JOSUE CRUZ MARTINEZ','SONAGUERA BO. EL TAMARINDO SONAGUERA COLON','94596184','ALFREDITO S DE R.L. DE CV','1','15.623064','-86.268501','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15339','MARIBEL SANABRIA ARITA','SONAGUERA TRUJILLO COLON','9768-2240','MERCADITO DANEY','1','15.660523','-86.190063','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15350','KAREN JACKELINE ALVARADO BARRALAGA','TOCOA TOCOA FRENTE A LA PEPSI','97116014','MERCADITO KAREN','1','15.6596166666666','-86.0013783333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15356','DORILA PORTILLO PEREZ ','COL. BRISAS DEL ORIENTE CARR. HACIA OLANCHO  CONT. A UNO  BONIETO ORIENTA  CARBONALES','24089560/95539784','BODEGUITA DORIS ','1','15.7488533333333','-85.7409049999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15359','JOSE ERNESTO FLORES AQUINO','COL. ARTURO CHENIQUE  TOCOA COLON','9529-4071','PULPERIA HERMANITO FLORES','0','15.5812425','-86.1349355','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15360','ELVIN ELAM LARA ROMERO','PARMA  BARRIO LAS BRISAS  SONAGUERA COLON (FTE. A COLEGIO)','9652-5179','MINI SUPER KILBERT','1','15.6633982','-86.1699744','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15362','SAYDA IVETH URBINA FUENTES','SONAGUERA RESIDENCIAL LOS ANDES FRENTE A LA CARRETERA','9521-8370','DISTRIBUIDORA URBINA #2','1','15.5833674','-86.3151796','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15364','ARELI SANDRES TOLEDO','TOCOA BO EL TAMARINDO FRENTE A PANAMERICANA','9781-9332','MINI SUPER LA CADENA','1','15.6505116666666','-86.0084266666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15365','RIGOBERTO NATAREN NATAREN','TOCOA CARRETERA DEL PUNTO DE BUSES DE LA VICINIA','95180099','BODEGUITA LOS GEMELOS','1','15.6612716666666','-86.00636','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15366','DILCIA YOLANDA REYES ANTUNEZ','GUANAJA ISLAS DE LA BAHIA EN EL CAYO FIRE POINT FRENTE REG DIOS','9875-6437','ALEJANDRA STORES','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15371','ALBERTO MARTINEZ RAUDARLES','TOCOA COL BAJO AGUAN 2 CUADRAS ANTES DEL ESTADIO','96965097','MERCADITO MARTINEZ N2','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15383','MARCO TURLIO GOMEZ PEREZ','ALDEA PLANES ORILLA DE CARRETERA A LA CEIBA','9904-7435','MARCO TURLIO GOMEZ PEREZ','1','15.5380883333333','-86.2764833333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15387','SANTOS MIRTO GUARDADO GUARDADO','DESVIO DE LORELAY HACIA LA CUBANA FRENTE A LA IGLESIA CATOLICA','97003906','SANTOS MIRTO GUARDADO GUARDADO','1','15.6800083333333','-86.2061583333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15389','ISAIAS RAMIREZ PEREZ','OLANCHITO BARRIO EL CENTRO MERCADO MUNICIPAL FRENTE A YOLI','0000-0000','ISAIAS RAMIREZ PEREZ','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15390','LILIAN MAGDALENA SAYBE CHAVARRIA','BARRIO EL CENTRO ATRAS DE PROVEEDORA INDUSTRIAL','24440858/96876918','LILIAN MAGDALENA SAYBE CHAVARRIA','1','15.662635','-85.9928549999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15391','MARIBEL SANABRIA ARITA','PALMA BARRIO EL RECODO CONTINUO A MINI SUPER KILBER # 1','97682246','MARIBEL SANABRIA ARITA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15392','NOEL GUTIERREZ CUBAS','TRUJILLO BARRIO JERICOB 2 CUADRAS AL FONDO DE LA CASETA DE LA PUERTO AREA','0000-0000','SUPER NISSY','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15393','MARTIN ALFARO MELGAR','BARRIO COYOL ESQUINA OPUESTA A LA CONCHITA ','97303890','MERCADITO ASHEY','1','15.51858','-86.2287866666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15397','JOSE ROBERTO THOMAS LANDAVERDE','COL SITRASCO CONTIGUO A LA IGLESIA FILADELFIA','94874836/95405445','JOSE ROBERTO THOMAS LANDAVERDE','1','15.4634383333333','-86.6516599999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15402','FRANKLIN EDILBERTO VILLEDA CABALLERO','CALLE CHAL BARRIO LOS LAURELES 1/2 CUADRA ANTES DE OFICINA DEL CABLE','95770150','FRANKLIN EDILBERTO VILLEDA CABALLERO','1','15.6509633333333','-85.9988016666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15405','JOSE OSMAN MARTINEZ LEIVA','ALDEA PLANES ORILLA DE CARRETERA A CEIBA CONTIGUO ATIENDAS CONVENIENCIA PLANES SONAGUERA COLON','0000-0000','JOSE OSMAN MARTINEZ LEIVA','1','15.5794833333333','-86.3244483333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15406','JOSE NAZARETH GONZALES SERRANO','ENTRADA A ISLETA  UNA CUADRA DESPUES DE LA GASOLINERA','99589562','PULPERIA LITZY','1','15.6054616666666','-86.1900733333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15407','RICARDO PEREZ GIRON','CALLE PANAMERICANA HACIA TOCOA  DESVIO DE ILANGA','9916-3177','GASOLINERA PUMA ILANGA','1','15.7073266666666','-86.0983716666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15408','SAUL ANTONIO TURCIOS FUNEZ','LA CURVA ISLETA  FTE A BLOQUERA  POR EL CAMPO DE FUTBOL','9812-5492','VARIEDADES MARYURI','1','15.6046083333333','-86.20654','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15409','MARIA MARLEN LEMUS MORALES','ALDEA LA ILARIA  DESPUES DE LA IGLESIA FILADELFIA.','9523-8395','PULPERIA MARLEN','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15410','EMPRESA DE SERVICIOS MULTIPLES LORELAY ESMUL','ALDEA ELIXIR  BARRIO LOS COCOS  CALLE PRINCIPAL  MEDIA CUADRA AL SUR DEL CAMPO EL AGUILA','9463-2796','SUPER BODEGA ELIXIR','1','15.5343533333333','-86.2767266666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15411','VICTOR HUGO MARQUEZ TOLEDO','ISLETA  SONAGUERA COLON  A 3 CASAS DEL CENTRO DE SALUD','97858799','LUBRICENTRO Y MAS ISLETA','1','15.6062916666666','-86.1902','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15412','LILY ROCIO MEJIA CASTAÑEDA','BARRIO EL TAMARINDO  CALLE PANAMERICANA CONTIGUO A PANIFICADORA EL PORVENIR  TOCA  COLON','31756177','LILY SUPERMERCADO #2','1','15.6509666666666','-86.0073216666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15413','ADALI ZELAYA SALES','ALDEA CHURRUSQUERA FRENTE A COMEDOR CARMEN  SONAGUERA  COLON','98354103/99794386','MERCADITO CRISTO VIVE','1','15.6665016666666','-86.1929483333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15414','NECTALY ROMERO MEJIA','ALDEA MONTECRISTO 1 CUADRA ANTES DE FERRETERIA LOS DEL VALLE  TRUJILLO COLON','96086808','MINISUPER DANI','1','15.876845','-85.8293416666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15415','FELICIANO SAGASTUME NUÑEZ','ALDEA CEIBITA CEIBITA NUEVA  CALLE PPAL 5 CUADRAS ARRIBA DE LA IGLESIA CATOLICA','98496434','PULPERIA BRAYAN','1','15.6061583333333','-86.190625','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15416','CHRISTIAN JOSUE HERNANDEZ MARADIAGA','ALDEA CAYO SIERRA BO EL CENTRO 2 CUADRAS ANTES DE LA ESC FRANCISCO MORAZAN','3375-6657','BODEGA MI BENDICION','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15417','KEYDI YADIRA ORELLANA ARRIAGA','ALDEA SALAMA CALLE PRINCIPAL A LA PAR DE LA CANCHICA DE FUTBAL','3228-2192','INVERSIONES S K L','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15418','ILSA CARMELINDA ERAZO MARTINEZ','COL LA NORTEÑA CALLE CHELA ESQUINA OPUESTA A REPUESTOS DEL NORTE','9733-6631','PULPERIA ERAZO DIAZ','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15419','OSCAR IVAN FUNEZ PINEDA','CALLE PRINCIPAL CONTIGUO A LA POLICIA','9592-4780','MINI SUPER PINEDA','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15422','JOSE ADALY CEDILLO MENDOZA','ALDEA GUAPINOL CALLE PRINCIPAL DOS CUADRAS DESPUES DEL CAMPO','9804-6015','MINI SUPER CEDILLO S. DE R. L.','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15425','EDWIN OMAR GUEVARA ALBERTO','BARRIO RIO NEGRO CALLE A LA PLAYA FRENTE AL MUELLE VIEJO','9710-0867','MERCADITO OMAR','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15426','MARCO TULIO SALINAS RIVERA','ALDEA LORELAY CALLE HACIA LA CUBANA A MANO DERECHA','9894-6360  96359062','MINI SUPER DIANA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15427','BELKY YISELA MOOR REYES','CALLE PRINCIPAL BARRIO LA MILAGROSA FRENTE A CEMEFA','9887-0215','SUPERMERCADO LA GRANJA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15428','ARTURO BARAHONA RODRIGUEZ','BO LAS ACACIAS CALLE PRINCIPAL FRENTE A ESCUELA AGUSTO C COELLO','97176376','BODEGUITA BARAHONA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15431','JOSE DANILO RAMOS QUINTERO','CAYO SIERRA BO EL CENTRO UNA CUADRA A LA DERECHA DE PULPERIA MI BENDICION','9948-5717','PULPERIA DANIELA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15432','JENRY VALENTIN MENDOZA GUTIERREZ','BO LAS FLORES CALLE PRINCIPAL CONTIGUO A POLLOS EL CENTRO NO. 2','9695-5269','BODEGUITA LA ESPERANZA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15433','CLAUDIA LILIANA RODRIGUEZ CALIX','BO LAS FLORES 1RA CALLE NE 5AVE NE ATRAS DE TRANSPORTE MIRNA','9483-6406','BRAVO SUPER MARKETS Y BRAVO STORE','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15010','MARIO RAMIRO REYES PEÃ‘A','OLANCHITO BOLVD SALIDA A COYOLES OLANCHITO YORO','24466507 / 97879650','MINI SUPER ROSMERY','1','15.48209','-86.5805999999999','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15288','MEYRA CATALICIA MERAZ DIAZ','LA CEIBA   SOLARES NUEVOS FRENT A DULCE VITA','9897-8662','LACTEOS QUEYMA','0','15.7776153','-86.7891843','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15289','HENRY SIMON KAWAS KAWAS','PROLOGANCION 15 DE SEPTIEMBRE   FTE CAMARA YUNIOR   LA CEIBA ','2441-0351','MOTORES & ACCESORIOS KAWAS  SA ','0','15.7752393','-86.8022642','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15314','MELISA CAROLINA SUAREZ MARTINEZ','OLANCHITO COLONIA LA LIBERTAD SUR FTE LACTEOS QYMAR OLANCHITO YORO','3259-5197','SUPER MERCADO Y BODEGA LA HONDUREÃƒâ€˜A','1','15.4816949999999','-86.5720033333333','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15434','EXCEQUIEL AMAYA LEMUS','BO LAS FLORES CALLE AL HOSPITAL SAN ISIDRO FRENTE A DIALISIS DE HONDURAS','9786-7641','SUPER AMANECER','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15435','WALTER JAVIER VENTURA AVILA','ALDEA LA ILARIA CALLE PRINCIPAL UNA CALLE ANTES DE LA CANCHA DE FUTBOL','9603-1338','PULPERIA ARIANA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15436','MARIO RENATO PLANAS FONTECHA','ALDEA SILIN CALLE PANAMERICANA ','9922-0977','INVERSIONES PLANAS S. A. ','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15437','MIRNA YARIELLA RAMIREZ VARGAS','BARRIO LA ESPERANZA CONTIGUO A BODEGA 4 HERMANOS','9626027  24441157','MERCADITO YANIS','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15438','CELIO ADALID SANCHEZ','COROSITO 2 CUADRAS DESPUES DEL TRIANGO FRENTE A POLLO CRISTIAN','9922-6234','CARNICERIA ROCIO','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15439','URISNO MARTIR MARTINEZ PAZ','COROSITO BARRIO SOLARES NUEVOS CONTIGUO A POLLOLANDIA','88811603','VARIEDADES ARIEL','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'7401','N/A','LA CEIBA','0000-0000','MAYNOR OSEGUERA ORTEGA','1','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'922068','SAUL ANTONIO  TURCIOS FUNEZ','CURVA ISLETA  FTE A BLOQUERA  POR EL CAMPO DE FUTOBOL','98125492','VARIEDADES MARYURI','0','0','0','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15009','NIDIA TEJADA','OLANCHITO BRRO EL CENTRO OLANCHITO YORO','24463606/99971742','BODEGA LA COLMENA','1','15.483825','-86.5711816666666','483');
INSERT INTO Clientes_impulsadoras VALUES(0,'15061','WILFREDO RAMIREZ','PUERTO LEMPIRA','95025862','COMERCIAL RAMIREZ','0','15.7738092','-86.7979667','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15062','VOLDY GOMEZ','PUERTO LEMPIRA','88091857','BODEGA LA LUCHA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15063','ANA FRANCISCA CERON','EL CENTRO LA CEIBA','99656068','VARIEDADES TATIANA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15064','GERARDO OCTAVIO MEDRANO VELASQUEZ','EL CENTRO LA CEIBA FRENTE HONDUTEL AVE. 14 DE JULIO','9757-9024','VARIEDADES ESPERANZA','1','15.7874457','-86.7917223','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15065','ALFONZO GUEVARA SANTOS','SABA COLON','24248639','TIENDA H.L.A','1','15.7738282','-86.7980079','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15066','MELVIN FEDERICO CARIAS','PUERTO LEMPIRA','99433030','SURTIDORA CRISTHELL','1','15.7685648','-86.7701374','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15067','MARCOS ANTONIO MORALES','SABA','99929427','SUPERMERCADO M Y S','1','15.5234483333333','-86.232205','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15068','DAMARIS CRUZ','EL CENTRO LA CEIBA','99533910','SUPER TIENDAS PALMIRA S DE R L','0','15.7864813','-86.7919008','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15069','MAYNOR CANALES','CALLE CA-13 SAN JUAN PUEBLO FTE CENTRO SAVEL','98574852/24362773','SUPER MCDO CANALES','1','15.599105','-87.2054199999999','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15070','RENE TORRES','PTO LEMPIRA','95466535','RENE  AUDELI TORREZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15072','HECTOR BENITES','SONAGUERA BO EL CENTRO','98542361/24516319','PULPERIA MILI','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15073','ROSA ESTHER ARGUETA','SIEMPRE VIVAARIZONA ATLANTIDA','98226747','PULPERIA LA ROSA','1','15.6043666666666','-87.174965','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15074','ESTANLIN JOEL HERNANDES','SABA','98667067','PULPERIA HERNANDEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15075','ROSMERI VALDIBIEZO','JUTIAPA','98688019','PULPERIA FELIX','1','15.7460694','-86.5144579','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15076','ROBERTO LOPEZ MUNGUIA','MASICA','95867412','PULPERIA EL BUEN AMIGO','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15077','FELIX RAMOS','DESCOMBROS','96476784','PULPERIA ECONOMICA','0','15.615085','-86.3902982','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15078','ADAN VARELA','COL LAS DELICIAS','96596555','PULPERIA ADAMAR','1','15.7581583333333','-86.8200933333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15079','YOVANI','IMALAPA SONAGUERA','33056241/99215731','PULPERIA ABIGAIL','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15080','ELMER ALMENDOLA','EL CENTRO LA CEIBA','98278241','PLASTIMER # 2','0','15.7689837','-86.7702327','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15081','JOSUE JONATAN MENCIA','BO. POTRERITOS','95112529','PLASTICOS JASSON','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15082','NELY CAROLINA VIGIL PUERTO','BARRIO EL CENTRO LA CEIBA','96798187','INVERSIONES VIGIL','1','15.7874166666666','-86.7908449999999','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15083','OSCAR MATUTE','PUERTO LEMPIRA KAUQUIRA','99672708','BODEGA YAHAIRA','1','15.7685001','-86.7700995','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15084','ONEYDA VASQUEZ','ROATAN','33667471','DISTRIBUIDORA VASQUEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15085','MIRNA LORENA AYALA PINEDA','BO. EL CENTRO EL PINO FRENTE A CENTRO DE SALUD','94857210','SUPERMERCADO LORE','1','15.7113233333333','-86.91259','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15086','CARLOS WALBERTO MARTINEZ COLINDRES','EL CENTRO LA CEIBA','94856321','MINI SUPER LA SUREÃƒâ€˜A','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15087','FREDY AMILCAR ROSALES SALGADO','EL PORVENIR','31426793','MINI SUPER FLORENCIA','1','15.7176366666666','-86.9713366666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15088','FREDY ZUNIGA','SONAGUERA','89372010','MINI SUPER F Y S','1','15.6212','-86.271835','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15089','DANILO CASTRO','LA MASICA','99975459','MI MERCADITO RONI','0','15.7695416','-86.7698559','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15090','MERLIN CRUZ','PUERTO LEMPIRA','31430438','DISTRIBUIDORA MAYELA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15091','WILSON PADILLA','SABA COLON BO EL CALLO FT MERCADO MUNICIPAL','99649108','MERCADITO WILSON # 1','1','15.519455','-86.2336966666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15071','SANDRA ESPERANZA SANTOS','SAN JUAN PUEBLO COL LA MISH 1 CUADRO DEL CAMPO','94815140','PULPERIA SANDRA','1','15.5952256','-87.2043853','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15096','NORLAN OCHOA','EL CENTRO SABA COLON','98896883','MERCADITO NORLAN # 3','1','15.7738208','-86.7980156','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15097','NORLAN OCHOA','SABA','98896883','MERCADITO NORLAN # 2','1','15.51894','-86.233715','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15098','NORLAN OCHOA','SABA','98896883/24247080','MERCADITO NORLAN # 1','1','15.7738208','-86.7980156','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15099','OSWALDO ENRIQUE CRUZ','SABA','99094594','MERCADITO MURRILLO','0','15.521146','-86.233063','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15100','MARIO VILLATORO MURILLO','SABA','33569428','MERCADITO GLORIA','1','15.51885','-86.2332016666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15101','EDA ELIZABETH CHAMALE','CALLE PRINCIPAL CA-13','33659874/24363501','MERCADITO CHAMALE','1','15.599555','-87.20123','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15102','YOLANDA LEDICIN LOPEZ','CALLE CA-13 SAN JUAN PUEBLO','33005684','M/S LOPEZ','0','15.707423','-86.9193477','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15103','LOURDES CARIAS','PUERTO LEMPIRA','97295483','LOURDES CARIAS','0','15.7428258','-86.5161219','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15104','JESUS CASTRO','PUERTO LEMPIRA','98979504','DISTRIBUIDORA EBENEZER','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15105','ROSIBEL ELVIR','PUERTO LEMPIRA','97368663','INVERSIONES YOHANA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15106','GUILLERMO MORALES','PUERTO LEMPIRA','99734987','INVERSIONES R Y A','0','15.523932','-86.2296601','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15107','MAURO ELIAZAR MORALES','BO POTRERITOS 6TA CALLE ENTRE AVE MARCO AURELIO Y RAMON ROSA','24432899/99746442','INVERSIONES M Y S','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15108','HUGO GERARDO MARTINEZ','UTILA','98278241','HUGOS STORE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15109','GABRIEL LINO','PUERTO LEMPIRA','24336013/97206131','COMERCIAL LINO ','1','15.7738665','-86.7979201','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15110','FREDY LOPEZ','MOSQUITIA','88005915','BODEGUITA GOMEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15111','EDA GOMEZ','PUERTO LEMPIRA','96631806','BODEGA EDA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15112','RENE RODRIGUEZ','EL CENTRO LA CEIBA','84562891','DIPROVAR','1','15.7873693','-86.7910255','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15113','DOMINGO VELASQUEZ','EL CENTRO LA CEIBA','24419278','DOMINGO VELASQUEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15114','JOSE ANTONIO TORRES','SAN JUAN PUEBLO','33420030','DISTRIBUIDORA SAN JOSE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15115','KAREN RIVAS','PUERTO LEMPIRA','98979504','DFEPOSITO EBENEZER','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15116','MAURICIO AMENDOLA','EL CENTRO LA CEIBA','98278241','DISTRIBUIDORA DIMA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15117','SULMA TORRES','SABA BARRIO EL CENTRO','99148894','DISTRIBUIDORA DIAZ TORREZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15118','CARLOS CALIX','EL CENTRO  LA CEIBA','99533910','DISTRIBUIDORA ANDREA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15119','ELVIN JIMENES','CACERES  EL PORVENIR','96773028','DEPOSITO ELVIN','0','15.7682209','-86.7700661','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15120','REYNALDO PADILLA SANCHEZ','EL CENTRO LA CEIBA','98220679','CONFITERIA DIANA','1','15.7873116666666','-86.7906533333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15121','ADALI SALDIVAR','SANTA ANA','33382066','COMERCIAL ZALDIVAR','1','15.6446433333333','-87.0575633333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15122','GRACIELA RIOS','SONAGUERA BO EL CENTRO','33562894','COMERCIAL EL PORVENIR','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15123','ARTURO CHAVES','SABA BO EL CENTRO','99953530/24248342','COMERCIAL CHAVEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15124','MARIO VARELA','SONAGUERA','99102204','COMERCIAL ACACIAS','1','15.6217883333333','-86.2735266666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15125','MARVIN GEOVANI GALAN','EL CENTRO LA CEIBA','24433536','CARNICERIA TRES HERMANOS','0','15.7875743','-86.7917601','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15190','CARLOS HUMBERTO UMANZOR','BO POTRERITOS LA CEIBA','97646400/97486799','BODEGA UMANZOR','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15191','OSMAR ALVARENGA PINTO','BO EL CENTRO 6 CALLE CALLE A PALMIRA','97822099','BODEGA LA ECONOMICA','1','15.786595','-86.7915283333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15192','CESAR AUGUSTO GALINDO REYES','COL.SITRAMA S.A FRENTE A TALLER KEVIN','33281803','BODEGA CESAR','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15195','ATILIO MARTINEZ','SAN JUAN PUEBLO ATLANTIDA','98769511','BODEGUITA EL CENTRO','1','15.5991966666666','-87.2063583333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15196','MILTON YOVANY MIRANDA SANTOS','AVE 14 DE JULIO FRENTE CASOL','98468787','CONFITERIA NANCY','0','15.7682086','-86.7699182','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15198','MILTON GEOVANY MIRANDA SANTOS','AVE 14 JULIO FRENTE A CASOL','98468787','CONFITERIA NANCY','1','15.7865716666666','-86.7915983333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15199','DORA ETHELVINA VASQUEZ','ROATAN','2445 0096/96954728','CONFITERIA CHRIS','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15201','JESSICA NOHEMY MENCIA','LA MASICA BARRIO NUEVO CALLE PRICIPAL','24361212/88831142','DESPENSA DE PUEBLO','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15202','ELMER BLADIMIR MEJIA','COL. MARISOLLA CEIBA','24422590','INVERSIONES Y BOEGA SAN JOSE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15126','CARLOS CENTENO','SANTA ANA','32562468','CARNICERIA SAMIR','1','15.6397833333333','-87.060065','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15127','ELENA','B EL PORVENIR SONAGUERA','88652141','CARNICERIA GABY','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15128','OSBALDO ROSALES','PUERTO LEMPIRA','95823674','BODEGA SHAQUIRA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15129','ROCIL ALEINY MARTINEZ JIMENEZ','EL CENTRO LA CEIBA','31881133','TRANSPORTES Y COMERCIALIZADORA SAN ANTONIO','1','15.7518783333333','-86.837775','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15130','WILMER RENE ROSALES MATUTE','EL CENTRO LA CEIBA','88983277','BODEGA NISSHY','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15131','NICOLLE GARCIA','EL CENTRO LA CEIBA','94263518','BODEGA NICOLE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15132','SANDA','COL LOS BONBEROS','96927921','BODEGA NAYELY','1','15.7612606','-86.7815937','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15133','ELMER NAHUN MARTINEZ FUNEZ','EL CENTRO LA CEIBA','97655579','BODEGA NAHUN #1','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15134','SAIRA MAYELI HENRRIQUEZ','PUERTO LEMPIRA','32134360','BODEGA LULUSTI','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15135','WILMER ALVARADO','CO. LAS DELICIAS  ENTRADA PRINCIPAL','94967571','BODEGUITA VILMA S','1','15.7584599999999','-86.820555','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15203','DINORA RAMOS COREA','BRRO POTRERITOS AVE RAMON ROSA','95112529','FRUTAS Y VERDURAS JATHANA','0','15.711238','-86.9129877','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15204','SONIA ARELI TOME TORRES','LA CEIBA PALLCALA CALLE PRINCIPAL','0000-0000','BODEGA GRACIAS A DIOS','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15209','EDRAS NAHUM LARA RAMON','BO. EL CENTRO FRENTE A BANCO ATLANTIDA SONAGUERA','0000-0000','BODEGA LEANDRO','0','15.7689312','-86.7699831','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15210','MIGUEL CHAVARRIA','BO. EL COYOLI SABA','9505-7884','MERCADITO FLORES','1','15.519793','-86.23398','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15212','MARTHA DELMA GONZALES','BO EL CENTRO 5 Y 6 CALLE FTE HONDUTEL','96777845','BODEGA JAFET # 2','1','15.7867316666666','-86.7917749999999','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15213','MARCOS CRUZ','LA MASICA ATLANTIDA','0000-0000','BODEGA MI CASITA','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15217','EBER JEOVANY CALIX ROSALES','EL CENTRO EL PINO','32967710','SERVICIOS MULTIPLES HEBRIL','0','15.787625','-86.7916141','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15218','ELVIS MONRROY','BO POTRERITOS','24431115','BODEGA EL SOL','1','15.7520599999999','-86.8376383333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15219','OVIDIO NAUN TURCIOS CALIDONIO','EL NARANJAL MASICA ATLANTIDA','0000-0000','M/S TURCAL','1','15.6316916666666','-87.0690516666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15136','MELVIN CONTRERAS','COL  SAN JUDAS','96976448','BODEGA LA UNCION','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15137','MELIDA DEL CARMEN TURCIOS','BARRIO EL CENTRO LA CEIBA','33226541','BODEGA LA TIA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15138','HECTOR MARTINEZ','LA CEIBA BO EL CENTRO','98579919','BODEGA LA FUENTE','1','15.76823','-86.7700766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15139','FANI FRANCIS GOMEZ','BARRIO EL CENTRO LA CEIBA','97631806/24422172','BODEGA LA FAMILIA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15140','WILGEN ORLANDO GONZALES','EL CENTRO LA CEIBA','96141221','BODEGA JAFET','1','15.7875833333333','-86.7905883333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15141','JUAN HERNADES','BO. EL CENTRO CONTIGUO AL PARQUE DEL NIÃ‘O JUTIAPA ATLANTIDA','95423654 / 3180-5868','BODEGA HERNANDEZ','1','15.74249','-86.51024','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15142','BETY GRICI MOREL','EL CENTRO LA CEIBA','95888474','BODEGA HERIZIN','0','15.7872947','-86.7912387','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15143','ALEX MARIEL MEJIA','EL CENTRO LA CEIBA','8609-5898','BODEGA FUNEZ','1','15.7874883333333','-86.7891666666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15144','JOSE ERAZO','JUTIAPA','97397792','BODEGA ERAZO','1','15.7421433333333','-86.5099983333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15145','NELSON DAGOBERTO AYALA GOMEZ','EL CENTRO LA CEIBA','33658569','BODEGA EL REY','1','15.787315','-86.7890033333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15146','ADAMARIS LOPEZ','PUERTO LEMPIRA','88653500','BODEGA ADAMARIS','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15147','OSMAR ALVARENGA PINTO','CENTRO DE LA CEIBA CALLE PALMIRA','97822099','BODEGA ECONOMICA','0','15.7689837','-86.7702327','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15148','NIDIA CONTRERAS','COL. SAN JUDAS','97401220','BODEGA CONTRERAS','1','15.755295','-86.7885516666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15149','DENIS HERRERA','EL CENTRO SABA','99911625','BODEGA COLONIA','1','15.5191033333333','-86.2335433333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15150','NAHUN CHAVARRIA','EL CENTRO SABA','99436935','BODEGA CHAVARRIA # 2','1','15.5138583333333','-86.2313799999999','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15151','SONIA YAMILETH GARCIA','EL CENTRO  LA CEIBA','97822099','BODEGA ATENCION','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15152','ROBERTO LOPES MUNGUIA','CALLE CA-13 SAN JUAN PUEBLO','85693217','BODEGA NUESTRA CASA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15153','CARLOS BARRAZA','AGUA CALIENTE','33568924','B0DEGA BARRAZA','1','15.6071216666666','-87.1700633333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15154','ANGEL NEPTALY MONTOLLA','SONAGUERA','98682446/24517011','PULPERIA EL CENTRO','0','15.788224','-86.7907041','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15155','ANDRES MELGAR','PUERTO LEMPIRA','98117928','ANDRES MELGAR','1','15.7874033333333','-86.7907633333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15226','WILFREDO MIGUEL RAMIREZ ESTRADA','BO EL CENTRO CALLE PRINCIPAL 1/2 CUADRA BCO OCCIDENTE','95025864','BODEGA JIREH','1','15.768345','-86.7700733333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15227','SILVIA YANETH CASTRO URBINA','BRRO EL CENTRO 5 CALLE','99420529','INVERSIONES  D Y S','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15228','SONIA CAROLINA VILLEDA HERNANDEZ','CALLE PTO DE BUSES ESQUINA OPEUESTA AL MERCADO','0000-0000','BODEGA Y COMERCIAL SABA','0','15.7428629','-86.5160586','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15229','JOSE EFRAIN BENITEZ','PUERTO LEMPIRA','97794067/98214550','EFRAIN BENITEZ','1','15.717585','-86.9712016666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15230','ORLANDO FLORES NAVARRO','PUERTO LEMPIRA','97823458/98214550','ORLANDO FLORES NAVARRO','1','15.7691757','-86.7699911','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15231','DARWUIN ALEXANDER GALO FLORES','PUERTO LEMPIRA','9633-4156','DARWIN GALO','1','15.7682714','-86.7699059','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15236','NANCY YULIZZA FLORES AGUILAR','AVENIDA SAN ISIDRO BO EL CENTRO FRENTE A HOTEL HIBERIA','9846-8787','PIÃ‘ATERIA NANCY','1','15.7865183333333','-86.792955','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15241','EDRAS NAHUN LARA ROMERO','N/A','9938-5504','MERCADITO Y VARIEDADES MARI','0','15.7688009','-86.7703247','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15243','DIANA CAROLINA PADILLA CANALES','BO. EL CENTRO MERCADO EL HIGERITO   FTE. A DIPROVAR','96395310','CONFITERIA CEIBEÃƒâ€˜A','0','15.7872518','-86.7905706','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15245','DUNIA CATALINA CRUZ CALIX','FRENTE AL HOTEL DOAMAR   SABA  COLON','9982-61477 24463715','NOVEDADES ALFREDITO & SUPER MERCADO EL DORADO ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15252','MOISES DAVID ESCOBAR IRIARTE','COLONIA LOS ANGELES   2D CUADRA CASA NO. 14  LA CEIBA','9985-8080 //  8942-7533','MOISES DAVID ESCOBAR IRIARTE','0','15.7689032','-86.7699746','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15254','EMERITA JACINTA CHAMALE BACA','1ER CALLE DE LA ARROCERA  CLLE . PRINCIPAL  LA MASICA ATLANTIDA','3140-5398','MERCADITO CHAMALE','0','15.5996211','-87.2014807','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15266','MARCOS EVELIO ALONSO HERNANDEZ','BO. EL CENTRO LA CEIBA ATLANTIDA','31927002','ABARROTERIA M Y G','0','15.7876191','-86.7912148','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15268','ROLAND JARED MARTINEZ VELASQUEZ','BO. LA MERECED CONTIGUO A TIENDA LA PREFERIDA JUTIAPA ATLANTIDA','9581-8946','BODEGA MARTINEZ','1','15.741159','-86.5103095','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15272','DINA ONEYDA VASQUEZ MARTINEZ','COKEN HOLE  CLLE.PRINCIPAL  COL BODDEN C#SN   FTE A MUNICIPALIDAD   ROATAN   ','3366-7471','DINA ONEYDA VASQUEZ MARTINEZ','1','15.7876191','-86.7912148','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15274','JOSE RIGOBERTO SANTOS MC NAB','BO. EL CENTRO  AVE. SAN ISIDRO  FTE. A POLLOS MARLON  LA CEIBA','9921-6270','JOSE RIGOBERTO SANTOS MC NAB','0','15.7876191','-86.7912148','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15275','GONZALO RIGOBERTO VILLAFRANCA VASQUEZ','EL GANCHO  LA UNION   CARRETERA DESPUES DEL PUENTE','9768-2540','SURTIDORA  VASQUEZ','0','15.7876191','-86.7912148','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15156','DEYSI FLORES','CALLE CA-13. 2 CUADRAS ANTES DEL CENTRO DE SALUD','24363280','ABARROTERIA SOSA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15157','MARIO BARDALES','CO. LAS DELICIAS  ENTRADA PRINCIPAL','98361683','ABARROTERIA DELICIAS','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15158','MARIA YAMILETH HERRERA','B. EL CENTRO CALLE 3  FRENTE A TIENDA CHACON','97790973','MERCADITO LA ROMANA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15159','ROSIBEL ELVIR AGUILAR','PUERTO LEMPIRA','94368663','INVERSIONES ROSSY','1','15.7737436','-86.7978896','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15160','HEBER CALIX','EL PINO LA CEIBA','98224886','MINI SUPER HEBER','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15161','MAYRA ISABEL MONTOYA','PUERTO LEMPIRA','97693210','DISTRIBUIDORA MAYRA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15162','SANDRA XIOMARA STIP PALAO','PUERTO LEMPIRA','33856300','BODEGA SANDRA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15163','MAILIN PINTO','SAN JUAN PUEBLO','24363121','MINI SUPER HERMAY','1','15.5992166666666','-87.2108766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15164','JOSE SANTOS HERNANDEZ','JUTIAPA','33654831','BODEGA STEVEN','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15165','REYNA ROSSIBEL MEJIA','N/A','97509943/97482326','INVERSIONES EUNICE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15285','MAURICIO CASTILLO MARTIENEZ','CARR. PRINCIPAL BO. COYOL FTE AL COLEGIO 4 DE SEPT.. CALLE A OLANCHITO SABA COLON','2424-8080','COMERCIAL LA BALANZA','1','15.521784','-86.233923','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15287','DORA ZULEMA CHOW ESPINOZA','BO. EL CENTRO CALLE PRINCIPAL PTO. LEMPIRAS GRACIAS A DIOS','8989-8383','INVERSIONES DIAZ CHOW','1','15.7738529','-86.7979916','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15288','MEYRA CATALICIA MERAZ DIAZ','LA CEIBA SOLARES NUEVOS FRENT A DULCE VITA','9897-8662','LACTEOS QUEYMA','1','15.7808333333333','-86.7914533333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15290','JOSE EDGARO FUNEZ PERALTA','COLONIA IRIAS   NAVAS   CALLE PRINCIPAL','3233-7360','ABARROTERIA  KARINA','0','15.7738505','-86.7980235','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15291','ABIGAIL RITA MORAN','BO. EL CENTRO MERCAD. POTRERITOS  CONTIGUO PLASTICOS BLANDI','9868-7780','ABIGAIL RITA MORAN','0','15.7739452','-86.7979066','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15292','ADAN ALBERTO MARTINEZ  VALLECILLO','COLONIA LOS MAESTROS DEPUES DE LA POSTA POLICIAL  CONTIGUO A SINDY BAY ROATAN','8837 7780  // 9441-7710','DISTRIBUCIONES J Y M','0','15.7738475','-86.7980196','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15293','MANUEL DE JESUS MENJIVAR CRUZ','BO. POTRERITOS FTE. A PUNTO TAXI EL COROZAL LA CEIBA','0000-0000','FRUTAS Y VERDURAS LOS DOS HERMANOS','1','15.7872541','-86.7897534','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15294','OLGA MARINA IRAHETA MIRANDA','SANTA ANA   BO. LA TORRE  SAN FRANCISCO   ATLANTIDA','9530-9933','PULPERIA BERE','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15295','DORLA KATRINA H. CERRATO','KAWTIRA FTE. IG. ADVENTISTA PTO. LEMPIRA GRACIAS A DIOS','0000-0000','PULPERIA GISSELL','1','15.7683022','-86.770106','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15296','ROGELIO JUNIOR PADILLA MEJIA','BO POTRERITOS   CONTIGUO A CAR WASH   LA CEIBA','9547-7865','PULPERIA EL REY','0','15.7682346','-86.7699329','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15297','OSCAR ALFREDO RAMIREZ RODRIGUEZ','CEIBITA WAY BO.EL CENTRO  ESPARTA   ATLANTIDA','9641-2451 Y 9686-8449','COMERCIAL CINDY','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15298','JUAN JOHE ERAZO DOMINGUEZ','1ER CALLE 2DA CUADRA COL. SUTRASCO ATRAS DE CARNITAS EL PINO EL PORVERNIR ATLANTIDA','9829-5556','GRANJA MONTE CARMELO','1','15.713205','-86.9054413','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15299','LORBI GABILU ORTIZ ORANTES','BO. BUENOS AIRES CALLE PRINCIPAL  CA 13  ARIZONA   ATLANTIDA','0000-0000','BODEGA LA ECONOMICA','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15300','TULIO GUEVARRA BONILA','BO. SAN ANTONIO CONTIGUO A BANCO. OCCIDENTE  ARIZONA  ATLANTIDA','9756-4099','INVERSIONES GUEVARA','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15302','OLMAN YOVANI AVILA MEJIA','BO EL CENTRO  PUERTO LEMPIRA   GRACIAS A DIOS ','9639-9158','OLMAN YOVANI AVILA MEJIA ','1','15.7868828','-86.7909279','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15303','ADAN ALBERTO MARTINEZ VALLECILLO','COXAN HOLE   ROATAN ','8839-7780','DISTRIBUCIONES J Y M ','1','15.7877635','-86.7893665','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15304','GUSTAVO ARTURO TURCIOS NAVARRO','COL. HERRERO CALLE PRINCIPAL FTE A LA CANCHITA LA CEIBA','9990-0726','MINI SUPER LIZZY','1','15.759635','-86.787005','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15305','ROSEL ALBERTO CENTENO MEDINA','COL. ALVAREZ CONTIGUO A POLLOLANDIA LA MASICA','8959-7711','BODEGUITA NEREDITH','1','15.6311316666666','-87.0974533333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15306','SARA NOHEMI CANALES GARCIA','PTO LEMPIRA BO. EL CENTRO','98193096','SARA NOHEMI CANALES GARCIA','1','15.7682397','-86.7698912','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15307','YOLANDA LETICIA LOPEZ LOPEZ','CALLE CA-13   DESVIO A SANTA ANA   SAN FRANCICO  ATLANTIDA','0000-0000','INVERSIONES LOPEZ  SRL DE CV','0','15.7739282','-86.7980197','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15308','LIGIA YADRA ROSALES','BO EL CHORRO.CONTIGUO A MERC GLORIA SABA COLON','33819258','BODEGA LA FE','1','15.517084','-86.234718','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15309','JIMMY OBED ALVARADO VASQUEZ','COXEN HOLE BO. EL CENTRO ROATAN ISLAS DE LA BAHIA','0000-0000','JIMMY OBED ALVARADO VASQUEZ','1','15.7786229','-86.7915983','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15310','SILVIA ESTELA MOINA AYALA','BO. EL CENTRO PUERTO LEMPIRA GRACIAS A DIOS','9496-7033','COMERCIAL DEL PUEBLO','1','15.7682266666666','-86.7700183333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15312','DARLING MERELLY MALDONADO ORELLANA','LA UNION   EL PORVENIR   1/2 CUADRA AL OESTE DE ESC. FCO. MORAZAN ','9762-7453','ABARROTERIA  Y NOVEDADES MADELINE S DE RL ','0','15.7682395','-86.769874','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15313','JOSE ENEMIAS NATAREN ALLBERTO','SANTA FE DE JUTIAPA  MEDIA CUADRA DEL PUENTE','9592-9769','PULPERIA EL PRIMO','0','15.7738153','-86.79801','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15326','HOMER EMILIO QUIÃ‘ONEZ ZELAYA','COLONIA TORONJAL BLOQUE 2 CASA 14 LA CEIBA ATLANTIDA','9964-8650','QUICK STOP','1','15.7682258','-86.7699182','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15327','HOMER EMILIO QUIÃ‘ONEZ ZELAYA','COLONIA TORONJAL BLOQUE 2 CASA 14 LA CEIBA ATLANTIDA','9664-8650','SERVICENTRO LAS MINAS','1','15.7874578','-86.7907393','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15328','LINDON BAYNES FAGOT COLOMER','PUERTO LEMPIRA GRACIAS LEMPIRA','9711-8304','LINDON BAYNES FAGOT COLOMER','1','15.75904','-86.8155083333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15330',' EMILIO ROLANDO RIVERA MORALES ','FTE. CALLE CA-13   BO. LA PAVA   SABA COLON','3122-4871','EMILIO ROLANDO RIVERA MORALES ','0','15.773826','-86.7980142','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15331','MARLON XAVIER OCHOA DIAZ','BO EL CENTRO FRENTE A MERCADO MARLON NO 1 LA CEIBA','0000-0000','MERCADITO MARLON','1','15.7683749999999','-86.7700766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15332','ELI XIOMARA MEJIA RODRIGUEZ','BARRIO EL CCHORRITO FTE. IGLESIA MENONITA SABA COLON','9684-8406','BODEGA LA COPANECA /  ELI XIOMARA MEJIA RODRIGUEZ','1','15.520075','-86.232908','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15333','MERCADITO HERNADEZ','COLONIA PALMIRA   CALLE PRINCIPAL   MEDIA CUADRA CARRETERA CA 13','97219759','MERCADITO HERNANDEZ / CRISTIAN MAURICIO LOPEZ ORTEGA','0','15.7682395','-86.769874','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15334','MARIBEL SANABRIA ARITA','BO. EL CENTRO FTE. BCO. DAVIENDA SONAGUERA COLON','9918-7120','MERCADITO Y VARIEDADES MARY','1','15.622555','-86.27238','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15345','VELQUIS MILANIA HAYLOCK RIVAS','PUERTO LEMPIRA BARRIO EL CENTRO','98496605','VELQUIS MILANIA HAYLOCK RIVAS','1','15.786885','-86.7913966666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15346','ELNA MARIA FLORIANO LABONTE','PUERTO LEMPIRA BARRIO EL CENTRO','99630392','ELNA MARIA FLORIANO LABONTE','1','15.7544216666666','-86.8349516666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15347','ANABEL LAINEZ GARCIA ','COL LAS PALMIRAS CIRCUITO CERRADO ','95960524','ANABEL LAINEZ GARCIA ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15348','GERSON DAVID GALVEZ MURILLO','COL. EL CONFITE','99617860','DEPOSITO Y FERRETERIA EL CONFITE','1','15.7739517','-86.798053','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15349','JOEL ISAIAS ALMENDARES','SABA COLON BARRIO EL CHORRO CONTIGO A LA TERMINAL','98718183','VANIDADES ISANNY','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15351','MARTIN ALFARO MELGAR','BARRIO EL CHORRO FRENTE A MERCADO GLORIA','3183-9237','BODEGA ASHLEY','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15352','LUIS ALBERTO PEREZ SANCHEZ','PUERTO LEMPIRA BO EL CENTRO','9586-0327','LUIS ALBERTO PEREZ SANCHEZ','1','15.7689715','-86.7702528','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15353','ILEN DAYAN MERAZ FERNANDEZ','BARRIO EL CENTRO FRENTE A DYPROVAR','8983-0808','ILEN DAYAN MERAZ FERNANDEZ','0','15.7874174','-86.7910274','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15354','NELDA YANIRA ZAVALA TORRES','COL SUYAPA FRENTE AL PUENTESITO','3378-3638','NELDA YANIRA ZAVALA TORRES','1','15.7620366666666','-86.7955766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15355','LEYDA JUANA CALDERON PITCHS','PUERTO LEMPIRA','0000-0000','LEYDA JUANA CALDERON PITCHS','1','15.7738925','-86.797994','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15357','JOVER WILMER CLOTLER ORELLANA ','PUERTO LEMPIRA BARRIO EL CENTRO ','0000-0000','ABARROTERIA J Y M ','1','15.7682459','-86.7702317','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15358','CARMEN LORENA GUTIERREZ GALO ','SABA COLON FRENTE A LA FARMACIA M. PREFERIDA ','0000-0000','MERCADITO LA CANASTA ','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15361','BRYAN EDUARDO ELIAS MEJIA','BARRIO EL CENTRO FRENTA A CACSOL','9654-1470','BODEGA EMANUEL','1','15.7871833333333','-86.7905683333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15366','DILCIA YOLANDA REYES ANTUNEZ','GUANAJA ISLAS DE LA BAHIA EN EL CAYO FIRE POINT FRENTE REG DIOS','9875-6437','ALEJANDRA STORES','1','15.75199','-86.83765','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15367','ANGELICA MARIA LAMA HANDAL','BUENOS AIRES FRENTE A COTVE','9451-1521','DISTRIBUIDORA SAN JORGE S DE R. L.','1','15.7683366666666','-86.7701466666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15368','OSCAR ANDRES ROMERO MELGAR','PUERTO LEMPIRA','3156-7937','OSCAR ANDRES ROMERO MELGAR','1','15.7845116666666','-86.7929','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15369','DAMARIS IVETH RIVERA HERNANDEZ','RESIDENCIAL LAS COLINAS','9894-4806','DAMARIS IVETH RIVERA HERNANDEZ','1','15.787155','-86.79087','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15370','DORLY PONCE WELLY','CAUQUIRA CALLE PRINCIPAL AL FONDO ','9518-7685-99909409','PULPERIA LA BENDICION','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15372','DAYAN ARGENIS OLIVERA RODRIGUEZ','CARRETERA HACIA HOTEL PINARES P LEMPIRA','9743-0813/9649-3862','BODEGA EL AHORRO','1','15.7682849999999','-86.7700733333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15373','ROSA IDALIA ERAZO','CALLE PRINCIPAL HOTEL PINARES ','986-9620/88662902','VARIEDADES ROSITA','1','15.7680733333333','-86.7701933333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15374','MOISES GONZALES ORELLANA','AVE. P. CALLE HACIA EL HOTEL PINARES P LEMPIRA','9729-0197/3335-6513','VERDURAS MOISES','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15375','YENY PATRICIA HERNANDEZ JOAQUIN','B. CENTRO CALLE PRINCIPAL P LEMPIRA ','9569-7167/8763-6349','MEGA DISTRIBUIDORA EL BARATILLO','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15376','SHERLYN LIZBETH AMAYA RIVERA','CALLE PRINCIPAL  PUERTO LEMPIRA','8784-1918/8824-0242','ABARROTERIA EL JOMY','1','15.7520566666666','-86.8376716666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15377','EDGAR ALFREDO LOPEZ JAMEZ','PUERTO LEMPIRA 2 CALLE','8865-7983/9937-0448','MINI MERCADITO J Y D','1','15.76772','-86.7688666666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15378','CLAUDINA CALDERON PADILLA','CAUQUIRA CALLE PRINCIPAL FTE CASA TOMASA CALDERON','3235-5709/9829-1657','CLAUDINA CALDERON','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15379','WILSON ESTEBAN VALLADARES FLORES','CAUQUIRA CALLE PRINCIPAL','8831-6795/88219882','BODEGA GALO PULPERIA GALO N 1','1','15.7518616666666','-86.8376349999999','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15380','ENNA ISABEL CHEVERRIA CALDERON','CAUQUIRA CALLE PRINCIPAL  ','8906-8605/9920-6888','LUZ DE VIDA','1','15.7519949999999','-86.837675','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15382','ERICK ALFONSO WALDAN MENDOZA','PUERTO LEMPIRA B. EL PORVENIR#2','97451209','ERICK ALFONSO WALDAN MENDOZA','1','15.7794833333333','-86.7908','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15384','NORLY GALINDO HAYLOCK','COUQUIRA','32714693','NORLY GALINDO HAYLOCK','1','15.5167283333333','-86.233525','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15385','OSMAN ORLANDO NAJERA CONTRERAS','LA CEIBA A LA PAR DE CADECA','9552-7103','OSMAN ORLANDO NAJERA CONTRERAS','1','15.7880983333333','-86.7906483333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15388','GLADIS ARACELY GALVEZ VILLALOBOS','SAN JUAN PUEBLO CONTIGURO AL COMPADRE','33821370','SUPERMERCADO LA ECONOMICA','1','15.601347','-86.244169','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15394','ELISA WENDOLIN NUÑEZ CASTELLANOS','LA UNION DOS CUADRAS AL SUR DE LA ESCUELA ','0000-0000','ELISA WENDOLIN NUÑEZ CASTELLANOS','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15396','DENIS ALEXI URBINA GARCIA','JUTIAPA BARRIO EL CENTRO FRENTE AL PARQUE','0000-0000','DENIS ALEXI URBINA GARCIA','1','15.7426866666666','-86.5098766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15401','JOSE HUMBERTO HERRERA','PUERTO LEMPIRA FRENTE A HOTEL SOL','31519654','ALIMENTOS BULKA S DE R L ','0','15.7683066666666','-86.7700816666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15419','OSCAR IVAN FUNEZ PINEDA','CALLE PRINCIPAL CONTIGUO A LA POLICIA','9592-4780','MINI SUPER PINEDA','1','15.6218133333333','-86.2719766666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15420','MARTIN ALFARO MELGAR','BO EL COYOL ESQUINA OPUESTA DE LA CANCHITA SINTETICA','9730-3890','MERCADITO ASHEY','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15421','HECTOR VENTURA TORRES','SALIDA A SABA FRENTE AL REGISTRO NACIONAL DE LAS PERSONAS','9791-5429','SUPER TIENDA H. L. A.','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15422','JOSE ADALY CEDILLO MENDOZA','ALDEA GUAPINOL CALLE PRINCIPAL DOS CUADRAS DESPUES DEL CAMPO','9804-6015','MINI SUPER CEDILLO S. DE R. L.','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15092','EDRAS F.','SABA','97675747','MERCADITO RACHELL','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15093','ELIDA SUNILDA VILLEDA','SONAGUERA','24517499','MERCADITO ORESTE','0','15.7738186','-86.7979399','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15094','MAYRA','B EL CENTRO SONAGUERA','96534225','MERCADITO OLANCHANO','1','15.622434','-86.272826','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15095','GLORIA ARACELY CHINCHILLA','BRRO SUYAPA EDIFICIO PAIZ','95888578','MERCADITO OCOTEPEQUE','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15335','MARIBEL SANABRIA ARITA','BO. EL CENTRO FTE. A BCO. DAVIENDA SONAGUERA COLON','9487-7054','BODEGA LEANDRO','1','15.7677149999999','-86.7707583333333','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15336','MARCO ANTONIO RAMIREZ ROERO','MONTE PLACENTERO BO LA FUENTE ROATAN','2455-7224','COMERCIAL RAMIREZ S DE R.L.','1','15.7689837','-86.7702327','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15337','MARCO ANTONIO RAMIREZ ROMERO','COXEN HOLE ENTRADA A LOMA LINDA ROATAN ISLAS DE LA BAHIA','2455-7224','COMERCIAL RAMIREZ S DE R.L ( 2)','1','15.7689837','-86.7702327','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15341','MARLON ALEXI BARDALES ','BO. LAS ISLAS   CERCA DEL ESTADIO   FTE AL ','2449-0639','INVERSIONES LAS 24 HORAS   S DE R.L.','1','15.7682395','-86.769874','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15342','SAMIR ALBERTO LOPEZ GARCIA','SANTA FE JUTIAPA PASANDO EL PUENTE','99339254','PULPERIA SOFIA','1','15.66128','-86.4540066666666','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15343','CARLOS AGUSTO AMENDOLA CUADRA','BARRIO LOS FUERTES ADELANTE DE LA GASOLINERA V.I.P','99805559','BODEGA LA SOLUCION','1','15.7682367','-86.7698814','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15344','CARLOS HERNAN DUBON ','ROATAN ISLAS DE LA BAHIA COREN HOLE','96322204','INVERSIONES DUBON ','0','15.7424934','-86.5162779','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15276','MARYULIETH STEFANI ROMERO ELVIR','BO. LA JULIA AVE.JUAN RAMON MOLINA  2DA CASA  DE ESQUINA DE PULP BRENDA','9636-6585','JEHOVA NISSI','0','15.7876191','-86.7912148','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15279','JUAN ANGEL VARGAS FUNEZ','COL. SUYAPA CALLE PRINCIPAL 1ER ANTES DEL A ESCUELA','98634384','PULPERIA LA ECONOMICA','1','15.7682395','-86.769874','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15280','CARLOS RENELIO REYES ANTUNEZ','COL. MIRAMAR CALLE PRINCIPAL CONTIGUO A PULP. PATY','98760034','BODEGA REYES','0','15.7684822','-86.7701256','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15281','GREICY NABILA MOREL PAZ','MERCADO POTRERITO FRENTE A DIPROVAR','8812-1490','BOGUITA BASSAN','1','15.787307','-86.791265','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15282','OSCAR IVAN FUNEZ PINEDA','TOMALA   JUTICALPA   1 ER CALLE ANTES DEL CAMPO FUTBOL','9908-6087','BODEGUITA FUNEZ','1','15.7738208','-86.7980156','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15283','ERIKA LIBETH MEZA REYEZ','COL. CASA BLANCA  ULTIMA CALLE DEL FONDO   LA CEIBA','9790-2200','BODEGUITA MESA','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15284','ROSMAN MODESTO RIVERA MARTINEZ','BO. POTRERILLOS  CALLE PRINCIPAL   FTE. A BODEGA  DIPROVA','3294-5934','ABARROTERIA CANAAN','0','15.7880051','-86.7892953','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15318','MANUEL ALEJANDRO BANEGAS FLETES','JUTIAPA  EN EL COLEGIO REP. DE VENEZUELA  BO LEMIRAS ATRAS DE PULP. LA TRINIDAD   ','9642-0687','MANUEL ALEJANDRO BANEGAS FLETES','0','15.7689837','-86.7702327','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15322','HOMERO EMILIO QUIÃ‘ONEZ ZELAYA','COLONIA TOROJAL. BLOQUE 2 CASA 2 LA CEIBA ATLANTIDA','9964-8650','STORE MARK','1','15.7682395','-86.769874','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15323','HOMER EMILIO QUIÃ‘ONEZ ZELAYA','EL PINO CARRETERA CA 13 LA CEIBA ATLANTIDA','9964-8650','SERVICENTRO DIPPSA EL PINO','1','15.7097843','-86.9182031','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15324','HOMER EMILIO QUIÃ‘ONEZ ZELAYA','COLONIA EL TOROJANL BLOQUE 2 CASA 14 LA CEIBA ATLNTIDA','9964-8650','SERVICENTRO PALMERAS','1','15.7874072','-86.7907171','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15325','HOMER EMILIO QUIÃ‘ONEZ ZELAAYA','COLONIA TOROJAL BLOQUE 2 CASA 14','9964-8650','SERVICENTRO RIO MARIA','1','15.7873864','-86.7907817','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15424','BRYAN GEOVANY MEDINA SANCHEZ','COL LAS DELICIAS CA13 A LA PAR DE FERROMACO','8775-6229','PULPERIA EMANUEL','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15429','ELVIA TRINIDAD PACHECO BENITES','BO EL CENTRO CALLE PRINCIPAL DE PALMIRA CENTRO','9443-2280','SUPER TIENDAS PALMIRA S. DE R. L. DE C. V.','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15430','DUNIA XIOMARA GUERRERO DIAZ','CALLE CA13 DE LAS DELICIAS FRENTE A ADAMAR','3335-8628','PULPERIA GUERRERO','1','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15166','NAHUN CHAVARRIA','BARRIO EL CHORRITO  SABA','99436935','BODEGA CHAVARRIA # 2','0','15.7739814','-86.7979182','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15167','YOLANDA LOPEZ','CALLE CA-13 SAN JUAN PUEBLO','96584216','S/M LOPEZ','0','15.7692012','-86.770457','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'15188','RENE GALDAMEZ','SANDY BEE ROATAN','97817861','RENE GALDAMEZ','0','0','0','484');
INSERT INTO Clientes_impulsadoras VALUES(0,'22015','JOSUE DAVID FLORES','SAN PEDRO SULA','0000-0000','JOSUE DAVID FLORES','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'22017','ARNOLD IVAN PEÑA AGUILAR','SAN PEDRO SULA','0000-0000','ARNOLD IVAN PEÑA AGUILAR','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'7904','N/A','SAN PEDRO SULA OFICINA BOCADELI ','0000-0000','N/A','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900886','PUMA YOJOA','SANTA BARBARASANTA CRUZ SANTA CRUZ  RECTA YOJOA KM 53','26082926','SERVI2000 S. DE R.L.','1','15.0750266666666','-87.9289316666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900888','BOCADELI DE HONDURAS S.A.','DIRECCIONES VARIAS','0000-0000','CONSUMIDOR FINAL','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900895','ALEX HANDAL','SAN PEDRO SULA SAN PEDRO SULA  COLONIA JARDINES DEL VALLE CUARTA ETAPA 5 CUADRAS AL OESTE DE LA MORGUE BOULEVARD LAS TORRES','98349140','MINI SUPER LAS TORRES','1','15.5374666666666','-88.0267616666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900902','ANA AYALA','SAN PEDRO SULA  TERMINAL DE BUSES SEGUNDO NIVEL FRENTE A TIENDA VIANCA','25162115','METRO MART','1','15.4719283333333','-88.032275','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900903','FANNY GOMEZ','SAN PEDRO SULA SAN PEDRO SULA  TERMINAL DE BUSES TERCER NIVEL BUSES TEGUCIGALPA','99649410','SULTANA EXPRES','1','15.472207','-88.032137','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900904','LUCINDA DIAZ','SPSSAN PEDRO SULA SAN PEDRO SULA  TERMINAL DE BUSES TERCER NIVEL BUSES OCCIDENTE Y COMAYAGUA','99358105','GLACE LATTE','1','15.472261','-88.030462','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900905','MAIRA LOURDES BAUTISTA','SAN PEDRO SULA SAN PEDRO SULA  TERMINAL DE BUSES TERCER NIVEL ANDEN DEL 27 AL 29 FRENTE A TIENDAS MARLENS','97104422','REPOSTERIA ANDREAS','1','15.47303','-88.0304666666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900906','KIMBERLI ROMANS','SAN PEDRO SULA SAN PEDRO SULA  TERMINAL DE BUSES TERCER NIVEL ANDEN DEL 27 AL 29 VILLANUEVAS Y POTRERILLOS','32307703','ROMANS SNACK','1','15.494165','-88.033917','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900907','LEONARDO DIAZ','SPSSAN PEDRO SULA SAN PEDRO SULA  6TA AVENI ENTRE 4 Y 5 CALLE','25162065','INVERSIONES LA LIBERTAD','1','15.4729766666666','-88.030365','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900910','MARYURI SUAZO','SPSSAN PEDRO SULA SAN PEDRO SULA  BARRIO CONCEPCION 5 Y 6 CALLE 2DA AVE','25520255','SUPERMERCADO LA ROCA','1','15.5013333333333','-88.0225683333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900912','NEPTALI HERNANDEZ','SPSSAN PEDRO SULA SAN PEDRO SULA  COLONIA SANTA MARIA 27 CALLE S.E. DESPUES DE LA CENTRAL DE ABASTOS','55921577','TIENDA UNO LOS ZORZALES','1','15.477847','-87.999052','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900914','TEXACO','CORTESSAN PEDRO SULA CHOLOMA  GASOLINERA TEXACO KM 8 CARRETERA HACIA PUERTO CORTES CHOLOMA','26691049','DIPRO ALCO','1','15.6096083333333','-87.9569533333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900915','AMALIA HERNANDEZ','SANTA BARBARAQUIMISTAN QUIMISTAN  BARRIO NUEVA ESPERANZA KILOMETRO 51 FRENTE A CARRETERIA INTERNACIONAL','99595164','TIENDA DE CONVENIENCIA PUMA QUIMISTAN','1','15.3388166666666','-88.404455','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900921','ANDREA PENA','SANTA BARBARANACO SANTA BARBARA  NACO UNO BELLA VISTA NACO SANTA BARBARA CONTIGO A LEAR CORPORACION','26251602','INVERSIONES LIA S DE RL DE CV','1','15.3663999999999','-88.1896116666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900929','ANTONIA DEL CARMEN INTERIANO','SANTA BARBARASANTA BARBARA TRINIDAD  TRINIDAD SANTA BARBARA  CARRETERA HACIA SANTA BARBARA ENTRADA PRINCIPAL A TRINIDAD  GASOLINERA UNO','98607709','ESTACION DE SERVICIOS GLORIA','1','15.442335','-88.020275','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900931','VICTOR ARITA','SANTA BARBARAQUIMISTAN SAN MARCOS  KM 54 CARRETERA HACIA OCCIDENTE DESVIO A SAN MARCOS SANTA BARBARA','31770625','INVESTMENT S.A. DE C.V.','1','15.317991','-88.42742','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900932','ROGER ORDONEZ','SANTA BARBARAQUIMISTAN QUIMISTAN  CARRETERA A OCCIDENTE GASOLINERA UNO QUIMISTAN ENTRADA PRINCIPAL','96210608','ESTACION DE SERVICIOS UNO','1','15.340543','-88.399454','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900933','DENIS OMAR AYALA','SANTA BARBARAQUIMISTAN QUIMISTAN  BARRIO EL CENTRO CUADRA Y MEDIA AL NORTE DEL PARQUE CENTRAL','26518165','SUPERMERCADO COQUIN','1','15.34851','-88.4030866666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900934','LORENA AYALA','SANTA BARBARAQUIMISTAN QUIMISTAN  BARRIO TIERRA BLANCA CALLE PRINCIPAL SALIDA A PINALEJOS SANTA BARBARA','26598103','SUPERMERCADO ALEGRIA S. DE R. L.','1','15.354429','-88.400536','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900935','MARTHA AYALA','SANTA BARBARACEIBITA SAN PEDRO SULA  CEIBITA  TEXACO LA CEIBITA CARRETERA A OCCIDENTE','99162187','TEXACO SANTA MARTHA','1','15.313357','-88.251609','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900940','DENIS BANEGAS','SAN PEDRO SULA SAN PEDRO SULA  RESIDENCIAL SANTA MONICA ENTRADA PRINCIPAL','99894354','MINI SUPER CHOMBO','1','15.55487','-88.0001816666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900941','ELDER GOMEZ','SANTA BARBARALA FLECHA SANTA BARBARA  LA FLECHA  BARRIO EL CIRUELO  CALLE PRINCIPAL','97663390','PULPERIA UNA FICHA MENOS','1','15.293617','-88.500163','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900944','JAKELINE PORTILLO','SPSSAN PEDRO SULA SAN PEDRO SULA  COL. VILLA ERNESTINA 27 CALLE CONTIGUO CENTRAL DE ABASTOS','25992866','SERVICIOS Y PRODUCTOS MULTIPLES DE HONDURAS TEXACO CENTRAL DE ABASTOS','1','15.4784816666666','-87.9969','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900945','DENIS VALDES','SPSSAN PEDRO SULA SAN PEDRO SULA  GASOLINERA ENTRADA PRINCIPAL COL PLANETA','89597958','STARMART BUENOS AIRES','1','15.458207','-87.952781','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900948','BLANCA IRIAS','SPSLA LIMA LA LIMA  CALLE PRINCIPAL CONTIGUO HOSPITAL MEDICAL CENTER COL LA PAZ LA LIMA','99912403','INVERSIONES I Y J GASOLINERA UNO LA LIMA','1','15.436046','-87.912483','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900954','MARIA A FERNANDEZ','SAN PEDRO SULA SAN PEDRO SULA  BOULEVAR SALIDA A PUERTO CORTES 500 MTS DESPUES DEL PEAJE DEL NORTE','98912805','STORE`S MARY','0','15.561846','-87.979743','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900962','JUAN ANTONIO BENDEC','SANTA RITA PROGRESO EL PROGRESO  BARRIO SAN JOSE 9 AVE 12 CALLE NORTE CONTIGUO A TELE PROGRESO','26474949','TIENDA B24 S DE R.L.','1','15.4091483333333','-87.80504','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900965','MAYRA ESTRADA','BO. VENECIA 300 METROS ADELANTE DE LA POSTA POLICIAL','2448-5425','HOTEL Y RESTAURANTE VENECIA S. DE R. L. DE C.V.','1','15.7596583333333','-87.4863416666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900968','KATY MENDOZA','TELATELA TELA  COLONIA LAS BRISAS CALLE PRINCIPAL TELA ATLANTIDA','24488342','MINISUPER YASTIN','1','15.7746566666666','-87.4739233333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900969','WILMER CHONG','TELATELA TELA  CALLE PRINCIPAL DEL COMERCIO FRENTE A BANPAIS','24483213','ABARROTERIA CHONG','1','15.7814649999999','-87.453875','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'900972','ALEX CASTRO','TELATELA TELA  ENTRADA PRINCIPA DE TELA  CONTIGUO A GASOLINERA PUMA','0000-0000','POLLOS TROPICAL AL CARBON','1','15.7733983333333','-87.4479633333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'901869','CARLOS CASTILLO','SAN PEDRO SULA SAN PEDRO SULA  21 CALLE 20 Y 23 AVE SO LAS MESETAS SPS','25567253','SUPER MART S.DE R.L. DE C.V.','1','15.4891466666666','-88.04114','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904372','MILO MUNGUIA','CORTESCUYAMEL OMOA  CUYAMEL  CALLE PRINCIPAL DE CUYAMEL','26602353','SUPERMERCADO ECONOMAX','1','15.6599816666666','-88.1998283333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904376','JAIME FERNANDEZ','SANTA BARBARASANTA CRUZ SANTA CRUZ DE YOJOA  RECTA DE YOJOA CARRETERA PANAMERICANA GASOLINERA UNO 500 MTS ANTES DEL PEAJE','25527508','MINI MARKET JAMIES CORNE S DE RL','1','15.036315','-87.9282299999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904377','MARIANELA FERNANDEZ','SANTA BARBARASANTA CRUZ SANTA CRUZ DE YOJOA  DE YOJOA  GASOLINERA UNO LA BARCA CONTIGUO A POSTA POLICIAL','0000-0000','GASOLINERA UNO LA BARCA','1','15.1072316666666','-87.9302183333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904381','RODOLFO FERNANDEZ','SANTA BARBARASAN FRANCISCO DE YOJOA SAN FRANCISCO DE YOJOA  RIO LINDO  BARRIO EL CENTRO CALLE PRINCIPAL RIO LINDO','26504164','RODOLFO FERNANDEZ','1','15.046523','-87.986654','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904443','ANGEL MEZA','SANTA BARBARASAN FRANCISCO DE YOJOA SANTA CRUZ DE YOJOA  PENA BLANCA  CARRETERA HACIA EL MOCHITO','32594575','MINI SUPER LA FAMILIA S. DE R.L. DE C.V.','1','14.96675','-88.0256633333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904451','ELMER QUIROZ','CORTESSAN PEDRO SULA SAN PEDRO SULA  BO EL PORVENIR CALLE PRINCIPAL FTE COMER SOSA','26656489','SUPERMERCADO OCOTEPEQUE S. DE R.L. DE C.V.','0','15.647387','-87.613461','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904455','DINORA LIZETH ZELAYA','CORTESOMOA OMOA  PUERTO CORTES ENTRADA PRINCIPAL','26589138','MINI SUPER DINORA','1','15.7744449999999','-88.0374616666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904456','HERNAN WILFREDO SANTOS','CORTESCUYAMEL OMOA  CUYAMEL  BARRIO LEMPIRA CALLE PRINCIPAL FRENTE A FERRETERIA CRUZ CUYAMEL','32349704','ABARROTERIA MI PUEBLO SUPER MARKET','1','15.659466','-88.195153','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904457','ISAI RODRIGUEZ','CORTESCUYAMEL OMOA  CUYAMEL  BARRIO EL CENTRO CUYAMEL FRENTE AL PARQUE CENTRAL','31340611','PULPERIA RODRIGUEZ','1','15.6600016666666','-88.1997399999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904463','LINDA MEJIA','TELATELA TELA  BARRIO HIGH LAND CREEK CARRETERA DE TELA A LA CEIBA','24483364','ENSENADA SMART S. DE R.L. DE C.V.','1','15.7807883333333','-87.4370883333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904894','ROMAN PAREDES','SANTA BARBARASANTA BARBARA TRINIDAD  CARRETERA HACIA SAN PEDRO SULA  CALLE PRINCIPAL FRENTE COL.','2657-1128','INVERSIONES TRINITECA S. DE R. L.','1','15.1404083333333','-88.23906','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905237','MELIDA LEYVA','SPSSAN PEDRO SULA 27 CALLE   COLONIA CIUDAD NUEVA SAN PEDRO SULA','22598715','ABARROTERIA Y FERRETERIA CIUDAD NUEVA','1','15.4771649999999','-87.9880216666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905239','HILDA MARGARITA RAMIREZ','SAN PEDRO SULA TERMINAL DE BUSES SPS CUARTO NIVLE BUSES OCCIDENTE COMAYAGUA','98218083','ATENCIONES SUANY','1','15.4731983333333','-88.0309016666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905547','GABRIEL RODOLFO MATUTY REINA','PUNTO FARMA BERMEJO BOULEVAR DEL NORTE FRENTE A HIPER ANTORCHA','2280-8898','PHARMA INVESTMENTS SA DE CV','0','15.541764','-88.026063','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905548','GABRIEL RODOLFO MATUTY REINA','SPSSAN PEDRO SULA PUNTO FARMA JARDINES DEL VALLE 100 METROS AL OESTE DEL MALL GALERIAS','2280-8898','PHARMA INVESTMENTS SA DE CV','1','15.529698','-88.032557','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905886','SELVIN MICHELY MARTINEZ','SANTA RITA SANTA RITA SANTA RITA CALLE DEL COMERCIO PRINCIPAL 1 CUADRA AL OESTE DE SUPERMERCADO LA DESPENSA FAMILIAR','9934-9469','MINI SUPER EL EXITO','1','15.442169','-88.020407','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'906990','MARIO NUNEZ','SPSSAN PEDRO SULA COLONIA SATELITE BOULEVAR LAS TORRES','0000-0000','SUPERMERCADO SATELITE S.A','1','15.494105','-88.033955','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908000','OMAR MEJIA','SANTA CRUZSANTA CRUZ SANTA CRUZ DE YOJOA CALLE DEL BOULEVAR RECTA','98060062','TURICENTRO BELLA SOSOA','1','15.080281','-87.930067','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908004','SUPER 7 EXPRESS DEL SUR','SAN PEDRO SULA BLVD DEL SUR KM9 SALIDA A OCCIDENTE','0000-0000','GRUPO C Y L S.A DE C.V','1','15.563267','-87.999725','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908086','JUAN ROMAN','SANTA BARBARALA FLECHA LA FLECHA CARRETERA DE OCCIDENTE','98555956','REPOSTERIA LA CABANA','1','15.44213','-88.020447','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908116','DANIEL CHINCHILLA','SAN PEDRO SULA COLONIA VILLA EUGENIA 14 ACLLE  Y  EL NÂº 2 01 CALLE DOS CUADRAS AL OESTE DEL PARQUE CENTRAL SAN PEDRO SULA','25100918','INVERSIONES ZITO S DE RL DE CV','1','15.4913316666666','-88.0054066666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908118','GASOLINERA NASCAR','SANTA BARBARASANTA BARBARA DESVIO A SAN LUIS GASOLINERA PUMA','9509-8908','INVERSIONES LECOR','1','15.563232','-87.999787','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908478','KATERINE ORELLANA','SANTA BARBARACOL. SUYAPA','2643-2417','SUPERMERCADO LA COLMENA','1','15.534394','-88.019108','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908777','FLOR ARGUETA','TELATELA CARRETERA PROGRESO-TELA  TOYOS GUAYMAS','2625-6748','GASOLINERA TOYOS','0','15.535226','-87.652555','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908778','BRENDA FONSECA','GRAN TERMINAL DE BUSES','0000-0000','DIANA EXPRESS','1','14.748497','-88.195072','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908779','DANIEL NUNEZ','SAN PEDRO SULAGRAN CENTRAL METROPOLINA','9748-8640','SNACKS COPORACION NUNES COTO','1','15.472745','-88.0303466666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908783','GABRIEL RODOLFO MATUTY REINA','CORTESOMOA PUERTO CORTES HOSPITAL  SEMECO CALLE DEL ESTADIO EXCELSIOR','2280-8898','PHARMA INVESTMENTS SA DE CV','1','15.442115','-88.020454','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908798','JERRY AGUILUZ','TELABARRIO LOS PROFESORA  CALLE PRINCIPAL ZONA VIVA','8789-9171','INVERSIONES AGUILUZ','1','15.7805283333333','-87.4564133333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908799','JAIME VIDAL HERNANDEZ','VILLANUEVABARRIO MANUEL BONILLA  ORILLA CARRETERA HACIA TEGUCIGALPA','2670-5234','TIENDA DE CONVENIENCIA LA AMISTAD','0','15.314083','-87.99027','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908801','SUPER EL EXITO S DE R.L. DE C.V.','AGUA BCA SUR CALLE PRINCIPAL A LA PARA DE OSORIO','2560-0133','SUPER EL EXITO S DE R.L. DE C.V.','1','15.2445866666666','-87.8786466666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908803','ROGER JAHIR SANTOS','SANTA BARBARAFRENTE A LA CARRETERA DE OCCIDENTE  KM 71','9661/6717','TEXACO EL VIRREY','1','15.263561','-88.540098','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908806','MARCO TULIO ESPINOZA','CORTESBARRIO LAS FLORES','2658-9257','ABARROTERIA LAS FLORES S DE R.L. DE CV','0','15.7745183333333','-88.0374449999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908807','JIMMY CALDERON','SPSBARRIO EL CENTRO LA LIMA','2668-1748','VARIEDADES EL BARATILLO  S DE R.L. DE C.V','0','15.438958','-87.926574','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908809','WALTER ARAGON','SAN PEDRO SULA GRAN TERMINAL DE BUSES','9842-5172','REY EXPRESS','1','14.768855','-88.331449','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908820','ROY CROASDAILE','CORTES BOULEVAR SALIDA A SAN PEDRO SULA  PTO CORTES','3176-9558','SERVICENTRO EL PORVENIR PUMA PUEBLONUEVO','1','15.828621','-87.922623','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908832','ROY EDUARDO CROASDAILE','CARRETERA CA-13 CUYAMEL','2665-0261','SERVICENTRO EL PORVENIR PUMA CUYAMEL','1','15.658785','-88.1857516666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'908853','MANUEL PORTILLO','JARDINES DEL VALLE  4TA ETAPA 8 CALLE  3 AVE','3190-5837','GRUPO PORTILLO COMERCIAL S DE RL DE CV','1','15.5346883333333','-88.0311883333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909307','EBLIN ORTIZ','CORTESBARRIO CIENEGUITA  CALLE PRINCIPAL  PUERTO CORTES  HONDURAS','3252-1463','INVERSIONES MAROT  S. DE R. L.','1','15.8049283333333','-87.9479866666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909316','KEVIN ENAMORADO','SPSBOULEVAR DEL ESTE CONTIGUO A AGUA VIVA','9586-7658','SERPROMU','1','15.4121449999999','-87.8713083333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909317','OMAR ORDONEZ PORTILLO','SANTA BARBARACARRETERA DE OCCIDENTE KM 20','99063015','GASOLINERA PUMA NACO','1','15.383655','-88.1821066666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909319','FANNY BENAVIDES','SANTA BARBARAEL CIRUELO CALLE PRINCIPAL','0000-0000','MINI SUPER LA CABANA','1','15.2937133333333','-88.507545','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909320','MAGDA PORTILLO','SANTA BARBARAFRENTE AL PARQUE','97151985','ABARROTERIA BAPORTI','1','15.3426399999999','-88.5520533333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909321','ADALID GUARDADO','SANTA BARBARAMEDIA CUADRA ARRIBA DEL PARQUE','0000-0000','PULPERIA LENIN','1','15.341624','-88.552632','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909370','OSCAR REYES','SANTA BARBARAPENA BLANCA CALLE PRINCIPAL','0000-0000','MINI SUPER CHIQUI','1','14.704335','-88.203999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918845','JARED PAZ RAMOS','STA BARBARA','96793542','BALNEARIO SANTA LUCIA','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918846','ANA PAZ ORELLANA','STA BARBARA','95140835','INVERSIONES PAZ','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918847','NORMA LILIAN UMANZOR','NACO CORTES','99337482','CAFETERIA LENOR','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918848','DANIELA AGUILAR','LA FLECHA GASOLINERA CALLE PRINCIPAL','25598324','TIENDA DE CONVENIENCIA LA FLECHA','1','15.2917716666666','-88.4936183333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918849','MILAM','TELA','93302510','SUPERMERCADO MILAM','1','15.7768966666666','-87.4700766666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918850','MARYURI SUAZO','COL. SAN CARLOS DE SULA 11 Y 12 CALLE 2DO ANILLO DE CIRCUNVALACION','25520255','SUPERMERCADO LA ROCA #2','1','15.5014799999999','-88.0222966666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918852','CAROLINA SAGASTUME','1/2 CUADRA DEL PARQUE DE TRINIDAD STB','9489-9217','CONFITERIA Y BODEGA CAROLINA','1','15.1429099999999','-88.2339866666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'918856','INVERMETN','EL PROGRESO','22808867','PHARMA IVERMENT SA DE CV','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'919033','RAQUEL RAUDALES','CUYAMEL  BO. AZUL Y BLANCO','33261006','COMERCIAL E INVERSIONES LA BENDICION','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'919034','JOSE CASTEJON','NACO CORTES','98018575','CAFETERIA AZUP','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'919219','WILIAN BUEZO','TERMINAL DE BUSES SAN PEDRO SULA','8844-9283','INVERSIONES GENOVEVA','1','15.4727083333333','-88.03034','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920181','E.A.C.P. BIENVENIDO','BARACOA KM2','98200505','SUPERMERCADO BIENVENIDO','1','15.7649066666666','-87.8359316666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920265','AMART','CARRETERA CA-5 SECTOR EL MILAGRO','9800-5216','AMART S. DE R.L. DE C.V.','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920269','RUBEN JAVIER CRUZ','CAMPANA A ORILLA DE BOULEVAR','96305419','MINI SUPER AUTOPISTA','1','15.8075499999999','-87.8502433333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920530','JUDILINN CANTARERO','CARRETERA CA-4 SULA SANTA BARBARA','0000-0000','BODEGA KARLITA','0','15.2482716666666','-88.5562083333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920531','LIZZETH CRUZ','TELA FRENTE A TERMINAL DE BUSES URBANOS DE LA PLAYA','2448-3013','ABARROTERIA Y VARIDADES SANCHEZ','1','15.7854633333333','-87.4503533333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920533','MERLIN BENITEZ','BARRIO EL PORVENIR FRENTE A HOSPITAL PUBLICO','9659-0815','INVERSIONES Y SERVICIOS MULTIPLES ALOHA','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920534','RAUL ALFONSO ORTEGA','PINALEJO BARRIO TEJERAS SALIDA AL SITIO','2659-9250','ABARROTERIA AQUI ME QUEDO','1','15.3920149999999','-88.3932633333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920540','GASOLINERA NASCAR','NUEVA CARRETERA A SAN MANUEL GASOLINERA PUMA','9509-8908','INVERCIONES LECOR','1','15.3180749999999','-87.9799766666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911559','ANTONIO SAPSON','SANTA MONICA','95316188','PULPERIA DANIELA','1','15.5609416666666','-88.0006749999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911560','ARNOL GARCIA','SAN PEDRO SULA SANTA MONICA','88147691','MINI MARKET','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911561','MIGUEL LEIVA','SAN PEDRO SULA SANTA MONICA','99888138','MINI SUPER YENY','1','15.5631166666666','-87.99969','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912212','LIZETH TOLEDO','7 AVE 9 Y 10 CALLE','25650930','COOPERATIVO SITRAENP','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912216','YOLANDA RODIGUEZ PAZ','CALLE PRINCIPAL A TELA  PAGUILES','98981864','MINI SUPER LOS PINOS','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912332','ONDINA PADILLA ORELLANA','LAS MINAS EL MOCHITO','97502128','JUNTA DE FOMENTO # 3','1','14.8643166666666','-88.0790333333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912333','ERICK OTONIEL MEJIA','CALLE PRINCIPAL A LA ORILLA','0000-0000','ABARROTERIA GOSEN','1','15.4399883333333','-87.92721','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912454','NELSON OSORIO MONTENEGRO','AGUA BLANCA  BARRIO EL CENTRO','95377835','ABARROTERIA OSORIO','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912456','BAYRON JOSUE SAGASTUME MADRID','BARRIO LAS GALERAS  1 CUADRA ANTES DE PARQUE INFANTIL','9541-0672','MINI MARKET ISIS # 2','1','14.9372316666666','-88.24009','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912457','EMMA FLORES','PARADA DE BUSES CALLE PRINCIPAL','96277786','PULPERIA EMMA','1','15.4063533333333','-88.1470899999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920541','MERCEDES RIVERA','COLONIA SATELITE CUARTA ETAPA FRENTE A CARWASH','2560-0133','SUPER EL EXITO S DE RL DE CV','1','15.4934533333333','-87.9872999999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920542','HERNAN WILFREDO SANTOS','CUYAMELITO CALLE PRINCIPAL A ORILLA DE CARRETERA','3234-9704','ABARROTERIA MI PUEBLO SUPER MARKET','1','15.6356366666666','-88.2401033333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920544','MADAY SALDIVAR','COL SANDOVAL CALLE PRINCIPAL','9350-1438','LACTEOS MORALES','0','15.4823733333333','-87.9887066666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920545','DANIEL CHINCHILLA','COL JARDINES DEL VALLE','2510-0918','INVERCIONES ZITO S DE RL DE CV','1','15.4894083333333','-88.0408216666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920558','ANGIE PINEDA','DESVIO A SAN LUIS STS.','94974785','PULPERIA Y COMEDOR ANGIE','1','15.183535','-88.275545','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920559','JACKELINE RODRIGUEZ','SATELITE BOULEVAR LAS TORRES','88697442','M/S FOREVER','0','15.34874','-88.40319','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920566','RICARDO RIVERA','COLONIA VILLA DEL SOL CARRETERA SAN MANUEL','8903-7594','QUICK MARKET','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920567','ALBERTO PAZ','FRENTE A BANCO BANCAFEH','3282-7002','LACTEOS EL FENIX','1','15.1978983333333','-87.8809566666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920568','INGRIS FERNANDEZ','BOULEVAR MACKAY CENTRO COMERCIAL ECOPLAZA LOCAL #4 Y 5','2569-9747','INVERSIONES COLETTE','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912460','GABRIEL RODOLFO MATUTY REINA','PLAZA UNIVERSIDAD  CALLE AL PLAYON','0000-0000','PHARMA INVESTMENTS SA DE CV','1','15.5297716666666','-88.0328233333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912461','GUILLERMO GARCIA','BARRIO LAS ACACIAS  6 AVE  9 CALLE','2561-4748','SUPERMERCADO LA ECONOMICA S.A DE C.V','1','15.5135516666666','-88.025175','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912462','HOTEL YHOTEL Y RESTAURANTE SULA INN S DE R.L.','FRENTE CARRETERA INTERNACIONAL KM 72 # 21 SULA','2657-4158','HOTEL Y RESTAURANTE SULA INN S DE R.L.','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912464','MELVIN MEJIA','BARRIO SAN JUAN  LAS VEGAS','95848955','JUNTA DE FOMENTO # 2','1','14.8694466666666','-88.080905','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912465','LUIS ALONZO RODRIGUEZ','BARRIO LA CURVA  KILOMETRO 1  CARRETERA A TICAMAYA','26690840','SUPERMERCADO LA GRAN VILLA','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912512','NOHELIA SAGASTUME','BARRIO EL CENTRO  1/2 CUADRA DEL PARQUE CENTRAL','9826-1310','ABARROTERIA LA OFERTA','1','15.3471083333333','-88.4036799999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912513','SUPER EXCEL S DE R.L','EL CONEJO CALLE PRINCIPAL','2643-2444','SUPER EXCEL S DE R.L','1','14.9205733333333','-88.2418133333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912552','HENRRY ENEL GARCIA CRUZ','RES.LA PERLA BLOQUE W CASA #30','0000-0000','SUPERMERCADO LA PERLA','1','15.3788','-87.80411','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912672','NORMA RAPALO','FABRICA GREEN VALEY','99531493','INVERSIONES RAPALO ROMERO','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920571','INVERSIONES PASCUA PINEDA S. DE R.L DE C.V.','TRINIDAD SANTA BARBARA BARRIO EL CENTRO FRENTE A COMERCIAL LAS AMERICAS','9729-6352','MARKET LA CANASTA DEL AHORRO','1','15.14122','-88.234318','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920849','ELIA SANCHEZ','CALLE PRICIPAL  CALLE NUEVA','9840-7359','PULPERIA EL PASO','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920850','CLAUDIA CASTELLANOS','BARRIO MONTE VIDEO  FRENTE A DISTRIBUIDORA MARTINEZ','9714-4266','BODEGA MI SOL','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920851','ADA MARIELA ALVARADO','TERMINAL DE CENTRAL DE BUSES','9489-4376','INVERSIONES ALVARADO','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920930','MARIA RAMOS','PAJUILES CALLE PRINCIPAL','0000-0000','PULPERIA BRAYAN','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920931','MEJIA','EL MOCHO ARRIBA FRENTE A OFICINA DE JUNTA DE FOMENTO','9642-6207','PULPERIA BEATRIZ MEJIA','1','14.854645','-88.0814616666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920932','JESUS CANTINANO','EL MOCHITO  ARRIBA CONTIGUO A OFICINAS DE JUNTA DE FOMENTO','9862-1879','PULPERIA JESUS','1','14.85444','-88.0817033333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920933','JOSE ENAMORADO','EL MOCHITO ARRIBA CONTIGUO A ESCUELA MIGUEL PAZ BARAHONA','9743-9269','PULPERIA EMILI','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920934','MAXIMO VARGAS','BO. MONTE VIDEO 6 CALLE ZONA NORTE FRENTE A BANCO ATLANTIDAD','9539-8427','ABARROTERIA Y CONFITERIA MAX','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'920935','JOSE SANTOS UMANZOR','BO. MONTE VIDEO 4 CALLE 4Y 5 AVE','0000-0000','BODEGA UMANZOR E HIJOS','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921201','ROSA PINEDA','OMOA  CORTES  BO. EL CENTRO ','9775-5614','PULPERIA ROSITA','1','15.7740716666666','-88.0354766666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921268','JUAN SANCHEZ','CIUDAD NUEVA. CONTIGUO A SUPERFERRETERO','9950-3577','ABARROTERIA ARIES','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921300','TERESA PACHECO','BO. EL CENTRO UNA CUADRA AL SUR DE LA MUNICIPALIDAD DE QUIMISTAN','9910-3535','LACTEOS PACHECO','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921301','PATRICIA CHAVEZ','COL. EL SAUCE CARRETERA CA-13 FRENTE A GASOLINERA TEXACO ALEROS','3206-4157','NOYSITAS CAFFEE S. DE R.L. DE C.V.','1','15.7645483333333','-87.47524','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921307','ROSA RAPALO','CIUDAD NUEVA CALLE PRINCIPAL','9522-1720','MERCADITO ROSI','0','15.47663','-87.9879983333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921627','INVERSIONES ZITO  DE R.L. C.V.','BOULEVARD MACKEY','510-0918','INVERSIONES ZITO  DE R.L. C.V.','1','15.543595','-88.0329466666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921628','EVER ONAN PEREZ','MACUELIZO SANTA BARBARA','9891-22-37','ABARROTERIA ONAN','0','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921629','RONALD JOSUE MEJIA PAZ','BARRIO CONCHAGUA','9822-5859','PULPERIA LA BENDICION','1','15.310175','-88.5421333333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921685','LUIS ENRIQUE ARAUJO CERRATO','BO. MANUEL BONILLA  3-4 AVE. CONTIGUO A ESCUELA BONILLA','2670-5234','CIRCLE K VILLANUEVA','1','15.31386','-87.99022','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921978','GUILLERMO AFIF HANDAL','GRAN CENTRAL METROPOLITANA  SAN PEDRO SULA','2566-4647','SUPERMERCADO LA ANTORCHA S.A.','1','15.4721983333333','-88.0326149999999','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'921979','GUILLERMO AFIF HANDAL','EL PROGRESO  BO. EL CENTRO  ','2566-4647','SUPERMERCADO LA ANTORCHA S.A.','1','15.4011283333333','-87.8083933333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'922069','CARLOS RAMON DUBON FUENTES','LAS VEGAS  CONTIGUO A POSTA DE POLICIA ','9759-0880','ABARROTERIA LAS VEGAS','1','14.8745833333333','-88.0704966666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'922074','NELSON MUÃ‘OZ','EL MOCHITO  CONTIGUO AL PARQUE CENTRAL  SANTA BARBARA','9965-7330','JUNTA DE FOMENTO # 1','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'922994','CARLOS ROBERTO CARCAMO','EL PROGRESO  YORO  BO. EL BARRO 1 CUADRA ATRAS INST. EL PROGRESO','2647-4713','PREMIUM COMERCIAL S.A. DE C.V','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'923367','JUAN ANGEL PINTO MORENO','ZONA RIO CAÑAS KILOMETRO 49 CARRETERA PANAMERICANA','32511113','INVERSIONES LA UNION S. DE RL','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'924171','FERNADO RODRIGUEZ','SAN PEDRO SULA  CORTES  COLONIA SATELITE BULEVAR LAS TORRES PRIMERA ETAPA FRENTE A FARMACIA KIELSA','3291-0156','MERCADITO LA ECONOMICA','1','15.4867693','-87.9848898','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912692','ADRIANA LOPEZ','MAQUILA GREEN VALEY GILDAN','96590771','CAFETERIA SINTEX','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912693','NITZA HENRIQUEZ','MAQUILA GREEN VALEY','33707585','CAFETERIA ESCOTO','1','0','0','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912717','INVERSIONES CAPIRO','TELA BRRIO VENECIA C.13','24485143','INVERSIONES CAPIRO SA DE CV.','1','15.7631616666666','-87.4749066666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'912718','MINI SUPER EL EMPRENDEDOR','COL. NUEVA ESPERANZA CALLE PRINCIPAL','97086763','MINI SUPER EL EMPRENDEDOR','1','15.77293','-87.478315','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'924458','ELSY VERONICA PERDOMO','SANTA BARBARA  SANTA BARBARA  COLONIA SUYAPA GUALJOCO SANTA BARBARA GASOLINERA UNO','9482-0535','TIENDAS POL PER','1','14.9530887','-88.2359654','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904916','ALEYDA YAMILETH MEJIA','SANTA BARBARAAZACUALPA AZACUALPA  AZACUALPA S.B.  AZACUALPA SANTA BARBARA BARRIO EL CENTRO FRENTE AL PARQUE CENTRAL','26587126','MINI SUPER EL DESCUENTO','1','15.3420716666666','-88.5516366666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904917','YESENIA BEATRIZ BELTRAN','SANTA BARBARALAS VEGAS SANTA BARBARA  LAS VEGAS   CALLE PRINCIPAL 3 CUADRAS AL NORTE DEL PARQUE CENTRAL','26593316','MINI SUPER YESENIA','1','14.8751133333333','-88.0704383333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904918','EVELIN LOPEZ','SANTA RITA SANTA RITA SANTA RITA  GASOLINERA TEXACO SANTA RITA','0000-0000','COFACER','1','15.2395633333333','-87.879085','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904925','MIRIAM BONILLA','SPSLA LIMA LA LIMA  BARRIO EL CENTRO  LA LIMA CORTES','9992-1326','LA COSECHA S DE R L DE C V','1','15.4398266666666','-87.9265516666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'904938','DISTRIBUIDORA SAN PEDRO','SAN PEDRO SULA BOULEVAR DEL SUR  KM 5   CONTIGUO A CANASA','2565-8285','DISTRIBUIDORA SAN PEDRO SA  DE CV','1','15.4891466666666','-88.0410566666666','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'905235','SONIA ELIZABETH MONZON','TELATELA BARRIO ABAJO FRENTE AL AEROPUERTO DE TELA','24488272','INVERSIONES MONZON','0','15.442109','-88.020456','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'924307','AMADO QUIJADA','LA LIMA  LA LIMA  BULEVAR A PROGRESO COLONIA OMONITA FRENTE A LA CHIQUITA','9503-2527','INVEHCA  S DE RL DE CV','1','15.4113025','-87.8508317','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909627','ROLANDO MINERO','SANTA BARBARAPENA BLANCA  CALLE PRINCIPAL','26500009','ABARROTERIA LA CASONA','1','14.709182','-88.203374','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'909675','DIGNA LUZ LOPEZ','CORTESCUYAMEL BARRIO MORAZAN','9473-7454','MI CONSUELO','1','15.442101','-88.020444','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'910703','KEILY TURCIOS','SPSBOULEVAR DEL SUR POR FUNIMAX','3354-8189','SERPROMU TEXACO AGAS','1','15.451175','-88.0225883333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911556','LEONARDO SANTOS','SPSTERMINAL DE BUSES','97803269','BODEGUITA EXPRESS','1','15.4727566666666','-88.0301683333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911557','ANA MALDONADO','TERMINAL DE BUSES','99170691','PULPERIA LA MAZORCA','1','15.4719583333333','-88.0313133333333','530');
INSERT INTO Clientes_impulsadoras VALUES(0,'911558','ARIEL DIAZ','SPSTERMINAL DE BUSES','32149518','PULPERIA TODO RICO','1','0','0','530');

use sdvbocadeli;
describe empleados;

set foreign_key_checks=0;
alter table empleados change Id_Distribuidora Id_Distribuidora int(7) zerofill not null ;
alter table empleados change Id_Canal Id_Canal int(7) zerofill not null ;
alter table empleados change Id_Ruta Id_Ruta int(7) zerofill not null auto_increment;
alter table rutas change Id_Ruta Id_Ruta int(7) zerofill not null auto_increment;
set foreign_key_checks=1;

select * from itinerario_impulso;

SELECT ucs.id_u_sdv,ii.Id_cli_imp,ii.Id_iti_imp,ucs.Nombre, d.Nombre_Distribuidora , ci.Cod_cli ,ci.Nombre_cli , ci.Direc_cli , ii.lunes,ii.martes,ii.miercoles,ii.jueves,ii.viernes,ii.sabado,ii.domingo,ii.estado_itinerario FROM Itinerario_impulso as ii
inner join clientes_impulsadoras as ci on ii.id_cli_imp=ci.id_cli_imp
inner join usuarios_consolasdv as ucs on ii.id_u_sdv=ucs.id_u_sdv
inner join distribuidora as d on ucs.id_distribuidora=d.id_distribuidora
where ucs.Usuario='5216';
