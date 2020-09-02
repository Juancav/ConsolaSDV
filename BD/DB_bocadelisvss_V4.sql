
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
	Id_Ruta INT(9) zerofill PRIMARY KEY NOT NULL AUTO_INCREMENT,
	Nombre_Ruta CHAR(20) NOT NULL,
	Id_Distribuidora INT(9) zerofill NOT NULL,
	Id_Supervisor INT(9) zerofill NOT NULL,
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
foreign key (Id_u_sdv) references usuarios_consolasdv(Id_u_sdv),
foreign key (Id_cli_imp) references Clientes_impulsadoras(Id_cli_imp),
foreign key (Id_actividad) references acti_impulso(Id)
);
drop table clientes_exhibidor;
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
        IF(RespuestaObservacion=72,"ESTABA CERRADO","NO ENCONTRADA")))))))))) As name , count(RespuestaObservacion) as value 
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
        
        
select C.Codigo, c.Nombre,c.Direccion ,c.Telefono  from actualizacion_exhibidores as ae
inner join fotos_actualizacion_exh as fah on ae.id_cliente=fah.Id_cliente
inner join clientes as c on ae.Id_cliente = c.Id_cliente
inner join exhibidores as e on ae.Id_exhibidores=ae.Id_exhibidores
inner join usuarios as u on c.id_usuarios=u.id_usuarios
inner join rutas as r on u.id_ruta=r.id_ruta
inner join distribuidora as d on r.id_distribuidora=d.id_distribuidora

inner join pais as p on d.id_pais= p.id_pais;
        
