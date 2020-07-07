
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