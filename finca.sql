drop database if exists finca;

create database finca; 

use finca;



-- ----------------------------------------------------------------
create table estados(
 idestado int not null primary key,
 descripcion varchar(20)
);

insert into estados values(1,'ACTIVO');
insert into estados values(2,'INACTIVO');

-- ----------------------------------------------------------------

create table perfiles(
 idperfil int not null primary key,
 descripcion varchar(20)
);

insert into perfiles values(1,'ADMINISTRADOR');
insert into perfiles values(2,'OBRERO');
-- ----------------------------------------------------------------

 

create table usuarios(
 idusuario int auto_increment primary key not null,
 email varchar(35) unique not null,
 clave varchar(16) not null,
 nombre varchar(35) not null,
 nombre2 varchar(35) not null,
 apellido varchar(35) not null,
 apellido2 varchar(35) not null,
 idperfil int not null not null,
 idestado int not null not null default 1,
 cedula varchar(10) not null unique,
 direccion varchar(100) not null,
 telefono varchar(10) not null,
 constraint fk_usuarios_perfiles foreign key (idperfil) references perfiles(idperfil) on update cascade on delete restrict ,
 constraint fk_usuarios_estado foreign key (idestado) references estados(idestado) 
 on update cascade on delete restrict 
);

-- -----------------------------------------------------------------
insert into usuarios(email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono) 
values('jemimasantillan15@gmail.com','1234567','JEMIMA','SANTILLÁN',1,'CESIA','VILLOTA','1206846774','VINCES','0968603173');
insert into usuarios(email,clave,nombre,apellido,idperfil,nombre2,apellido2,cedula,direccion,telefono) 
values('lisehtjessi1998@gmail.com','1234567','JESSICA','ESTRADA',1,'LIZBETH','ORTIZ','1726051913','BABAHOYO','0967062252');
 
 
 select * from usuarios;
 
-- ----------------------------------------------------------------
create table provincias (
 idprovincia varchar(2) primary key,
 nombreprovincia varchar(45)
);

-- ----------------------------------------------------------------

CREATE TABLE cantones(
 idcanton VARCHAR(4) PRIMARY KEY NOT NULL,
 idprovincia VARCHAR(2) NOT NULL,
 nombrecanton VARCHAR(50) NOT NULL, 
 constraint foreign key (idprovincia) REFERENCES provincias(idprovincia) ON  UPDATE CASCADE ON DELETE RESTRICT	  
);

-- ----------------------------------------------------------------
CREATE TABLE parroquia
(
	idparroquia           CHARACTER VARYING(6) NOT NULL PRIMARY KEY,
	descripcion           CHARACTER VARYING(255) NOT NULL ,
	idcanton              CHARACTER VARYING(4) NOT NULL ,
	CONSTRAINT FK_CANTON_PARROQUIA FOREIGN KEY (idcanton) REFERENCES cantones(idcanton) ON UPDATE CASCADE ON DELETE RESTRICT
);
-- ----------------------------------------------------------------

create table categorias(
 idcategoria int not null primary key auto_increment,
 descripcion character varying (50)
);

insert into categorias values(default,'AGRICULTURA');
insert into categorias values(default,'GANADERÍA');

-- ----------------------------------------------------------------

CREATE TABLE PRODUCTOS(
 idproducto int not null primary key auto_increment,
 nombre varchar(50) not null,
 idcategoria int not null,
 constraint fk_categoria_p foreign key (idcategoria) references categorias(idcategoria) on update cascade on delete restrict
);
 
 -- ----------------------------------------------------------------
 
 insert into productos values(default,'MAIZ',1);
 insert into productos values(default,'ARROZ',1);
 insert into productos values(default,'SOJA',1);
 
 insert into productos values(default,'CARNE',2);
 insert into productos values(default,'LECHE',2);
 insert into productos values(default,'QUESO',2);
 insert into productos values(default,'HUEVOS',2);
 -- ----------------------------------------------------------------
 
 -- ----------------------------------------------------------------

 create table ganado(
  idganado int not null primary key auto_increment,
  nombre varchar(50),
  tipo varchar(50),
  raza varchar(50),
  edad int not null,
  observacion varchar(500),
  fecha DATE NOT NULL
 );


-- ----------------------------------------------------------------


-- ----------------------------------------------------------------


-- ----------------------------------------------------------------
CREATE TABLE cosechas (
  idcosecha INT NOT NULL AUTO_INCREMENT primary key,
  idproducto INT NOT NULL,
  quintales float NOT NULL,
  hectareas float NOT NULL,
  descripcion varchar(50),
  ciclo varchar(50),
  fecha date
);

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2017-01-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(3,1560.0,22.0,'COSECHA','CICLO CORTO','2017-01-31');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(2,1500.0,20.0,'COSECHA','CICLO CORTO','2017-02-1');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2017-02-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2017-03-14');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(2,1560.0,22.0,'COSECHA','CICLO CORTO','2017-04-12');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2017-05-30');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2017-06-19');


insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2018-01-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(2,1560.0,22.0,'COSECHA','CICLO CORTO','2018-01-31');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2018-02-1');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(3,1560.0,22.0,'COSECHA','CICLO CORTO','2018-02-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2018-03-14');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2018-04-12');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(2,1500.0,20.0,'COSECHA','CICLO CORTO','2018-05-30');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2018-06-19');


insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2019-01-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2019-01-31');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(2,1500.0,20.0,'COSECHA','CICLO CORTO','2019-02-1');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2019-02-15');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(3,1500.0,20.0,'COSECHA','CICLO CORTO','2019-03-14');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1560.0,22.0,'COSECHA','CICLO CORTO','2019-04-12');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
values(1,1500.0,20.0,'COSECHA','CICLO CORTO','2019-05-30');

insert into Cosechas(idproducto,quintales,hectareas,descripcion,ciclo,fecha) 
VALUES(3,1560.0,22.0,'COSECHA','CICLO CORTO','2019-06-19');


SELECT * FROM cosechas;

SELECT p.nombre , YEAR(fecha) AS anio, SUM(quintales) FROM cosechas c INNER JOIN productos p
ON p.idproducto=c.idproducto 
WHERE fecha BETWEEN '2017-01-01' AND  '2017-12-31'
GROUP BY p.nombre;

SELECT p.nombre , YEAR(fecha) AS anio, SUM(quintales) FROM cosechas c INNER JOIN productos p
ON p.idproducto=c.idproducto
GROUP BY p.nombre,anio;

-- ----------------------------------------------------------------

CREATE TABLE ventas (
  idventa INT NOT NULL AUTO_INCREMENT primary key,  
  total float NOT NULL,
  fecha date
);

create table detalleventa(
  iddetalleventa INT NOT NULL AUTO_INCREMENT primary key,
  idventa INT NOT NULL,
  idproducto INT NOT NULL,
  cantidad float NOT NULL
);

-- ----------------------------------------------------------------
/*
insert into provincias values('01','AZUAY');
insert into provincias values('02','BOLIVAR');
insert into provincias values('03','CAÑAR');
insert into provincias values('04','CARCHI');
insert into provincias values('05','COTOPAXI');
insert into provincias values('06','CHIMBORAZO');
insert into provincias values('07','EL ORO');
insert into provincias values('08','ESMERALDAS');
insert into provincias values('09','GUAYAS');
insert into provincias values('10','IMBABURA');
insert into provincias values('11','LOJA');
insert into provincias values('12','LOS RÍOS');
insert into provincias values('13','MANABI');
insert into provincias values('14','MORONA SANTIAGO');
insert into provincias values('15','NAPO');
insert into provincias values('16','PASTAZA');
insert into provincias values('17','PICHINCHA');
insert into provincias values('18','TUNGURAHUA');
insert into provincias values('19','ZAMORA CHINCHIPE');
insert into provincias values('20','GALAPAGOS');
insert into provincias values('21','SUCUMBIOS');
insert into provincias values('22','ORELLANA');
insert into provincias values('23','SANTO DOMINGO DE LOS TSACHILAS');
insert into provincias values('24','SANTA ELENA');
insert into provincias values('90','ZONAS NO DELIMITADAS');
  
  
-- ----------------------------------------------------------------------------

insert into cantones values('0101','01','CUENCA');
insert into cantones values('0102','01','GIRÓN');
insert into cantones values('0103','01','GUALACEO');
insert into cantones values('0104','01','NABÓN');
insert into cantones values('0105','01','PAUTE');
insert into cantones values('0106','01','PUCARA');
insert into cantones values('0107','01','SAN FERNANDO');
insert into cantones values('0108','01','SANTA ISABEL');
insert into cantones values('0109','01','SIGSIG');
insert into cantones values('0110','01','OÑA');
insert into cantones values('0111','01','CHORDELEG');
insert into cantones values('0112','01','EL PAN');
insert into cantones values('0113','01','SEVILLA DE ORO');
insert into cantones values('0114','01','GUACHAPALA');
insert into cantones values('0115','01','CAMILO PONCE ENRÍQUEZ');
insert into cantones values('0201','02','GUARANDA');
insert into cantones values('0202','02','CHILLANES');
insert into cantones values('0203','02','CHIMBO');
insert into cantones values('0204','02','ECHEANDÍA');
insert into cantones values('0205','02','SAN MIGUEL');
insert into cantones values('0206','02','CALUMA');
insert into cantones values('0207','02','LAS NAVES');
insert into cantones values('0301','03','AZOGUES');
insert into cantones values('0302','03','BIBLIÁN');
insert into cantones values('0303','03','CAÑAR');
insert into cantones values('0304','03','LA TRONCAL');
insert into cantones values('0305','03','EL TAMBO');
insert into cantones values('0306','03','DÉLEG');
insert into cantones values('0307','03','SUSCAL');
insert into cantones values('0401','04','TULCÁN');
insert into cantones values('0402','04','BOLÍVAR');
insert into cantones values('0403','04','ESPEJO');
insert into cantones values('0404','04','MIRA');
insert into cantones values('0405','04','MONTÚFAR');
insert into cantones values('0406','04','SAN PEDRO DE HUACA');
insert into cantones values('0501','05','LATACUNGA');
insert into cantones values('0502','05','LA MANÁ');
insert into cantones values('0503','05','PANGUA');
insert into cantones values('0504','05','PUJILI');
insert into cantones values('0505','05','SALCEDO');
insert into cantones values('0506','05','SAQUISILÍ');
insert into cantones values('0507','05','SIGCHOS');
insert into cantones values('0601','06','RIOBAMBA');
insert into cantones values('0602','06','ALAUSI');
insert into cantones values('0603','06','COLTA');
insert into cantones values('0604','06','CHAMBO');
insert into cantones values('0605','06','CHUNCHI');
insert into cantones values('0606','06','GUAMOTE');
insert into cantones values('0607','06','GUANO');
insert into cantones values('0608','06','PALLATANGA');
insert into cantones values('0609','06','PENIPE');
insert into cantones values('0610','06','CUMANDÁ');
insert into cantones values('0701','07','MACHALA');
insert into cantones values('0702','07','ARENILLAS');
insert into cantones values('0703','07','ATAHUALPA');
insert into cantones values('0704','07','BALSAS');
insert into cantones values('0705','07','CHILLA');
insert into cantones values('0706','07','EL GUABO');
insert into cantones values('0707','07','HUAQUILLAS');
insert into cantones values('0708','07','MARCABELÍ');
insert into cantones values('0709','07','PASAJE');
insert into cantones values('0710','07','PIÑAS');
insert into cantones values('0711','07','PORTOVELO');
insert into cantones values('0712','07','SANTA ROSA');
insert into cantones values('0713','07','ZARUMA');
insert into cantones values('0714','07','LAS LAJAS');
insert into cantones values('0801','08','ESMERALDAS');
insert into cantones values('0802','08','ELOY ALFARO');
insert into cantones values('0803','08','MUISNE');
insert into cantones values('0804','08','QUININDÉ');
insert into cantones values('0805','08','SAN LORENZO');
insert into cantones values('0806','08','ATACAMES');
insert into cantones values('0807','08','RIOVERDE');
insert into cantones values('0808','08','LA CONCORDIA');
insert into cantones values('0901','09','GUAYAQUIL');
insert into cantones values('0902','09','ALFREDO BAQUERIZO MORENO (JUJÁN)');
insert into cantones values('0903','09','BALAO');
insert into cantones values('0904','09','BALZAR');
insert into cantones values('0905','09','COLIMES');
insert into cantones values('0906','09','DAULE');
insert into cantones values('0907','09','DURÁN');
insert into cantones values('0908','09','EL EMPALME');
insert into cantones values('0909','09','EL TRIUNFO');
insert into cantones values('0910','09','MILAGRO');
insert into cantones values('0911','09','NARANJAL');
insert into cantones values('0912','09','NARANJITO');
insert into cantones values('0913','09','PALESTINA');
insert into cantones values('0914','09','PEDRO CARBO');
insert into cantones values('0916','09','SAMBORONDÓN');
insert into cantones values('0918','09','SANTA LUCÍA');
insert into cantones values('0919','09','SALITRE (URBINA JADO)');
insert into cantones values('0920','09','SAN JACINTO DE YAGUACHI');
insert into cantones values('0921','09','PLAYAS');
insert into cantones values('0922','09','SIMÓN BOLÍVAR');
insert into cantones values('0923','09','CORONEL MARCELINO MARIDUEÑA');
insert into cantones values('0924','09','LOMAS DE SARGENTILLO');
insert into cantones values('0925','09','NOBOL');
insert into cantones values('0927','09','GENERAL ANTONIO ELIZALDE');
insert into cantones values('0928','09','ISIDRO AYORA');
insert into cantones values('1001','10','IBARRA');
insert into cantones values('1002','10','ANTONIO ANTE');
insert into cantones values('1003','10','COTACACHI');
insert into cantones values('1004','10','OTAVALO');
insert into cantones values('1005','10','PIMAMPIRO');
insert into cantones values('1006','10','SAN MIGUEL DE URCUQUÍ');
insert into cantones values('1101','11','LOJA');
insert into cantones values('1102','11','CALVAS');
insert into cantones values('1103','11','CATAMAYO');
insert into cantones values('1104','11','CELICA');
insert into cantones values('1105','11','CHAGUARPAMBA');
insert into cantones values('1106','11','ESPÍNDOLA');
insert into cantones values('1107','11','GONZANAMÁ');
insert into cantones values('1108','11','MACARÁ');
insert into cantones values('1109','11','PALTAS');
insert into cantones values('1110','11','PUYANGO');
insert into cantones values('1111','11','SARAGURO');
insert into cantones values('1112','11','SOZORANGA');
insert into cantones values('1113','11','ZAPOTILLO');
insert into cantones values('1114','11','PINDAL');
insert into cantones values('1115','11','QUILANGA');
insert into cantones values('1116','11','OLMEDO');
insert into cantones values('1201','12','BABAHOYO');
insert into cantones values('1202','12','BABA');
insert into cantones values('1203','12','MONTALVO');
insert into cantones values('1204','12','PUEBLOVIEJO');
insert into cantones values('1205','12','QUEVEDO');
insert into cantones values('1206','12','URDANETA');
insert into cantones values('1207','12','VENTANAS');
insert into cantones values('1208','12','VINCES');
insert into cantones values('1209','12','PALENQUE');
insert into cantones values('1210','12','BUENA FÉ');
insert into cantones values('1211','12','VALENCIA');
insert into cantones values('1212','12','MOCACHE');
insert into cantones values('1213','12','QUINSALOMA');
insert into cantones values('1301','13','PORTOVIEJO');
insert into cantones values('1302','13','BOLÍVAR');
insert into cantones values('1303','13','CHONE');
insert into cantones values('1304','13','EL CARMEN');
insert into cantones values('1305','13','FLAVIO ALFARO');
insert into cantones values('1306','13','JIPIJAPA');
insert into cantones values('1307','13','JUNÍN');
insert into cantones values('1308','13','MANTA');
insert into cantones values('1309','13','MONTECRISTI');
insert into cantones values('1310','13','PAJÁN');
insert into cantones values('1311','13','PICHINCHA');
insert into cantones values('1312','13','ROCAFUERTE');
insert into cantones values('1313','13','SANTA ANA');
insert into cantones values('1314','13','SUCRE');
insert into cantones values('1315','13','TOSAGUA');
insert into cantones values('1316','13','24 DE MAYO');
insert into cantones values('1317','13','PEDERNALES');
insert into cantones values('1318','13','OLMEDO');
insert into cantones values('1319','13','PUERTO LÓPEZ');
insert into cantones values('1320','13','JAMA');
insert into cantones values('1321','13','JARAMIJÓ');
insert into cantones values('1322','13','SAN VICENTE');
insert into cantones values('1401','14','MORONA');
insert into cantones values('1402','14','GUALAQUIZA');
insert into cantones values('1403','14','LIMÓN INDANZA');
insert into cantones values('1404','14','PALORA');
insert into cantones values('1405','14','SANTIAGO');
insert into cantones values('1406','14','SUCÚA');
insert into cantones values('1407','14','HUAMBOYA');
insert into cantones values('1408','14','SAN JUAN BOSCO');
insert into cantones values('1409','14','TAISHA');
insert into cantones values('1410','14','LOGROÑO');
insert into cantones values('1411','14','PABLO SEXTO');
insert into cantones values('1412','14','TIWINTZA');
insert into cantones values('1501','15','TENA');
insert into cantones values('1503','15','ARCHIDONA');
insert into cantones values('1504','15','EL CHACO');
insert into cantones values('1507','15','QUIJOS');
insert into cantones values('1509','15','CARLOS JULIO AROSEMENA TOLA');
insert into cantones values('1601','16','PASTAZA');
insert into cantones values('1602','16','MERA');
insert into cantones values('1603','16','SANTA CLARA');
insert into cantones values('1604','16','ARAJUNO');
insert into cantones values('1701','17','QUITO');
insert into cantones values('1702','17','CAYAMBE');
insert into cantones values('1703','17','MEJIA');
insert into cantones values('1704','17','PEDRO MONCAYO');
insert into cantones values('1705','17','RUMIÑAHUI');
insert into cantones values('1707','17','SAN MIGUEL DE LOS BANCOS');
insert into cantones values('1708','17','PEDRO VICENTE MALDONADO');
insert into cantones values('1709','17','PUERTO QUITO');
insert into cantones values('1801','18','AMBATO');
insert into cantones values('1802','18','BAÑOS DE AGUA SANTA');
insert into cantones values('1803','18','CEVALLOS');
insert into cantones values('1804','18','MOCHA');
insert into cantones values('1805','18','PATATE');
insert into cantones values('1806','18','QUERO');
insert into cantones values('1807','18','SAN PEDRO DE PELILEO');
insert into cantones values('1808','18','SANTIAGO DE PÍLLARO');
insert into cantones values('1809','18','TISALEO');
insert into cantones values('1901','19','ZAMORA');
insert into cantones values('1902','19','CHINCHIPE');
insert into cantones values('1903','19','NANGARITZA');
insert into cantones values('1904','19','YACUAMBI');
insert into cantones values('1905','19','YANTZAZA (YANZATZA)');
insert into cantones values('1906','19','EL PANGUI');
insert into cantones values('1907','19','CENTINELA DEL CÓNDOR');
insert into cantones values('1908','19','PALANDA');
insert into cantones values('1909','19','PAQUISHA');
insert into cantones values('2001','20','SAN CRISTÓBAL');
insert into cantones values('2002','20','ISABELA');
insert into cantones values('2003','20','SANTA CRUZ');
insert into cantones values('2101','21','LAGO AGRIO');
insert into cantones values('2102','21','GONZALO PIZARRO');
insert into cantones values('2103','21','PUTUMAYO');
insert into cantones values('2104','21','SHUSHUFINDI');
insert into cantones values('2105','21','SUCUMBÍOS');
insert into cantones values('2106','21','CASCALES');
insert into cantones values('2107','21','CUYABENO');
insert into cantones values('2201','22','ORELLANA');
insert into cantones values('2202','22','AGUARICO');
insert into cantones values('2203','22','LA JOYA DE LOS SACHAS');
insert into cantones values('2204','22','LORETO');
insert into cantones values('2301','23','SANTO DOMINGO');
insert into cantones values('2401','24','SANTA ELENA');
insert into cantones values('2402','24','LA LIBERTAD');
insert into cantones values('2403','24','SALINAS');
insert into cantones values('9001','90','LAS GOLONDRINAS');
insert into cantones values('9003','90','MANGA DEL CURA');
insert into cantones values('9004','90','EL PIEDRERO');

-- ---------------------------------------------------------------------------

INSERT INTO parroquia VALUES('010650','PUCARÁ','0106');
INSERT INTO parroquia VALUES('010651','CAMILO PONCE ENRÍQUEZ (CAB. EN RÍO 7 DE MOLLEPONGO)','0106');
INSERT INTO parroquia VALUES('010652','SAN RAFAEL DE SHARUG','0106');
INSERT INTO parroquia VALUES('010101','BELLAVISTA','0101');
INSERT INTO parroquia VALUES('010102','CAÑARIBAMBA','0101');
INSERT INTO parroquia VALUES('010103','EL BATÁN','0101');
INSERT INTO parroquia VALUES('010104','EL SAGRARIO','0101');
INSERT INTO parroquia VALUES('010105','EL VECINO','0101');
INSERT INTO parroquia VALUES('010106','GIL RAMÍREZ DÁVALOS','0101');
INSERT INTO parroquia VALUES('010107','HUAYNACÁPAC','0101');
INSERT INTO parroquia VALUES('010108','MACHÁNGARA','0101');
INSERT INTO parroquia VALUES('010109','MONAY','0101');
INSERT INTO parroquia VALUES('010110','SAN BLAS','0101');
INSERT INTO parroquia VALUES('010111','SAN SEBASTIÁN','0101');
INSERT INTO parroquia VALUES('010112','SUCRE','0101');
INSERT INTO parroquia VALUES('010113','TOTORACOCHA','0101');
INSERT INTO parroquia VALUES('010114','YANUNCAY','0101');
INSERT INTO parroquia VALUES('010115','HERMANO MIGUEL','0101');
INSERT INTO parroquia VALUES('010150','CUENCA','0101');
INSERT INTO parroquia VALUES('010151','BAÑOS','0101');
INSERT INTO parroquia VALUES('010152','CUMBE','0101');
INSERT INTO parroquia VALUES('010153','CHAUCHA','0101');
INSERT INTO parroquia VALUES('010154','CHECA (JIDCAY)','0101');
INSERT INTO parroquia VALUES('010155','CHIQUINTAD','0101');
INSERT INTO parroquia VALUES('010156','LLACAO','0101');
INSERT INTO parroquia VALUES('010157','MOLLETURO','0101');
INSERT INTO parroquia VALUES('010158','NULTI','0101');
INSERT INTO parroquia VALUES('010159','OCTAVIO CORDERO PALACIOS (SANTA ROSA)','0101');
INSERT INTO parroquia VALUES('010160','PACCHA','0101');
INSERT INTO parroquia VALUES('010161','QUINGEO','0101');
INSERT INTO parroquia VALUES('010162','RICAURTE','0101');
INSERT INTO parroquia VALUES('010163','SAN JOAQUÍN','0101');
INSERT INTO parroquia VALUES('010164','SANTA ANA','0101');
INSERT INTO parroquia VALUES('010165','SAYAUSÍ','0101');
INSERT INTO parroquia VALUES('010166','SIDCAY','0101');
INSERT INTO parroquia VALUES('010167','SININCAY','0101');
INSERT INTO parroquia VALUES('010168','TARQUI','0101');
INSERT INTO parroquia VALUES('010169','TURI','0101');
INSERT INTO parroquia VALUES('010170','VALLE','0101');
INSERT INTO parroquia VALUES('010171','VICTORIA DEL PORTETE (IRQUIS)','0101');
INSERT INTO parroquia VALUES('010250','GIRÓN','0102');
INSERT INTO parroquia VALUES('010251','ASUNCIÓN','0102');
INSERT INTO parroquia VALUES('010252','SAN GERARDO','0102');
INSERT INTO parroquia VALUES('010350','GUALACEO','0103');
INSERT INTO parroquia VALUES('010351','CHORDELEG','0103');
INSERT INTO parroquia VALUES('010352','DANIEL CÓRDOVA TORAL (EL ORIENTE)','0103');
INSERT INTO parroquia VALUES('010353','JADÁN','0103');
INSERT INTO parroquia VALUES('010354','MARIANO MORENO','0103');
INSERT INTO parroquia VALUES('010355','PRINCIPAL','0103');
INSERT INTO parroquia VALUES('010356','REMIGIO CRESPO TORAL (GÚLAG)','0103');
INSERT INTO parroquia VALUES('010357','SAN JUAN','0103');
INSERT INTO parroquia VALUES('010358','ZHIDMAD','0103');
INSERT INTO parroquia VALUES('010359','LUIS CORDERO VEGA','0103');
INSERT INTO parroquia VALUES('010360','SIMÓN BOLÍVAR (CAB. EN GAÑANZOL)','0103');
INSERT INTO parroquia VALUES('010450','NABÓN','0104');
INSERT INTO parroquia VALUES('010451','COCHAPATA','0104');
INSERT INTO parroquia VALUES('010452','EL PROGRESO (CAB.EN ZHOTA)','0104');
INSERT INTO parroquia VALUES('010453','LAS NIEVES (CHAYA)','0104');
INSERT INTO parroquia VALUES('010454','OÑA','0104');
INSERT INTO parroquia VALUES('010550','PAUTE','0105');
INSERT INTO parroquia VALUES('010551','AMALUZA','0105');
INSERT INTO parroquia VALUES('010552','BULÁN (JOSÉ VÍCTOR IZQUIERDO)','0105');
INSERT INTO parroquia VALUES('010553','CHICÁN (GUILLERMO ORTEGA)','0105');
INSERT INTO parroquia VALUES('010554','EL CABO','0105');
INSERT INTO parroquia VALUES('010555','GUACHAPALA','0105');
INSERT INTO parroquia VALUES('010556','GUARAINAG','0105');
INSERT INTO parroquia VALUES('010557','PALMAS','0105');
INSERT INTO parroquia VALUES('010558','PAN','0105');
INSERT INTO parroquia VALUES('010559','SAN CRISTÓBAL (CARLOS ORDÓÑEZ LAZO)','0105');
INSERT INTO parroquia VALUES('010560','SEVILLA DE ORO','0105');
INSERT INTO parroquia VALUES('010561','TOMEBAMBA','0105');
INSERT INTO parroquia VALUES('010562','DUG DUG','0105');
INSERT INTO parroquia VALUES('010750','SAN FERNANDO','0107');
INSERT INTO parroquia VALUES('010751','CHUMBLÍN','0107');
INSERT INTO parroquia VALUES('010850','SANTA ISABEL (CHAGUARURCO)','0108');
INSERT INTO parroquia VALUES('010851','ABDÓN CALDERÓN (LA UNIÓN)','0108');
INSERT INTO parroquia VALUES('010852','EL CARMEN DE PIJILÍ','0108');
INSERT INTO parroquia VALUES('010853','ZHAGLLI (SHAGLLI)','0108');
INSERT INTO parroquia VALUES('010854','SAN SALVADOR DE CAÑARIBAMBA','0108');
INSERT INTO parroquia VALUES('010950','SIGSIG','0109');
INSERT INTO parroquia VALUES('010951','CUCHIL (CUTCHIL)','0109');
INSERT INTO parroquia VALUES('010952','GIMA','0109');
INSERT INTO parroquia VALUES('010953','GUEL','0109');
INSERT INTO parroquia VALUES('010954','LUDO','0109');
INSERT INTO parroquia VALUES('010955','SAN BARTOLOMÉ','0109');
INSERT INTO parroquia VALUES('010956','SAN JOSÉ DE RARANGA','0109');
INSERT INTO parroquia VALUES('011050','SAN FELIPE DE OÑA CABECERA CANTONAL','0110');
INSERT INTO parroquia VALUES('011051','SUSUDEL','0110');
INSERT INTO parroquia VALUES('011150','CHORDELEG','0111');
INSERT INTO parroquia VALUES('011151','PRINCIPAL','0111');
INSERT INTO parroquia VALUES('011152','LA UNIÓN','0111');
INSERT INTO parroquia VALUES('011153','LUIS GALARZA ORELLANA (CAB.EN DELEGSOL)','0111');
INSERT INTO parroquia VALUES('011154','SAN MARTÍN DE PUZHIO','0111');
INSERT INTO parroquia VALUES('011250','EL PAN','0112');
INSERT INTO parroquia VALUES('011251','AMALUZA','0112');
INSERT INTO parroquia VALUES('011252','PALMAS','0112');
INSERT INTO parroquia VALUES('011253','SAN VICENTE','0112');
INSERT INTO parroquia VALUES('011350','SEVILLA DE ORO','0113');
INSERT INTO parroquia VALUES('011351','AMALUZA','0113');
INSERT INTO parroquia VALUES('011352','PALMAS','0113');
INSERT INTO parroquia VALUES('011450','GUACHAPALA','0114');
INSERT INTO parroquia VALUES('011550','CAMILO PONCE ENRÍQUEZ','0115');
INSERT INTO parroquia VALUES('011551','EL CARMEN DE PIJILÍ','0115');
INSERT INTO parroquia VALUES('020101','ÁNGEL POLIBIO CHÁVES','0201');
INSERT INTO parroquia VALUES('020102','GABRIEL IGNACIO VEINTIMILLA','0201');
INSERT INTO parroquia VALUES('020103','GUANUJO','0201');
INSERT INTO parroquia VALUES('020150','GUARANDA','0201');
INSERT INTO parroquia VALUES('020151','FACUNDO VELA','0201');
INSERT INTO parroquia VALUES('020152','GUANUJO','0201');
INSERT INTO parroquia VALUES('020153','JULIO E. MORENO (CATANAHUÁN GRANDE)','0201');
INSERT INTO parroquia VALUES('020154','LAS NAVES','0201');
INSERT INTO parroquia VALUES('020155','SALINAS','0201');
INSERT INTO parroquia VALUES('020156','SAN LORENZO','0201');
INSERT INTO parroquia VALUES('020157','SAN SIMÓN (YACOTO)','0201');
INSERT INTO parroquia VALUES('020158','SANTA FÉ (SANTA FÉ)','0201');
INSERT INTO parroquia VALUES('020159','SIMIÁTUG','0201');
INSERT INTO parroquia VALUES('020160','SAN LUIS DE PAMBIL','0201');
INSERT INTO parroquia VALUES('020250','CHILLANES','0202');
INSERT INTO parroquia VALUES('020251','SAN JOSÉ DEL TAMBO (TAMBOPAMBA)','0202');
INSERT INTO parroquia VALUES('020350','SAN JOSÉ DE CHIMBO','0203');
INSERT INTO parroquia VALUES('020351','ASUNCIÓN (ASANCOTO)','0203');
INSERT INTO parroquia VALUES('020352','CALUMA','0203');
INSERT INTO parroquia VALUES('020353','MAGDALENA (CHAPACOTO)','0203');
INSERT INTO parroquia VALUES('020354','SAN SEBASTIÁN','0203');
INSERT INTO parroquia VALUES('020355','TELIMBELA','0203');
INSERT INTO parroquia VALUES('020450','ECHEANDÍA','0204');
INSERT INTO parroquia VALUES('020550','SAN MIGUEL','0205');
INSERT INTO parroquia VALUES('020551','BALSAPAMBA','0205');
INSERT INTO parroquia VALUES('020552','BILOVÁN','0205');
INSERT INTO parroquia VALUES('020553','RÉGULO DE MORA','0205');
INSERT INTO parroquia VALUES('020554','SAN PABLO (SAN PABLO DE ATENAS)','0205');
INSERT INTO parroquia VALUES('020555','SANTIAGO','0205');
INSERT INTO parroquia VALUES('020556','SAN VICENTE','0205');
INSERT INTO parroquia VALUES('020650','CALUMA','0206');
INSERT INTO parroquia VALUES('020701','LAS MERCEDES','0207');
INSERT INTO parroquia VALUES('020702','LAS NAVES','0207');
INSERT INTO parroquia VALUES('020750','LAS NAVES','0207');
INSERT INTO parroquia VALUES('030101','AURELIO BAYAS MARTÍNEZ','0301');
INSERT INTO parroquia VALUES('030102','AZOGUES','0301');
INSERT INTO parroquia VALUES('030103','BORRERO','0301');
INSERT INTO parroquia VALUES('030104','SAN FRANCISCO','0301');
INSERT INTO parroquia VALUES('030150','AZOGUES','0301');
INSERT INTO parroquia VALUES('030151','COJITAMBO','0301');
INSERT INTO parroquia VALUES('030152','DÉLEG','0301');
INSERT INTO parroquia VALUES('030153','GUAPÁN','0301');
INSERT INTO parroquia VALUES('030154','JAVIER LOYOLA (CHUQUIPATA)','0301');
INSERT INTO parroquia VALUES('030155','LUIS CORDERO','0301');
INSERT INTO parroquia VALUES('030156','PINDILIG','0301');
INSERT INTO parroquia VALUES('030157','RIVERA','0301');
INSERT INTO parroquia VALUES('030158','SAN MIGUEL','0301');
INSERT INTO parroquia VALUES('030159','SOLANO','0301');
INSERT INTO parroquia VALUES('030160','TADAY','0301');
INSERT INTO parroquia VALUES('030250','BIBLIÁN','0302');
INSERT INTO parroquia VALUES('030251','NAZÓN (CAB. EN PAMPA DE DOMÍNGUEZ)','0302');
INSERT INTO parroquia VALUES('030252','SAN FRANCISCO DE SAGEO','0302');
INSERT INTO parroquia VALUES('030253','TURUPAMBA','0302');
INSERT INTO parroquia VALUES('030254','JERUSALÉN','0302');
INSERT INTO parroquia VALUES('030350','CAÑAR','0303');
INSERT INTO parroquia VALUES('030351','CHONTAMARCA','0303');
INSERT INTO parroquia VALUES('030352','CHOROCOPTE','0303');
INSERT INTO parroquia VALUES('030353','GENERAL MORALES (SOCARTE)','0303');
INSERT INTO parroquia VALUES('030354','GUALLETURO','0303');
INSERT INTO parroquia VALUES('030355','HONORATO VÁSQUEZ (TAMBO VIEJO)','0303');
INSERT INTO parroquia VALUES('030356','INGAPIRCA','0303');
INSERT INTO parroquia VALUES('030357','JUNCAL','0303');
INSERT INTO parroquia VALUES('030358','SAN ANTONIO','0303');
INSERT INTO parroquia VALUES('030359','SUSCAL','0303');
INSERT INTO parroquia VALUES('030360','TAMBO','0303');
INSERT INTO parroquia VALUES('030361','ZHUD','0303');
INSERT INTO parroquia VALUES('030362','VENTURA','0303');
INSERT INTO parroquia VALUES('030363','DUCUR','0303');
INSERT INTO parroquia VALUES('030450','LA TRONCAL','0304');
INSERT INTO parroquia VALUES('030451','MANUEL J. CALLE','0304');
INSERT INTO parroquia VALUES('030452','PANCHO NEGRO','0304');
INSERT INTO parroquia VALUES('030550','EL TAMBO','0305');
INSERT INTO parroquia VALUES('030650','DÉLEG','0306');
INSERT INTO parroquia VALUES('030651','SOLANO','0306');
INSERT INTO parroquia VALUES('030750','SUSCAL','0307');
INSERT INTO parroquia VALUES('040101','GONZÁLEZ SUÁREZ','0401');
INSERT INTO parroquia VALUES('040102','TULCÁN','0401');
INSERT INTO parroquia VALUES('040150','TULCÁN','0401');
INSERT INTO parroquia VALUES('040151','EL CARMELO (EL PUN)','0401');
INSERT INTO parroquia VALUES('040152','HUACA','0401');
INSERT INTO parroquia VALUES('040153','JULIO ANDRADE (OREJUELA)','0401');
INSERT INTO parroquia VALUES('040154','MALDONADO','0401');
INSERT INTO parroquia VALUES('040155','PIOTER','0401');
INSERT INTO parroquia VALUES('040156','TOBAR DONOSO (LA BOCANA DE CAMUMBÍ)','0401');
INSERT INTO parroquia VALUES('040157','TUFIÑO','0401');
INSERT INTO parroquia VALUES('040158','URBINA (TAYA)','0401');
INSERT INTO parroquia VALUES('040159','EL CHICAL','0401');
INSERT INTO parroquia VALUES('040160','MARISCAL SUCRE','0401');
INSERT INTO parroquia VALUES('040161','SANTA MARTHA DE CUBA','0401');
INSERT INTO parroquia VALUES('040250','BOLÍVAR','0402');
INSERT INTO parroquia VALUES('040251','GARCÍA MORENO','0402');
INSERT INTO parroquia VALUES('040252','LOS ANDES','0402');
INSERT INTO parroquia VALUES('040253','MONTE OLIVO','0402');
INSERT INTO parroquia VALUES('040254','SAN VICENTE DE PUSIR','0402');
INSERT INTO parroquia VALUES('040255','SAN RAFAEL','0402');
INSERT INTO parroquia VALUES('040301','EL ÁNGEL','0403');
INSERT INTO parroquia VALUES('040302','27 DE SEPTIEMBRE','0403');
INSERT INTO parroquia VALUES('040350','EL ANGEL','0403');
INSERT INTO parroquia VALUES('040351','EL GOALTAL','0403');
INSERT INTO parroquia VALUES('040352','LA LIBERTAD (ALIZO)','0403');
INSERT INTO parroquia VALUES('040353','SAN ISIDRO','0403');
INSERT INTO parroquia VALUES('040450','MIRA (CHONTAHUASI)','0404');
INSERT INTO parroquia VALUES('040451','CONCEPCIÓN','0404');
INSERT INTO parroquia VALUES('040452','JIJÓN Y CAAMAÑO (CAB. EN RÍO BLANCO)','0404');
INSERT INTO parroquia VALUES('040453','JUAN MONTALVO (SAN IGNACIO DE QUIL)','0404');
INSERT INTO parroquia VALUES('040501','GONZÁLEZ SUÁREZ','0405');
INSERT INTO parroquia VALUES('040502','SAN JOSÉ','0405');
INSERT INTO parroquia VALUES('040550','SAN GABRIEL','0405');
INSERT INTO parroquia VALUES('040551','CRISTÓBAL COLÓN','0405');
INSERT INTO parroquia VALUES('040552','CHITÁN DE NAVARRETE','0405');
INSERT INTO parroquia VALUES('040553','FERNÁNDEZ SALVADOR','0405');
INSERT INTO parroquia VALUES('040554','LA PAZ','0405');
INSERT INTO parroquia VALUES('040555','PIARTAL','0405');
INSERT INTO parroquia VALUES('040650','HUACA','0406');
INSERT INTO parroquia VALUES('040651','MARISCAL SUCRE','0406');
INSERT INTO parroquia VALUES('050101','ELOY ALFARO (SAN FELIPE)','0501');
INSERT INTO parroquia VALUES('050102','IGNACIO FLORES (PARQUE FLORES)','0501');
INSERT INTO parroquia VALUES('050103','JUAN MONTALVO (SAN SEBASTIÁN)','0501');
INSERT INTO parroquia VALUES('050104','LA MATRIZ','0501');
INSERT INTO parroquia VALUES('050105','SAN BUENAVENTURA','0501');
INSERT INTO parroquia VALUES('050150','LATACUNGA','0501');
INSERT INTO parroquia VALUES('050151','ALAQUES (ALÁQUEZ)','0501');
INSERT INTO parroquia VALUES('050152','BELISARIO QUEVEDO (GUANAILÍN)','0501');
INSERT INTO parroquia VALUES('050153','GUAITACAMA (GUAYTACAMA)','0501');
INSERT INTO parroquia VALUES('050154','JOSEGUANGO BAJO','0501');
INSERT INTO parroquia VALUES('050155','LAS PAMPAS','0501');
INSERT INTO parroquia VALUES('050156','MULALÓ','0501');
INSERT INTO parroquia VALUES('050157','11 DE NOVIEMBRE (ILINCHISI)','0501');
INSERT INTO parroquia VALUES('050158','POALÓ','0501');
INSERT INTO parroquia VALUES('050159','SAN JUAN DE PASTOCALLE','0501');
INSERT INTO parroquia VALUES('050160','SIGCHOS','0501');
INSERT INTO parroquia VALUES('050161','TANICUCHÍ','0501');
INSERT INTO parroquia VALUES('050162','TOACASO','0501');
INSERT INTO parroquia VALUES('050163','PALO QUEMADO','0501');
INSERT INTO parroquia VALUES('050201','EL CARMEN','0502');
INSERT INTO parroquia VALUES('050202','LA MANÁ','0502');
INSERT INTO parroquia VALUES('050203','EL TRIUNFO','0502');
INSERT INTO parroquia VALUES('050250','LA MANÁ','0502');
INSERT INTO parroquia VALUES('050251','GUASAGANDA (CAB.EN GUASAGANDA','0502');
INSERT INTO parroquia VALUES('050252','PUCAYACU','0502');
INSERT INTO parroquia VALUES('050350','EL CORAZÓN','0503');
INSERT INTO parroquia VALUES('050351','MORASPUNGO','0503');
INSERT INTO parroquia VALUES('050352','PINLLOPATA','0503');
INSERT INTO parroquia VALUES('050353','RAMÓN CAMPAÑA','0503');
INSERT INTO parroquia VALUES('050450','PUJILÍ','0504');
INSERT INTO parroquia VALUES('050451','ANGAMARCA','0504');
INSERT INTO parroquia VALUES('050452','CHUCCHILÁN (CHUGCHILÁN)','0504');
INSERT INTO parroquia VALUES('050453','GUANGAJE','0504');
INSERT INTO parroquia VALUES('050454','ISINLIBÍ (ISINLIVÍ)','0504');
INSERT INTO parroquia VALUES('050455','LA VICTORIA','0504');
INSERT INTO parroquia VALUES('050456','PILALÓ','0504');
INSERT INTO parroquia VALUES('050457','TINGO','0504');
INSERT INTO parroquia VALUES('050458','ZUMBAHUA','0504');
INSERT INTO parroquia VALUES('050550','SAN MIGUEL','0505');
INSERT INTO parroquia VALUES('050551','ANTONIO JOSÉ HOLGUÍN (SANTA LUCÍA)','0505');
INSERT INTO parroquia VALUES('050552','CUSUBAMBA','0505');
INSERT INTO parroquia VALUES('050553','MULALILLO','0505');
INSERT INTO parroquia VALUES('050554','MULLIQUINDIL (SANTA ANA)','0505');
INSERT INTO parroquia VALUES('050555','PANSALEO','0505');
INSERT INTO parroquia VALUES('050650','SAQUISILÍ','0506');
INSERT INTO parroquia VALUES('050651','CANCHAGUA','0506');
INSERT INTO parroquia VALUES('050652','CHANTILÍN','0506');
INSERT INTO parroquia VALUES('050653','COCHAPAMBA','0506');
INSERT INTO parroquia VALUES('050750','SIGCHOS','0507');
INSERT INTO parroquia VALUES('050751','CHUGCHILLÁN','0507');
INSERT INTO parroquia VALUES('050752','ISINLIVÍ','0507');
INSERT INTO parroquia VALUES('050753','LAS PAMPAS','0507');
INSERT INTO parroquia VALUES('050754','PALO QUEMADO','0507');
INSERT INTO parroquia VALUES('060101','LIZARZABURU','0601');
INSERT INTO parroquia VALUES('060102','MALDONADO','0601');
INSERT INTO parroquia VALUES('060103','VELASCO','0601');
INSERT INTO parroquia VALUES('060104','VELOZ','0601');
INSERT INTO parroquia VALUES('060105','YARUQUÍES','0601');
INSERT INTO parroquia VALUES('060150','RIOBAMBA','0601');
INSERT INTO parroquia VALUES('060151','CACHA (CAB. EN MACHÁNGARA)','0601');
INSERT INTO parroquia VALUES('060152','CALPI','0601');
INSERT INTO parroquia VALUES('060153','CUBIJÍES','0601');
INSERT INTO parroquia VALUES('060154','FLORES','0601');
INSERT INTO parroquia VALUES('060155','LICÁN','0601');
INSERT INTO parroquia VALUES('060156','LICTO','0601');
INSERT INTO parroquia VALUES('060157','PUNGALÁ','0601');
INSERT INTO parroquia VALUES('060158','PUNÍN','0601');
INSERT INTO parroquia VALUES('060159','QUIMIAG','0601');
INSERT INTO parroquia VALUES('060160','SAN JUAN','0601');
INSERT INTO parroquia VALUES('060161','SAN LUIS','0601');
INSERT INTO parroquia VALUES('060250','ALAUSÍ','0602');
INSERT INTO parroquia VALUES('060251','ACHUPALLAS','0602');
INSERT INTO parroquia VALUES('060252','CUMANDÁ','0602');
INSERT INTO parroquia VALUES('060253','GUASUNTOS','0602');
INSERT INTO parroquia VALUES('060254','HUIGRA','0602');
INSERT INTO parroquia VALUES('060255','MULTITUD','0602');
INSERT INTO parroquia VALUES('060256','PISTISHÍ (NARIZ DEL DIABLO)','0602');
INSERT INTO parroquia VALUES('060257','PUMALLACTA','0602');
INSERT INTO parroquia VALUES('060258','SEVILLA','0602');
INSERT INTO parroquia VALUES('060259','SIBAMBE','0602');
INSERT INTO parroquia VALUES('060260','TIXÁN','0602');
INSERT INTO parroquia VALUES('060301','CAJABAMBA','0603');
INSERT INTO parroquia VALUES('060302','SICALPA','0603');
INSERT INTO parroquia VALUES('060350','VILLA LA UNIÓN (CAJABAMBA)','0603');
INSERT INTO parroquia VALUES('060351','CAÑI','0603');
INSERT INTO parroquia VALUES('060352','COLUMBE','0603');
INSERT INTO parroquia VALUES('060353','JUAN DE VELASCO (PANGOR)','0603');
INSERT INTO parroquia VALUES('060354','SANTIAGO DE QUITO (CAB. EN SAN ANTONIO DE QUITO)','0603');
INSERT INTO parroquia VALUES('060450','CHAMBO','0604');
INSERT INTO parroquia VALUES('060550','CHUNCHI','0605');
INSERT INTO parroquia VALUES('060551','CAPZOL','0605');
INSERT INTO parroquia VALUES('060552','COMPUD','0605');
INSERT INTO parroquia VALUES('060553','GONZOL','0605');
INSERT INTO parroquia VALUES('060554','LLAGOS','0605');
INSERT INTO parroquia VALUES('060650','GUAMOTE','0606');
INSERT INTO parroquia VALUES('060651','CEBADAS','0606');
INSERT INTO parroquia VALUES('060652','PALMIRA','0606');
INSERT INTO parroquia VALUES('060701','EL ROSARIO','0607');
INSERT INTO parroquia VALUES('060702','LA MATRIZ','0607');
INSERT INTO parroquia VALUES('060750','GUANO','0607');
INSERT INTO parroquia VALUES('060751','GUANANDO','0607');
INSERT INTO parroquia VALUES('060752','ILAPO','0607');
INSERT INTO parroquia VALUES('060753','LA PROVIDENCIA','0607');
INSERT INTO parroquia VALUES('060754','SAN ANDRÉS','0607');
INSERT INTO parroquia VALUES('060755','SAN GERARDO DE PACAICAGUÁN','0607');
INSERT INTO parroquia VALUES('060756','SAN ISIDRO DE PATULÚ','0607');
INSERT INTO parroquia VALUES('060757','SAN JOSÉ DEL CHAZO','0607');
INSERT INTO parroquia VALUES('060758','SANTA FÉ DE GALÁN','0607');
INSERT INTO parroquia VALUES('060759','VALPARAÍSO','0607');
INSERT INTO parroquia VALUES('060850','PALLATANGA','0608');
INSERT INTO parroquia VALUES('060950','PENIPE','0609');
INSERT INTO parroquia VALUES('060951','EL ALTAR','0609');
INSERT INTO parroquia VALUES('060952','MATUS','0609');
INSERT INTO parroquia VALUES('060953','PUELA','0609');
INSERT INTO parroquia VALUES('060954','SAN ANTONIO DE BAYUSHIG','0609');
INSERT INTO parroquia VALUES('060955','LA CANDELARIA','0609');
INSERT INTO parroquia VALUES('060956','BILBAO (CAB.EN QUILLUYACU)','0609');
INSERT INTO parroquia VALUES('061050','CUMANDÁ','0610');
INSERT INTO parroquia VALUES('070101','LA PROVIDENCIA','0701');
INSERT INTO parroquia VALUES('070102','MACHALA','0701');
INSERT INTO parroquia VALUES('070103','PUERTO BOLÍVAR','0701');
INSERT INTO parroquia VALUES('070104','NUEVE DE MAYO','0701');
INSERT INTO parroquia VALUES('070105','EL CAMBIO','0701');
INSERT INTO parroquia VALUES('070150','MACHALA','0701');
INSERT INTO parroquia VALUES('070151','EL CAMBIO','0701');
INSERT INTO parroquia VALUES('070152','EL RETIRO','0701');
INSERT INTO parroquia VALUES('070250','ARENILLAS','0702');
INSERT INTO parroquia VALUES('070251','CHACRAS','0702');
INSERT INTO parroquia VALUES('070252','LA LIBERTAD','0702');
INSERT INTO parroquia VALUES('070253','LAS LAJAS (CAB. EN LA VICTORIA)','0702');
INSERT INTO parroquia VALUES('070254','PALMALES','0702');
INSERT INTO parroquia VALUES('070255','CARCABÓN','0702');
INSERT INTO parroquia VALUES('070350','PACCHA','0703');
INSERT INTO parroquia VALUES('070351','AYAPAMBA','0703');
INSERT INTO parroquia VALUES('070352','CORDONCILLO','0703');
INSERT INTO parroquia VALUES('070353','MILAGRO','0703');
INSERT INTO parroquia VALUES('070354','SAN JOSÉ','0703');
INSERT INTO parroquia VALUES('070355','SAN JUAN DE CERRO AZUL','0703');
INSERT INTO parroquia VALUES('070450','BALSAS','0704');
INSERT INTO parroquia VALUES('070451','BELLAMARÍA','0704');
INSERT INTO parroquia VALUES('070550','CHILLA','0705');
INSERT INTO parroquia VALUES('070650','EL GUABO','0706');
INSERT INTO parroquia VALUES('070651','BARBONES (SUCRE)','0706');
INSERT INTO parroquia VALUES('070652','LA IBERIA','0706');
INSERT INTO parroquia VALUES('070653','TENDALES (CAB.EN PUERTO TENDALES)','0706');
INSERT INTO parroquia VALUES('070654','RÍO BONITO','0706');
INSERT INTO parroquia VALUES('070701','ECUADOR','0707');
INSERT INTO parroquia VALUES('070702','EL PARAÍSO','0707');
INSERT INTO parroquia VALUES('070703','HUALTACO','0707');
INSERT INTO parroquia VALUES('070704','MILTON REYES','0707');
INSERT INTO parroquia VALUES('070705','UNIÓN LOJANA','0707');
INSERT INTO parroquia VALUES('070750','HUAQUILLAS','0707');
INSERT INTO parroquia VALUES('070850','MARCABELÍ','0708');
INSERT INTO parroquia VALUES('070851','EL INGENIO','0708');
INSERT INTO parroquia VALUES('070901','BOLÍVAR','0709');
INSERT INTO parroquia VALUES('070902','LOMA DE FRANCO','0709');
INSERT INTO parroquia VALUES('070903','OCHOA LEÓN (MATRIZ)','0709');
INSERT INTO parroquia VALUES('070904','TRES CERRITOS','0709');
INSERT INTO parroquia VALUES('070950','PASAJE','0709');
INSERT INTO parroquia VALUES('070951','BUENAVISTA','0709');
INSERT INTO parroquia VALUES('070952','CASACAY','0709');
INSERT INTO parroquia VALUES('070953','LA PEAÑA','0709');
INSERT INTO parroquia VALUES('070954','PROGRESO','0709');
INSERT INTO parroquia VALUES('070955','UZHCURRUMI','0709');
INSERT INTO parroquia VALUES('070956','CAÑAQUEMADA','0709');
INSERT INTO parroquia VALUES('071001','LA MATRIZ','0710');
INSERT INTO parroquia VALUES('071002','LA SUSAYA','0710');
INSERT INTO parroquia VALUES('071003','PIÑAS GRANDE','0710');
INSERT INTO parroquia VALUES('071050','PIÑAS','0710');
INSERT INTO parroquia VALUES('071051','CAPIRO (CAB. EN LA CAPILLA DE CAPIRO)','0710');
INSERT INTO parroquia VALUES('071052','LA BOCANA','0710');
INSERT INTO parroquia VALUES('071053','MOROMORO (CAB. EN EL VADO)','0710');
INSERT INTO parroquia VALUES('071054','PIEDRAS','0710');
INSERT INTO parroquia VALUES('071055','SAN ROQUE (AMBROSIO MALDONADO)','0710');
INSERT INTO parroquia VALUES('071056','SARACAY','0710');
INSERT INTO parroquia VALUES('071150','PORTOVELO','0711');
INSERT INTO parroquia VALUES('071151','CURTINCAPA','0711');
INSERT INTO parroquia VALUES('071152','MORALES','0711');
INSERT INTO parroquia VALUES('071153','SALATÍ','0711');
INSERT INTO parroquia VALUES('071201','SANTA ROSA','0712');
INSERT INTO parroquia VALUES('071202','PUERTO JELÍ','0712');
INSERT INTO parroquia VALUES('071203','BALNEARIO JAMBELÍ (SATÉLITE)','0712');
INSERT INTO parroquia VALUES('071204','JUMÓN (SATÉLITE)','0712');
INSERT INTO parroquia VALUES('071205','NUEVO SANTA ROSA','0712');
INSERT INTO parroquia VALUES('071250','SANTA ROSA','0712');
INSERT INTO parroquia VALUES('071251','BELLAVISTA','0712');
INSERT INTO parroquia VALUES('071252','JAMBELÍ','0712');
INSERT INTO parroquia VALUES('071253','LA AVANZADA','0712');
INSERT INTO parroquia VALUES('071254','SAN ANTONIO','0712');
INSERT INTO parroquia VALUES('071255','TORATA','0712');
INSERT INTO parroquia VALUES('071256','VICTORIA','0712');
INSERT INTO parroquia VALUES('071257','BELLAMARÍA','0712');
INSERT INTO parroquia VALUES('071350','ZARUMA','0713');
INSERT INTO parroquia VALUES('071351','ABAÑÍN','0713');
INSERT INTO parroquia VALUES('071352','ARCAPAMBA','0713');
INSERT INTO parroquia VALUES('071353','GUANAZÁN','0713');
INSERT INTO parroquia VALUES('071354','GUIZHAGUIÑA','0713');
INSERT INTO parroquia VALUES('071355','HUERTAS','0713');
INSERT INTO parroquia VALUES('071356','MALVAS','0713');
INSERT INTO parroquia VALUES('071357','MULUNCAY GRANDE','0713');
INSERT INTO parroquia VALUES('071358','SINSAO','0713');
INSERT INTO parroquia VALUES('071359','SALVIAS','0713');
INSERT INTO parroquia VALUES('071401','LA VICTORIA','0714');
INSERT INTO parroquia VALUES('071402','PLATANILLOS','0714');
INSERT INTO parroquia VALUES('071403','VALLE HERMOSO','0714');
INSERT INTO parroquia VALUES('071450','LA VICTORIA','0714');
INSERT INTO parroquia VALUES('071451','LA LIBERTAD','0714');
INSERT INTO parroquia VALUES('071452','EL PARAÍSO','0714');
INSERT INTO parroquia VALUES('071453','SAN ISIDRO','0714');
INSERT INTO parroquia VALUES('080101','BARTOLOMÉ RUIZ (CÉSAR FRANCO CARRIÓN)','0801');
INSERT INTO parroquia VALUES('080102','5 DE AGOSTO','0801');
INSERT INTO parroquia VALUES('080103','ESMERALDAS','0801');
INSERT INTO parroquia VALUES('080104','LUIS TELLO (LAS PALMAS)','0801');
INSERT INTO parroquia VALUES('080105','SIMÓN PLATA TORRES','0801');
INSERT INTO parroquia VALUES('080150','ESMERALDAS','0801');
INSERT INTO parroquia VALUES('080151','ATACAMES','0801');
INSERT INTO parroquia VALUES('080152','CAMARONES (CAB. EN SAN VICENTE)','0801');
INSERT INTO parroquia VALUES('080153','CRNEL. CARLOS CONCHA TORRES (CAB.EN HUELE)','0801');
INSERT INTO parroquia VALUES('080154','CHINCA','0801');
INSERT INTO parroquia VALUES('080155','CHONTADURO','0801');
INSERT INTO parroquia VALUES('080156','CHUMUNDÉ','0801');
INSERT INTO parroquia VALUES('080157','LAGARTO','0801');
INSERT INTO parroquia VALUES('080158','LA UNIÓN','0801');
INSERT INTO parroquia VALUES('080159','MAJUA','0801');
INSERT INTO parroquia VALUES('080160','MONTALVO (CAB. EN HORQUETA)','0801');
INSERT INTO parroquia VALUES('080161','RÍO VERDE','0801');
INSERT INTO parroquia VALUES('080162','ROCAFUERTE','0801');
INSERT INTO parroquia VALUES('080163','SAN MATEO','0801');
INSERT INTO parroquia VALUES('080164','SÚA (CAB. EN LA BOCANA)','0801');
INSERT INTO parroquia VALUES('080165','TABIAZO','0801');
INSERT INTO parroquia VALUES('080166','TACHINA','0801');
INSERT INTO parroquia VALUES('080167','TONCHIGÜE','0801');
INSERT INTO parroquia VALUES('080168','VUELTA LARGA','0801');
INSERT INTO parroquia VALUES('080250','VALDEZ (LIMONES)','0802');
INSERT INTO parroquia VALUES('080251','ANCHAYACU','0802');
INSERT INTO parroquia VALUES('080252','ATAHUALPA (CAB. EN CAMARONES)','0802');
INSERT INTO parroquia VALUES('080253','BORBÓN','0802');
INSERT INTO parroquia VALUES('080254','LA TOLA','0802');
INSERT INTO parroquia VALUES('080255','LUIS VARGAS TORRES (CAB. EN PLAYA DE ORO)','0802');
INSERT INTO parroquia VALUES('080256','MALDONADO','0802');
INSERT INTO parroquia VALUES('080257','PAMPANAL DE BOLÍVAR','0802');
INSERT INTO parroquia VALUES('080258','SAN FRANCISCO DE ONZOLE','0802');
INSERT INTO parroquia VALUES('080259','SANTO DOMINGO DE ONZOLE','0802');
INSERT INTO parroquia VALUES('080260','SELVA ALEGRE','0802');
INSERT INTO parroquia VALUES('080261','TELEMBÍ','0802');
INSERT INTO parroquia VALUES('080262','COLÓN ELOY DEL MARÍA','0802');
INSERT INTO parroquia VALUES('080263','SAN JOSÉ DE CAYAPAS','0802');
INSERT INTO parroquia VALUES('080264','TIMBIRÉ','0802');
INSERT INTO parroquia VALUES('080350','MUISNE','0803');
INSERT INTO parroquia VALUES('080351','BOLÍVAR','0803');
INSERT INTO parroquia VALUES('080352','DAULE','0803');
INSERT INTO parroquia VALUES('080353','GALERA','0803');
INSERT INTO parroquia VALUES('080354','QUINGUE (OLMEDO PERDOMO FRANCO)','0803');
INSERT INTO parroquia VALUES('080355','SALIMA','0803');
INSERT INTO parroquia VALUES('080356','SAN FRANCISCO','0803');
INSERT INTO parroquia VALUES('080357','SAN GREGORIO','0803');
INSERT INTO parroquia VALUES('080358','SAN JOSÉ DE CHAMANGA (CAB.EN CHAMANGA)','0803');
INSERT INTO parroquia VALUES('080450','ROSA ZÁRATE (QUININDÉ)','0804');
INSERT INTO parroquia VALUES('080451','CUBE','0804');
INSERT INTO parroquia VALUES('080452','CHURA (CHANCAMA) (CAB. EN EL YERBERO)','0804');
INSERT INTO parroquia VALUES('080453','MALIMPIA','0804');
INSERT INTO parroquia VALUES('080454','VICHE','0804');
INSERT INTO parroquia VALUES('080455','LA UNIÓN','0804');
INSERT INTO parroquia VALUES('080550','SAN LORENZO','0805');
INSERT INTO parroquia VALUES('080551','ALTO TAMBO (CAB. EN GUADUAL)','0805');
INSERT INTO parroquia VALUES('080552','ANCÓN (PICHANGAL) (CAB. EN PALMA REAL)','0805');
INSERT INTO parroquia VALUES('080553','CALDERÓN','0805');
INSERT INTO parroquia VALUES('080554','CARONDELET','0805');
INSERT INTO parroquia VALUES('080555','5 DE JUNIO (CAB. EN UIMBI)','0805');
INSERT INTO parroquia VALUES('080556','CONCEPCIÓN','0805');
INSERT INTO parroquia VALUES('080557','MATAJE (CAB. EN SANTANDER)','0805');
INSERT INTO parroquia VALUES('080558','SAN JAVIER DE CACHAVÍ (CAB. EN SAN JAVIER)','0805');
INSERT INTO parroquia VALUES('080559','SANTA RITA','0805');
INSERT INTO parroquia VALUES('080560','TAMBILLO','0805');
INSERT INTO parroquia VALUES('080561','TULULBÍ (CAB. EN RICAURTE)','0805');
INSERT INTO parroquia VALUES('080562','URBINA','0805');
INSERT INTO parroquia VALUES('080650','ATACAMES','0806');
INSERT INTO parroquia VALUES('080651','LA UNIÓN','0806');
INSERT INTO parroquia VALUES('080652','SÚA (CAB. EN LA BOCANA)','0806');
INSERT INTO parroquia VALUES('080653','TONCHIGÜE','0806');
INSERT INTO parroquia VALUES('080654','TONSUPA','0806');
INSERT INTO parroquia VALUES('080750','RIOVERDE','0807');
INSERT INTO parroquia VALUES('080751','CHONTADURO','0807');
INSERT INTO parroquia VALUES('080752','CHUMUNDÉ','0807');
INSERT INTO parroquia VALUES('080753','LAGARTO','0807');
INSERT INTO parroquia VALUES('080754','MONTALVO (CAB. EN HORQUETA)','0807');
INSERT INTO parroquia VALUES('080755','ROCAFUERTE','0807');
INSERT INTO parroquia VALUES('080850','LA CONCORDIA','0808');
INSERT INTO parroquia VALUES('080851','MONTERREY','0808');
INSERT INTO parroquia VALUES('080852','LA VILLEGAS','0808');
INSERT INTO parroquia VALUES('080853','PLAN PILOTO','0808');
INSERT INTO parroquia VALUES('090101','AYACUCHO','0901');
INSERT INTO parroquia VALUES('090102','BOLÍVAR (SAGRARIO)','0901');
INSERT INTO parroquia VALUES('090103','CARBO (CONCEPCIÓN)','0901');
INSERT INTO parroquia VALUES('090104','FEBRES CORDERO','0901');
INSERT INTO parroquia VALUES('090105','GARCÍA MORENO','0901');
INSERT INTO parroquia VALUES('090106','LETAMENDI','0901');
INSERT INTO parroquia VALUES('090107','NUEVE DE OCTUBRE','0901');
INSERT INTO parroquia VALUES('090108','OLMEDO (SAN ALEJO)','0901');
INSERT INTO parroquia VALUES('090109','ROCA','0901');
INSERT INTO parroquia VALUES('090110','ROCAFUERTE','0901');
INSERT INTO parroquia VALUES('090111','SUCRE','0901');
INSERT INTO parroquia VALUES('090112','TARQUI','0901');
INSERT INTO parroquia VALUES('090113','URDANETA','0901');
INSERT INTO parroquia VALUES('090114','XIMENA','0901');
INSERT INTO parroquia VALUES('090115','PASCUALES','0901');
INSERT INTO parroquia VALUES('090150','GUAYAQUIL','0901');
INSERT INTO parroquia VALUES('090151','CHONGÓN','0901');
INSERT INTO parroquia VALUES('090152','JUAN GÓMEZ RENDÓN (PROGRESO)','0901');
INSERT INTO parroquia VALUES('090153','MORRO','0901');
INSERT INTO parroquia VALUES('090154','PASCUALES','0901');
INSERT INTO parroquia VALUES('090155','PLAYAS (GRAL. VILLAMIL)','0901');
INSERT INTO parroquia VALUES('090156','POSORJA','0901');
INSERT INTO parroquia VALUES('090157','PUNÁ','0901');
INSERT INTO parroquia VALUES('090158','TENGUEL','0901');
INSERT INTO parroquia VALUES('090250','ALFREDO BAQUERIZO MORENO (JUJÁN)','0902');
INSERT INTO parroquia VALUES('090350','BALAO','0903');
INSERT INTO parroquia VALUES('090450','BALZAR','0904');
INSERT INTO parroquia VALUES('090550','COLIMES','0905');
INSERT INTO parroquia VALUES('090551','SAN JACINTO','0905');
INSERT INTO parroquia VALUES('090601','DAULE','0906');
INSERT INTO parroquia VALUES('090602','LA AURORA (SATÉLITE)','0906');
INSERT INTO parroquia VALUES('090603','BANIFE','0906');
INSERT INTO parroquia VALUES('090604','EMILIANO CAICEDO MARCOS','0906');
INSERT INTO parroquia VALUES('090605','MAGRO','0906');
INSERT INTO parroquia VALUES('090606','PADRE JUAN BAUTISTA AGUIRRE','0906');
INSERT INTO parroquia VALUES('090607','SANTA CLARA','0906');
INSERT INTO parroquia VALUES('090608','VICENTE PIEDRAHITA','0906');
INSERT INTO parroquia VALUES('090650','DAULE','0906');
INSERT INTO parroquia VALUES('090651','ISIDRO AYORA (SOLEDAD)','0906');
INSERT INTO parroquia VALUES('090652','JUAN BAUTISTA AGUIRRE (LOS TINTOS)','0906');
INSERT INTO parroquia VALUES('090653','LAUREL','0906');
INSERT INTO parroquia VALUES('090654','LIMONAL','0906');
INSERT INTO parroquia VALUES('090655','LOMAS DE SARGENTILLO','0906');
INSERT INTO parroquia VALUES('090656','LOS LOJAS (ENRIQUE BAQUERIZO MORENO)','0906');
INSERT INTO parroquia VALUES('090657','PIEDRAHITA (NOBOL)','0906');
INSERT INTO parroquia VALUES('090701','ELOY ALFARO (DURÁN)','0907');
INSERT INTO parroquia VALUES('090702','EL RECREO','0907');
INSERT INTO parroquia VALUES('090750','ELOY ALFARO (DURÁN)','0907');
INSERT INTO parroquia VALUES('090850','VELASCO IBARRA (EL EMPALME)','0908');
INSERT INTO parroquia VALUES('090851','GUAYAS (PUEBLO NUEVO)','0908');
INSERT INTO parroquia VALUES('090852','EL ROSARIO','0908');
INSERT INTO parroquia VALUES('090950','EL TRIUNFO','0909');
INSERT INTO parroquia VALUES('091050','MILAGRO','0910');
INSERT INTO parroquia VALUES('091051','CHOBO','0910');
INSERT INTO parroquia VALUES('091052','GENERAL ELIZALDE (BUCAY)','0910');
INSERT INTO parroquia VALUES('091053','MARISCAL SUCRE (HUAQUES)','0910');
INSERT INTO parroquia VALUES('091054','ROBERTO ASTUDILLO (CAB. EN CRUCE DE VENECIA)','0910');
INSERT INTO parroquia VALUES('091150','NARANJAL','0911');
INSERT INTO parroquia VALUES('091151','JESÚS MARÍA','0911');
INSERT INTO parroquia VALUES('091152','SAN CARLOS','0911');
INSERT INTO parroquia VALUES('091153','SANTA ROSA DE FLANDES','0911');
INSERT INTO parroquia VALUES('091154','TAURA','0911');
INSERT INTO parroquia VALUES('091250','NARANJITO','0912');
INSERT INTO parroquia VALUES('091350','PALESTINA','0913');
INSERT INTO parroquia VALUES('091450','PEDRO CARBO','0914');
INSERT INTO parroquia VALUES('091451','VALLE DE LA VIRGEN','0914');
INSERT INTO parroquia VALUES('091452','SABANILLA','0914');
INSERT INTO parroquia VALUES('091601','SAMBORONDÓN','0916');
INSERT INTO parroquia VALUES('091602','LA PUNTILLA (SATÉLITE)','0916');
INSERT INTO parroquia VALUES('091650','SAMBORONDÓN','0916');
INSERT INTO parroquia VALUES('091651','TARIFA','0916');
INSERT INTO parroquia VALUES('091850','SANTA LUCÍA','0918');
INSERT INTO parroquia VALUES('091901','BOCANA','0919');
INSERT INTO parroquia VALUES('091902','CANDILEJOS','0919');
INSERT INTO parroquia VALUES('091903','CENTRAL','0919');
INSERT INTO parroquia VALUES('091904','PARAÍSO','0919');
INSERT INTO parroquia VALUES('091905','SAN MATEO','0919');
INSERT INTO parroquia VALUES('091950','EL SALITRE (LAS RAMAS)','0919');
INSERT INTO parroquia VALUES('091951','GRAL. VERNAZA (DOS ESTEROS)','0919');
INSERT INTO parroquia VALUES('091952','LA VICTORIA (ÑAUZA)','0919');
INSERT INTO parroquia VALUES('091953','JUNQUILLAL','0919');
INSERT INTO parroquia VALUES('092050','SAN JACINTO DE YAGUACHI','0920');
INSERT INTO parroquia VALUES('092051','CRNEL. LORENZO DE GARAICOA (PEDREGAL)','0920');
INSERT INTO parroquia VALUES('092052','CRNEL. MARCELINO MARIDUEÑA (SAN CARLOS)','0920');
INSERT INTO parroquia VALUES('092053','GRAL. PEDRO J. MONTERO (BOLICHE)','0920');
INSERT INTO parroquia VALUES('092054','SIMÓN BOLÍVAR','0920');
INSERT INTO parroquia VALUES('092055','YAGUACHI VIEJO (CONE)','0920');
INSERT INTO parroquia VALUES('092056','VIRGEN DE FÁTIMA','0920');
INSERT INTO parroquia VALUES('092150','GENERAL VILLAMIL (PLAYAS)','0921');
INSERT INTO parroquia VALUES('092250','SIMÓN BOLÍVAR','0922');
INSERT INTO parroquia VALUES('092251','CRNEL.LORENZO DE GARAICOA (PEDREGAL)','0922');
INSERT INTO parroquia VALUES('092350','CORONEL MARCELINO MARIDUEÑA (SAN CARLOS)','0923');
INSERT INTO parroquia VALUES('092450','LOMAS DE SARGENTILLO','0924');
INSERT INTO parroquia VALUES('092451','ISIDRO AYORA (SOLEDAD)','0924');
INSERT INTO parroquia VALUES('092550','NARCISA DE JESÚS','0925');
INSERT INTO parroquia VALUES('092750','GENERAL ANTONIO ELIZALDE (BUCAY)','0927');
INSERT INTO parroquia VALUES('092850','ISIDRO AYORA','0928');
INSERT INTO parroquia VALUES('100101','CARANQUI','1001');
INSERT INTO parroquia VALUES('100102','GUAYAQUIL DE ALPACHACA','1001');
INSERT INTO parroquia VALUES('100103','SAGRARIO','1001');
INSERT INTO parroquia VALUES('100104','SAN FRANCISCO','1001');
INSERT INTO parroquia VALUES('100105','LA DOLOROSA DEL PRIORATO','1001');
INSERT INTO parroquia VALUES('100150','SAN MIGUEL DE IBARRA','1001');
INSERT INTO parroquia VALUES('100151','AMBUQUÍ','1001');
INSERT INTO parroquia VALUES('100152','ANGOCHAGUA','1001');
INSERT INTO parroquia VALUES('100153','CAROLINA','1001');
INSERT INTO parroquia VALUES('100154','LA ESPERANZA','1001');
INSERT INTO parroquia VALUES('100155','LITA','1001');
INSERT INTO parroquia VALUES('100156','SALINAS','1001');
INSERT INTO parroquia VALUES('100157','SAN ANTONIO','1001');
INSERT INTO parroquia VALUES('100201','ANDRADE MARÍN (LOURDES)','1002');
INSERT INTO parroquia VALUES('100202','ATUNTAQUI','1002');
INSERT INTO parroquia VALUES('100250','ATUNTAQUI','1002');
INSERT INTO parroquia VALUES('100251','IMBAYA (SAN LUIS DE COBUENDO)','1002');
INSERT INTO parroquia VALUES('100252','SAN FRANCISCO DE NATABUELA','1002');
INSERT INTO parroquia VALUES('100253','SAN JOSÉ DE CHALTURA','1002');
INSERT INTO parroquia VALUES('100254','SAN ROQUE','1002');
INSERT INTO parroquia VALUES('100301','SAGRARIO','1003');
INSERT INTO parroquia VALUES('100302','SAN FRANCISCO','1003');
INSERT INTO parroquia VALUES('100350','COTACACHI','1003');
INSERT INTO parroquia VALUES('100351','APUELA','1003');
INSERT INTO parroquia VALUES('100352','GARCÍA MORENO (LLURIMAGUA)','1003');
INSERT INTO parroquia VALUES('100353','IMANTAG','1003');
INSERT INTO parroquia VALUES('100354','PEÑAHERRERA','1003');
INSERT INTO parroquia VALUES('100355','PLAZA GUTIÉRREZ (CALVARIO)','1003');
INSERT INTO parroquia VALUES('100356','QUIROGA','1003');
INSERT INTO parroquia VALUES('100357','6 DE JULIO DE CUELLAJE (CAB. EN CUELLAJE)','1003');
INSERT INTO parroquia VALUES('100358','VACAS GALINDO (EL CHURO) (CAB.EN SAN MIGUEL ALTO','1003');
INSERT INTO parroquia VALUES('100401','JORDÁN','1004');
INSERT INTO parroquia VALUES('100402','SAN LUIS','1004');
INSERT INTO parroquia VALUES('100450','OTAVALO','1004');
INSERT INTO parroquia VALUES('100451','DR. MIGUEL EGAS CABEZAS (PEGUCHE)','1004');
INSERT INTO parroquia VALUES('100452','EUGENIO ESPEJO (CALPAQUÍ)','1004');
INSERT INTO parroquia VALUES('100453','GONZÁLEZ SUÁREZ','1004');
INSERT INTO parroquia VALUES('100454','PATAQUÍ','1004');
INSERT INTO parroquia VALUES('100455','SAN JOSÉ DE QUICHINCHE','1004');
INSERT INTO parroquia VALUES('100456','SAN JUAN DE ILUMÁN','1004');
INSERT INTO parroquia VALUES('100457','SAN PABLO','1004');
INSERT INTO parroquia VALUES('100458','SAN RAFAEL','1004');
INSERT INTO parroquia VALUES('100459','SELVA ALEGRE (CAB.EN SAN MIGUEL DE PAMPLONA)','1004');
INSERT INTO parroquia VALUES('100550','PIMAMPIRO','1005');
INSERT INTO parroquia VALUES('100551','CHUGÁ','1005');
INSERT INTO parroquia VALUES('100552','MARIANO ACOSTA','1005');
INSERT INTO parroquia VALUES('100553','SAN FRANCISCO DE SIGSIPAMBA','1005');
INSERT INTO parroquia VALUES('100650','URCUQUÍ CABECERA CANTONAL','1006');
INSERT INTO parroquia VALUES('100651','CAHUASQUÍ','1006');
INSERT INTO parroquia VALUES('100652','LA MERCED DE BUENOS AIRES','1006');
INSERT INTO parroquia VALUES('100653','PABLO ARENAS','1006');
INSERT INTO parroquia VALUES('100654','SAN BLAS','1006');
INSERT INTO parroquia VALUES('100655','TUMBABIRO','1006');
INSERT INTO parroquia VALUES('110101','EL SAGRARIO','1101');
INSERT INTO parroquia VALUES('110102','SAN SEBASTIÁN','1101');
INSERT INTO parroquia VALUES('110103','SUCRE','1101');
INSERT INTO parroquia VALUES('110104','VALLE','1101');
INSERT INTO parroquia VALUES('110150','LOJA','1101');
INSERT INTO parroquia VALUES('110151','CHANTACO','1101');
INSERT INTO parroquia VALUES('110152','CHUQUIRIBAMBA','1101');
INSERT INTO parroquia VALUES('110153','EL CISNE','1101');
INSERT INTO parroquia VALUES('110154','GUALEL','1101');
INSERT INTO parroquia VALUES('110155','JIMBILLA','1101');
INSERT INTO parroquia VALUES('110156','MALACATOS (VALLADOLID)','1101');
INSERT INTO parroquia VALUES('110157','SAN LUCAS','1101');
INSERT INTO parroquia VALUES('110158','SAN PEDRO DE VILCABAMBA','1101');
INSERT INTO parroquia VALUES('110159','SANTIAGO','1101');
INSERT INTO parroquia VALUES('110160','TAQUIL (MIGUEL RIOFRÍO)','1101');
INSERT INTO parroquia VALUES('110161','VILCABAMBA (VICTORIA)','1101');
INSERT INTO parroquia VALUES('110162','YANGANA (ARSENIO CASTILLO)','1101');
INSERT INTO parroquia VALUES('110163','QUINARA','1101');
INSERT INTO parroquia VALUES('110201','CARIAMANGA','1102');
INSERT INTO parroquia VALUES('110202','CHILE','1102');
INSERT INTO parroquia VALUES('110203','SAN VICENTE','1102');
INSERT INTO parroquia VALUES('110250','CARIAMANGA','1102');
INSERT INTO parroquia VALUES('110251','COLAISACA','1102');
INSERT INTO parroquia VALUES('110252','EL LUCERO','1102');
INSERT INTO parroquia VALUES('110253','UTUANA','1102');
INSERT INTO parroquia VALUES('110254','SANGUILLÍN','1102');
INSERT INTO parroquia VALUES('110301','CATAMAYO','1103');
INSERT INTO parroquia VALUES('110302','SAN JOSÉ','1103');
INSERT INTO parroquia VALUES('110350','CATAMAYO (LA TOMA)','1103');
INSERT INTO parroquia VALUES('110351','EL TAMBO','1103');
INSERT INTO parroquia VALUES('110352','GUAYQUICHUMA','1103');
INSERT INTO parroquia VALUES('110353','SAN PEDRO DE LA BENDITA','1103');
INSERT INTO parroquia VALUES('110354','ZAMBI','1103');
INSERT INTO parroquia VALUES('110450','CELICA','1104');
INSERT INTO parroquia VALUES('110451','CRUZPAMBA (CAB. EN CARLOS BUSTAMANTE)','1104');
INSERT INTO parroquia VALUES('110452','CHAQUINAL','1104');
INSERT INTO parroquia VALUES('110453','12 DE DICIEMBRE (CAB. EN ACHIOTES)','1104');
INSERT INTO parroquia VALUES('110454','PINDAL (FEDERICO PÁEZ)','1104');
INSERT INTO parroquia VALUES('110455','POZUL (SAN JUAN DE POZUL)','1104');
INSERT INTO parroquia VALUES('110456','SABANILLA','1104');
INSERT INTO parroquia VALUES('110457','TNTE. MAXIMILIANO RODRÍGUEZ LOAIZA','1104');
INSERT INTO parroquia VALUES('110550','CHAGUARPAMBA','1105');
INSERT INTO parroquia VALUES('110551','BUENAVISTA','1105');
INSERT INTO parroquia VALUES('110552','EL ROSARIO','1105');
INSERT INTO parroquia VALUES('110553','SANTA RUFINA','1105');
INSERT INTO parroquia VALUES('110554','AMARILLOS','1105');
INSERT INTO parroquia VALUES('110650','AMALUZA','1106');
INSERT INTO parroquia VALUES('110651','BELLAVISTA','1106');
INSERT INTO parroquia VALUES('110652','JIMBURA','1106');
INSERT INTO parroquia VALUES('110653','SANTA TERESITA','1106');
INSERT INTO parroquia VALUES('110654','27 DE ABRIL (CAB. EN LA NARANJA)','1106');
INSERT INTO parroquia VALUES('110655','EL INGENIO','1106');
INSERT INTO parroquia VALUES('110656','EL AIRO','1106');
INSERT INTO parroquia VALUES('110750','GONZANAMÁ','1107');
INSERT INTO parroquia VALUES('110751','CHANGAIMINA (LA LIBERTAD)','1107');
INSERT INTO parroquia VALUES('110752','FUNDOCHAMBA','1107');
INSERT INTO parroquia VALUES('110753','NAMBACOLA','1107');
INSERT INTO parroquia VALUES('110754','PURUNUMA (EGUIGUREN)','1107');
INSERT INTO parroquia VALUES('110755','QUILANGA (LA PAZ)','1107');
INSERT INTO parroquia VALUES('110756','SACAPALCA','1107');
INSERT INTO parroquia VALUES('110757','SAN ANTONIO DE LAS ARADAS (CAB. EN LAS ARADAS)','1107');
INSERT INTO parroquia VALUES('110801','GENERAL ELOY ALFARO (SAN SEBASTIÁN)','1108');
INSERT INTO parroquia VALUES('110802','MACARÁ (MANUEL ENRIQUE RENGEL SUQUILANDA)','1108');
INSERT INTO parroquia VALUES('110850','MACARÁ','1108');
INSERT INTO parroquia VALUES('110851','LARAMA','1108');
INSERT INTO parroquia VALUES('110852','LA VICTORIA','1108');
INSERT INTO parroquia VALUES('110853','SABIANGO (LA CAPILLA)','1108');
INSERT INTO parroquia VALUES('110901','CATACOCHA','1109');
INSERT INTO parroquia VALUES('110902','LOURDES','1109');
INSERT INTO parroquia VALUES('110950','CATACOCHA','1109');
INSERT INTO parroquia VALUES('110951','CANGONAMÁ','1109');
INSERT INTO parroquia VALUES('110952','GUACHANAMÁ','1109');
INSERT INTO parroquia VALUES('110953','LA TINGUE','1109');
INSERT INTO parroquia VALUES('110954','LAURO GUERRERO','1109');
INSERT INTO parroquia VALUES('110955','OLMEDO (SANTA BÁRBARA)','1109');
INSERT INTO parroquia VALUES('110956','ORIANGA','1109');
INSERT INTO parroquia VALUES('110957','SAN ANTONIO','1109');
INSERT INTO parroquia VALUES('110958','CASANGA','1109');
INSERT INTO parroquia VALUES('110959','YAMANA','1109');
INSERT INTO parroquia VALUES('111050','ALAMOR','1110');
INSERT INTO parroquia VALUES('111051','CIANO','1110');
INSERT INTO parroquia VALUES('111052','EL ARENAL','1110');
INSERT INTO parroquia VALUES('111053','EL LIMO (MARIANA DE JESÚS)','1110');
INSERT INTO parroquia VALUES('111054','MERCADILLO','1110');
INSERT INTO parroquia VALUES('111055','VICENTINO','1110');
INSERT INTO parroquia VALUES('111150','SARAGURO','1111');
INSERT INTO parroquia VALUES('111151','EL PARAÍSO DE CELÉN','1111');
INSERT INTO parroquia VALUES('111152','EL TABLÓN','1111');
INSERT INTO parroquia VALUES('111153','LLUZHAPA','1111');
INSERT INTO parroquia VALUES('111154','MANÚ','1111');
INSERT INTO parroquia VALUES('111155','SAN ANTONIO DE QUMBE (CUMBE)','1111');
INSERT INTO parroquia VALUES('111156','SAN PABLO DE TENTA','1111');
INSERT INTO parroquia VALUES('111157','SAN SEBASTIÁN DE YÚLUC','1111');
INSERT INTO parroquia VALUES('111158','SELVA ALEGRE','1111');
INSERT INTO parroquia VALUES('111159','URDANETA (PAQUISHAPA)','1111');
INSERT INTO parroquia VALUES('111160','SUMAYPAMBA','1111');
INSERT INTO parroquia VALUES('111250','SOZORANGA','1112');
INSERT INTO parroquia VALUES('111251','NUEVA FÁTIMA','1112');
INSERT INTO parroquia VALUES('111252','TACAMOROS','1112');
INSERT INTO parroquia VALUES('111350','ZAPOTILLO','1113');
INSERT INTO parroquia VALUES('111351','MANGAHURCO (CAZADEROS)','1113');
INSERT INTO parroquia VALUES('111352','GARZAREAL','1113');
INSERT INTO parroquia VALUES('111353','LIMONES','1113');
INSERT INTO parroquia VALUES('111354','PALETILLAS','1113');
INSERT INTO parroquia VALUES('111355','BOLASPAMBA','1113');
INSERT INTO parroquia VALUES('111450','PINDAL','1114');
INSERT INTO parroquia VALUES('111451','CHAQUINAL','1114');
INSERT INTO parroquia VALUES('111452','12 DE DICIEMBRE (CAB.EN ACHIOTES)','1114');
INSERT INTO parroquia VALUES('111453','MILAGROS','1114');
INSERT INTO parroquia VALUES('111550','QUILANGA','1115');
INSERT INTO parroquia VALUES('111551','FUNDOCHAMBA','1115');
INSERT INTO parroquia VALUES('111552','SAN ANTONIO DE LAS ARADAS (CAB. EN LAS ARADAS)','1115');
INSERT INTO parroquia VALUES('111650','OLMEDO','1116');
INSERT INTO parroquia VALUES('111651','LA TINGUE','1116');
INSERT INTO parroquia VALUES('120101','CLEMENTE BAQUERIZO','1201');
INSERT INTO parroquia VALUES('120102','DR. CAMILO PONCE','1201');
INSERT INTO parroquia VALUES('120103','BARREIRO','1201');
INSERT INTO parroquia VALUES('120104','EL SALTO','1201');
INSERT INTO parroquia VALUES('120150','BABAHOYO','1201');
INSERT INTO parroquia VALUES('120151','BARREIRO (SANTA RITA)','1201');
INSERT INTO parroquia VALUES('120152','CARACOL','1201');
INSERT INTO parroquia VALUES('120153','FEBRES CORDERO (LAS JUNTAS)','1201');
INSERT INTO parroquia VALUES('120154','PIMOCHA','1201');
INSERT INTO parroquia VALUES('120155','LA UNIÓN','1201');
INSERT INTO parroquia VALUES('120250','BABA','1202');
INSERT INTO parroquia VALUES('120251','GUARE','1202');
INSERT INTO parroquia VALUES('120252','ISLA DE BEJUCAL','1202');
INSERT INTO parroquia VALUES('120350','MONTALVO','1203');
INSERT INTO parroquia VALUES('120351','LA ESMERALDA','1203');
INSERT INTO parroquia VALUES('120450','PUEBLOVIEJO','1204');
INSERT INTO parroquia VALUES('120451','PUERTO PECHICHE','1204');
INSERT INTO parroquia VALUES('120452','SAN JUAN','1204');
INSERT INTO parroquia VALUES('120501','QUEVEDO','1205');
INSERT INTO parroquia VALUES('120502','SAN CAMILO','1205');
INSERT INTO parroquia VALUES('120503','SAN JOSÉ','1205');
INSERT INTO parroquia VALUES('120504','GUAYACÁN','1205');
INSERT INTO parroquia VALUES('120505','NICOLÁS INFANTE DÍAZ','1205');
INSERT INTO parroquia VALUES('120506','SAN CRISTÓBAL','1205');
INSERT INTO parroquia VALUES('120507','SIETE DE OCTUBRE','1205');
INSERT INTO parroquia VALUES('120508','24 DE MAYO','1205');
INSERT INTO parroquia VALUES('120509','VENUS DEL RÍO QUEVEDO','1205');
INSERT INTO parroquia VALUES('120510','VIVA ALFARO','1205');
INSERT INTO parroquia VALUES('120550','QUEVEDO','1205');
INSERT INTO parroquia VALUES('120551','BUENA FÉ','1205');
INSERT INTO parroquia VALUES('120552','MOCACHE','1205');
INSERT INTO parroquia VALUES('120553','SAN CARLOS','1205');
INSERT INTO parroquia VALUES('120554','VALENCIA','1205');
INSERT INTO parroquia VALUES('120555','LA ESPERANZA','1205');
INSERT INTO parroquia VALUES('120650','CATARAMA','1206');
INSERT INTO parroquia VALUES('120651','RICAURTE','1206');
INSERT INTO parroquia VALUES('120701','10 DE NOVIEMBRE','1207');
INSERT INTO parroquia VALUES('120750','VENTANAS','1207');
INSERT INTO parroquia VALUES('120751','QUINSALOMA','1207');
INSERT INTO parroquia VALUES('120752','ZAPOTAL','1207');
INSERT INTO parroquia VALUES('120753','CHACARITA','1207');
INSERT INTO parroquia VALUES('120754','LOS ÁNGELES','1207');
INSERT INTO parroquia VALUES('120850','VINCES','1208');
INSERT INTO parroquia VALUES('120851','ANTONIO SOTOMAYOR (CAB. EN PLAYAS DE VINCES)','1208');
INSERT INTO parroquia VALUES('120852','BALZAR DE VINCES','1208');
INSERT INTO parroquia VALUES('120853','SAN LORENZO (NICARAGUA)','1208');
INSERT INTO parroquia VALUES('120950','PALENQUE','1209');
INSERT INTO parroquia VALUES('121001','SAN JACINTO DE BUENA FÉ','1210');
INSERT INTO parroquia VALUES('121002','7 DE AGOSTO','1210');
INSERT INTO parroquia VALUES('121003','11 DE OCTUBRE','1210');
INSERT INTO parroquia VALUES('121050','SAN JACINTO DE BUENA FÉ','1210');
INSERT INTO parroquia VALUES('121051','PATRICIA PILAR','1210');
INSERT INTO parroquia VALUES('121150','VALENCIA','1211');
INSERT INTO parroquia VALUES('121250','MOCACHE','1212');
INSERT INTO parroquia VALUES('121350','QUINSALOMA','1213');
INSERT INTO parroquia VALUES('130101','PORTOVIEJO','1301');
INSERT INTO parroquia VALUES('130102','12 DE MARZO','1301');
INSERT INTO parroquia VALUES('130103','COLÓN','1301');
INSERT INTO parroquia VALUES('130104','PICOAZÁ','1301');
INSERT INTO parroquia VALUES('130105','SAN PABLO','1301');
INSERT INTO parroquia VALUES('130106','ANDRÉS DE VERA','1301');
INSERT INTO parroquia VALUES('130107','FRANCISCO PACHECO','1301');
INSERT INTO parroquia VALUES('130108','18 DE OCTUBRE','1301');
INSERT INTO parroquia VALUES('130109','SIMÓN BOLÍVAR','1301');
INSERT INTO parroquia VALUES('130150','PORTOVIEJO','1301');
INSERT INTO parroquia VALUES('130151','ABDÓN CALDERÓN (SAN FRANCISCO)','1301');
INSERT INTO parroquia VALUES('130152','ALHAJUELA (BAJO GRANDE)','1301');
INSERT INTO parroquia VALUES('130153','CRUCITA','1301');
INSERT INTO parroquia VALUES('130154','PUEBLO NUEVO','1301');
INSERT INTO parroquia VALUES('130155','RIOCHICO (RÍO CHICO)','1301');
INSERT INTO parroquia VALUES('130156','SAN PLÁCIDO','1301');
INSERT INTO parroquia VALUES('130157','CHIRIJOS','1301');
INSERT INTO parroquia VALUES('130250','CALCETA','1302');
INSERT INTO parroquia VALUES('130251','MEMBRILLO','1302');
INSERT INTO parroquia VALUES('130252','QUIROGA','1302');
INSERT INTO parroquia VALUES('130301','CHONE','1303');
INSERT INTO parroquia VALUES('130302','SANTA RITA','1303');
INSERT INTO parroquia VALUES('130350','CHONE','1303');
INSERT INTO parroquia VALUES('130351','BOYACÁ','1303');
INSERT INTO parroquia VALUES('130352','CANUTO','1303');
INSERT INTO parroquia VALUES('130353','CONVENTO','1303');
INSERT INTO parroquia VALUES('130354','CHIBUNGA','1303');
INSERT INTO parroquia VALUES('130355','ELOY ALFARO','1303');
INSERT INTO parroquia VALUES('130356','RICAURTE','1303');
INSERT INTO parroquia VALUES('130357','SAN ANTONIO','1303');
INSERT INTO parroquia VALUES('130401','EL CARMEN','1304');
INSERT INTO parroquia VALUES('130402','4 DE DICIEMBRE','1304');
INSERT INTO parroquia VALUES('130450','EL CARMEN','1304');
INSERT INTO parroquia VALUES('130451','WILFRIDO LOOR MOREIRA (MAICITO)','1304');
INSERT INTO parroquia VALUES('130452','SAN PEDRO DE SUMA','1304');
INSERT INTO parroquia VALUES('130550','FLAVIO ALFARO','1305');
INSERT INTO parroquia VALUES('130551','SAN FRANCISCO DE NOVILLO (CAB. EN','1305');
INSERT INTO parroquia VALUES('130552','ZAPALLO','1305');
INSERT INTO parroquia VALUES('130601','DR. MIGUEL MORÁN LUCIO','1306');
INSERT INTO parroquia VALUES('130602','MANUEL INOCENCIO PARRALES Y GUALE','1306');
INSERT INTO parroquia VALUES('130603','SAN LORENZO DE JIPIJAPA','1306');
INSERT INTO parroquia VALUES('130650','JIPIJAPA','1306');
INSERT INTO parroquia VALUES('130651','AMÉRICA','1306');
INSERT INTO parroquia VALUES('130652','EL ANEGADO (CAB. EN ELOY ALFARO)','1306');
INSERT INTO parroquia VALUES('130653','JULCUY','1306');
INSERT INTO parroquia VALUES('130654','LA UNIÓN','1306');
INSERT INTO parroquia VALUES('130655','MACHALILLA','1306');
INSERT INTO parroquia VALUES('130656','MEMBRILLAL','1306');
INSERT INTO parroquia VALUES('130657','PEDRO PABLO GÓMEZ','1306');
INSERT INTO parroquia VALUES('130658','PUERTO DE CAYO','1306');
INSERT INTO parroquia VALUES('130659','PUERTO LÓPEZ','1306');
INSERT INTO parroquia VALUES('130750','JUNÍN','1307');
INSERT INTO parroquia VALUES('130801','LOS ESTEROS','1308');
INSERT INTO parroquia VALUES('130802','MANTA','1308');
INSERT INTO parroquia VALUES('130803','SAN MATEO','1308');
INSERT INTO parroquia VALUES('130804','TARQUI','1308');
INSERT INTO parroquia VALUES('130805','ELOY ALFARO','1308');
INSERT INTO parroquia VALUES('130850','MANTA','1308');
INSERT INTO parroquia VALUES('130851','SAN LORENZO','1308');
INSERT INTO parroquia VALUES('130852','SANTA MARIANITA (BOCA DE PACOCHE)','1308');
INSERT INTO parroquia VALUES('130901','ANIBAL SAN ANDRÉS','1309');
INSERT INTO parroquia VALUES('130902','MONTECRISTI','1309');
INSERT INTO parroquia VALUES('130903','EL COLORADO','1309');
INSERT INTO parroquia VALUES('130904','GENERAL ELOY ALFARO','1309');
INSERT INTO parroquia VALUES('130905','LEONIDAS PROAÑO','1309');
INSERT INTO parroquia VALUES('130950','MONTECRISTI','1309');
INSERT INTO parroquia VALUES('130951','JARAMIJÓ','1309');
INSERT INTO parroquia VALUES('130952','LA PILA','1309');
INSERT INTO parroquia VALUES('131050','PAJÁN','1310');
INSERT INTO parroquia VALUES('131051','CAMPOZANO (LA PALMA DE PAJÁN)','1310');
INSERT INTO parroquia VALUES('131052','CASCOL','1310');
INSERT INTO parroquia VALUES('131053','GUALE','1310');
INSERT INTO parroquia VALUES('131054','LASCANO','1310');
INSERT INTO parroquia VALUES('131150','PICHINCHA','1311');
INSERT INTO parroquia VALUES('131151','BARRAGANETE','1311');
INSERT INTO parroquia VALUES('131152','SAN SEBASTIÁN','1311');
INSERT INTO parroquia VALUES('131250','ROCAFUERTE','1312');
INSERT INTO parroquia VALUES('131301','SANTA ANA','1313');
INSERT INTO parroquia VALUES('131302','LODANA','1313');
INSERT INTO parroquia VALUES('131350','SANTA ANA DE VUELTA LARGA','1313');
INSERT INTO parroquia VALUES('131351','AYACUCHO','1313');
INSERT INTO parroquia VALUES('131352','HONORATO VÁSQUEZ (CAB. EN VÁSQUEZ)','1313');
INSERT INTO parroquia VALUES('131353','LA UNIÓN','1313');
INSERT INTO parroquia VALUES('131354','OLMEDO','1313');
INSERT INTO parroquia VALUES('131355','SAN PABLO (CAB. EN PUEBLO NUEVO)','1313');
INSERT INTO parroquia VALUES('131401','BAHÍA DE CARÁQUEZ','1314');
INSERT INTO parroquia VALUES('131402','LEONIDAS PLAZA GUTIÉRREZ','1314');
INSERT INTO parroquia VALUES('131450','BAHÍA DE CARÁQUEZ','1314');
INSERT INTO parroquia VALUES('131451','CANOA','1314');
INSERT INTO parroquia VALUES('131452','COJIMÍES','1314');
INSERT INTO parroquia VALUES('131453','CHARAPOTÓ','1314');
INSERT INTO parroquia VALUES('131454','10 DE AGOSTO','1314');
INSERT INTO parroquia VALUES('131455','JAMA','1314');
INSERT INTO parroquia VALUES('131456','PEDERNALES','1314');
INSERT INTO parroquia VALUES('131457','SAN ISIDRO','1314');
INSERT INTO parroquia VALUES('131458','SAN VICENTE','1314');
INSERT INTO parroquia VALUES('131550','TOSAGUA','1315');
INSERT INTO parroquia VALUES('131551','BACHILLERO','1315');
INSERT INTO parroquia VALUES('131552','ANGEL PEDRO GILER (LA ESTANCILLA)','1315');
INSERT INTO parroquia VALUES('131650','SUCRE','1316');
INSERT INTO parroquia VALUES('131651','BELLAVISTA','1316');
INSERT INTO parroquia VALUES('131652','NOBOA','1316');
INSERT INTO parroquia VALUES('131653','ARQ. SIXTO DURÁN BALLÉN','1316');
INSERT INTO parroquia VALUES('131750','PEDERNALES','1317');
INSERT INTO parroquia VALUES('131751','COJIMÍES','1317');
INSERT INTO parroquia VALUES('131752','10 DE AGOSTO','1317');
INSERT INTO parroquia VALUES('131753','ATAHUALPA','1317');
INSERT INTO parroquia VALUES('131850','OLMEDO','1318');
INSERT INTO parroquia VALUES('131950','PUERTO LÓPEZ','1319');
INSERT INTO parroquia VALUES('131951','MACHALILLA','1319');
INSERT INTO parroquia VALUES('131952','SALANGO','1319');
INSERT INTO parroquia VALUES('132050','JAMA','1320');
INSERT INTO parroquia VALUES('132150','JARAMIJÓ','1321');
INSERT INTO parroquia VALUES('132250','SAN VICENTE','1322');
INSERT INTO parroquia VALUES('132251','CANOA','1322');
INSERT INTO parroquia VALUES('140150','MACAS','1401');
INSERT INTO parroquia VALUES('140151','ALSHI (CAB. EN 9 DE OCTUBRE)','1401');
INSERT INTO parroquia VALUES('140152','CHIGUAZA','1401');
INSERT INTO parroquia VALUES('140153','GENERAL PROAÑO','1401');
INSERT INTO parroquia VALUES('140154','HUASAGA (CAB.EN WAMPUIK)','1401');
INSERT INTO parroquia VALUES('140155','MACUMA','1401');
INSERT INTO parroquia VALUES('140156','SAN ISIDRO','1401');
INSERT INTO parroquia VALUES('140157','SEVILLA DON BOSCO','1401');
INSERT INTO parroquia VALUES('140158','SINAÍ','1401');
INSERT INTO parroquia VALUES('140159','TAISHA','1401');
INSERT INTO parroquia VALUES('140160','ZUÑA (ZÚÑAC)','1401');
INSERT INTO parroquia VALUES('140161','TUUTINENTZA','1401');
INSERT INTO parroquia VALUES('140162','CUCHAENTZA','1401');
INSERT INTO parroquia VALUES('140163','SAN JOSÉ DE MORONA','1401');
INSERT INTO parroquia VALUES('140164','RÍO BLANCO','1401');
INSERT INTO parroquia VALUES('140201','GUALAQUIZA','1402');
INSERT INTO parroquia VALUES('140202','MERCEDES MOLINA','1402');
INSERT INTO parroquia VALUES('140250','GUALAQUIZA','1402');
INSERT INTO parroquia VALUES('140251','AMAZONAS (ROSARIO DE CUYES)','1402');
INSERT INTO parroquia VALUES('140252','BERMEJOS','1402');
INSERT INTO parroquia VALUES('140253','BOMBOIZA','1402');
INSERT INTO parroquia VALUES('140254','CHIGÜINDA','1402');
INSERT INTO parroquia VALUES('140255','EL ROSARIO','1402');
INSERT INTO parroquia VALUES('140256','NUEVA TARQUI','1402');
INSERT INTO parroquia VALUES('140257','SAN MIGUEL DE CUYES','1402');
INSERT INTO parroquia VALUES('140258','EL IDEAL','1402');
INSERT INTO parroquia VALUES('140350','GENERAL LEONIDAS PLAZA GUTIÉRREZ (LIMÓN)','1403');
INSERT INTO parroquia VALUES('140351','INDANZA','1403');
INSERT INTO parroquia VALUES('140352','PAN DE AZÚCAR','1403');
INSERT INTO parroquia VALUES('140353','SAN ANTONIO (CAB. EN SAN ANTONIO CENTRO','1403');
INSERT INTO parroquia VALUES('140354','SAN CARLOS DE LIMÓN (SAN CARLOS DEL','1403');
INSERT INTO parroquia VALUES('140355','SAN JUAN BOSCO','1403');
INSERT INTO parroquia VALUES('140356','SAN MIGUEL DE CONCHAY','1403');
INSERT INTO parroquia VALUES('140357','SANTA SUSANA DE CHIVIAZA (CAB. EN CHIVIAZA)','1403');
INSERT INTO parroquia VALUES('140358','YUNGANZA (CAB. EN EL ROSARIO)','1403');
INSERT INTO parroquia VALUES('140450','PALORA (METZERA)','1404');
INSERT INTO parroquia VALUES('140451','ARAPICOS','1404');
INSERT INTO parroquia VALUES('140452','CUMANDÁ (CAB. EN COLONIA AGRÍCOLA SEVILLA DEL ORO)','1404');
INSERT INTO parroquia VALUES('140453','HUAMBOYA','1404');
INSERT INTO parroquia VALUES('140454','SANGAY (CAB. EN NAYAMANACA)','1404');
INSERT INTO parroquia VALUES('140550','SANTIAGO DE MÉNDEZ','1405');
INSERT INTO parroquia VALUES('140551','COPAL','1405');
INSERT INTO parroquia VALUES('140552','CHUPIANZA','1405');
INSERT INTO parroquia VALUES('140553','PATUCA','1405');
INSERT INTO parroquia VALUES('140554','SAN LUIS DE EL ACHO (CAB. EN EL ACHO)','1405');
INSERT INTO parroquia VALUES('140555','SANTIAGO','1405');
INSERT INTO parroquia VALUES('140556','TAYUZA','1405');
INSERT INTO parroquia VALUES('140557','SAN FRANCISCO DE CHINIMBIMI','1405');
INSERT INTO parroquia VALUES('140650','SUCÚA','1406');
INSERT INTO parroquia VALUES('140651','ASUNCIÓN','1406');
INSERT INTO parroquia VALUES('140652','HUAMBI','1406');
INSERT INTO parroquia VALUES('140653','LOGROÑO','1406');
INSERT INTO parroquia VALUES('140654','YAUPI','1406');
INSERT INTO parroquia VALUES('140655','SANTA MARIANITA DE JESÚS','1406');
INSERT INTO parroquia VALUES('140750','HUAMBOYA','1407');
INSERT INTO parroquia VALUES('140751','CHIGUAZA','1407');
INSERT INTO parroquia VALUES('140752','PABLO SEXTO','1407');
INSERT INTO parroquia VALUES('140850','SAN JUAN BOSCO','1408');
INSERT INTO parroquia VALUES('140851','PAN DE AZÚCAR','1408');
INSERT INTO parroquia VALUES('140852','SAN CARLOS DE LIMÓN','1408');
INSERT INTO parroquia VALUES('140853','SAN JACINTO DE WAKAMBEIS','1408');
INSERT INTO parroquia VALUES('140854','SANTIAGO DE PANANZA','1408');
INSERT INTO parroquia VALUES('140950','TAISHA','1409');
INSERT INTO parroquia VALUES('140951','HUASAGA (CAB. EN WAMPUIK)','1409');
INSERT INTO parroquia VALUES('140952','MACUMA','1409');
INSERT INTO parroquia VALUES('140953','TUUTINENTZA','1409');
INSERT INTO parroquia VALUES('140954','PUMPUENTSA','1409');
INSERT INTO parroquia VALUES('141050','LOGROÑO','1410');
INSERT INTO parroquia VALUES('141051','YAUPI','1410');
INSERT INTO parroquia VALUES('141052','SHIMPIS','1410');
INSERT INTO parroquia VALUES('141150','PABLO SEXTO','1411');
INSERT INTO parroquia VALUES('141250','SANTIAGO','1412');
INSERT INTO parroquia VALUES('141251','SAN JOSÉ DE MORONA','1412');
INSERT INTO parroquia VALUES('150150','TENA','1501');
INSERT INTO parroquia VALUES('150151','AHUANO','1501');
INSERT INTO parroquia VALUES('150152','CARLOS JULIO AROSEMENA TOLA (ZATZA-YACU)','1501');
INSERT INTO parroquia VALUES('150153','CHONTAPUNTA','1501');
INSERT INTO parroquia VALUES('150154','PANO','1501');
INSERT INTO parroquia VALUES('150155','PUERTO MISAHUALLI','1501');
INSERT INTO parroquia VALUES('150156','PUERTO NAPO','1501');
INSERT INTO parroquia VALUES('150157','TÁLAG','1501');
INSERT INTO parroquia VALUES('150158','SAN JUAN DE MUYUNA','1501');
INSERT INTO parroquia VALUES('150350','ARCHIDONA','1503');
INSERT INTO parroquia VALUES('150351','AVILA','1503');
INSERT INTO parroquia VALUES('150352','COTUNDO','1503');
INSERT INTO parroquia VALUES('150353','LORETO','1503');
INSERT INTO parroquia VALUES('150354','SAN PABLO DE USHPAYACU','1503');
INSERT INTO parroquia VALUES('150355','PUERTO MURIALDO','1503');
INSERT INTO parroquia VALUES('150450','EL CHACO','1504');
INSERT INTO parroquia VALUES('150451','GONZALO DíAZ DE PINEDA (EL BOMBÓN)','1504');
INSERT INTO parroquia VALUES('150452','LINARES','1504');
INSERT INTO parroquia VALUES('150453','OYACACHI','1504');
INSERT INTO parroquia VALUES('150454','SANTA ROSA','1504');
INSERT INTO parroquia VALUES('150455','SARDINAS','1504');
INSERT INTO parroquia VALUES('150750','BAEZA','1507');
INSERT INTO parroquia VALUES('150751','COSANGA','1507');
INSERT INTO parroquia VALUES('150752','CUYUJA','1507');
INSERT INTO parroquia VALUES('150753','PAPALLACTA','1507');
INSERT INTO parroquia VALUES('150754','SAN FRANCISCO DE BORJA (VIRGILIO DÁVILA)','1507');
INSERT INTO parroquia VALUES('150755','SAN JOSÉ DEL PAYAMINO','1507');
INSERT INTO parroquia VALUES('150756','SUMACO','1507');
INSERT INTO parroquia VALUES('150950','CARLOS JULIO AROSEMENA TOLA','1509');
INSERT INTO parroquia VALUES('160150','PUYO','1601');
INSERT INTO parroquia VALUES('160151','ARAJUNO','1601');
INSERT INTO parroquia VALUES('160152','CANELOS','1601');
INSERT INTO parroquia VALUES('160153','CURARAY','1601');
INSERT INTO parroquia VALUES('160154','DIEZ DE AGOSTO','1601');
INSERT INTO parroquia VALUES('160155','FÁTIMA','1601');
INSERT INTO parroquia VALUES('160156','MONTALVO (ANDOAS)','1601');
INSERT INTO parroquia VALUES('160157','POMONA','1601');
INSERT INTO parroquia VALUES('160158','RÍO CORRIENTES','1601');
INSERT INTO parroquia VALUES('160159','RÍO TIGRE','1601');
INSERT INTO parroquia VALUES('160160','SANTA CLARA','1601');
INSERT INTO parroquia VALUES('160161','SARAYACU','1601');
INSERT INTO parroquia VALUES('160162','SIMÓN BOLÍVAR (CAB. EN MUSHULLACTA)','1601');
INSERT INTO parroquia VALUES('160163','TARQUI','1601');
INSERT INTO parroquia VALUES('160164','TENIENTE HUGO ORTIZ','1601');
INSERT INTO parroquia VALUES('160165','VERACRUZ (INDILLAMA) (CAB. EN INDILLAMA)','1601');
INSERT INTO parroquia VALUES('160166','EL TRIUNFO','1601');
INSERT INTO parroquia VALUES('160250','MERA','1602');
INSERT INTO parroquia VALUES('160251','MADRE TIERRA','1602');
INSERT INTO parroquia VALUES('160252','SHELL','1602');
INSERT INTO parroquia VALUES('160350','SANTA CLARA','1603');
INSERT INTO parroquia VALUES('160351','SAN JOSÉ','1603');
INSERT INTO parroquia VALUES('160450','ARAJUNO','1604');
INSERT INTO parroquia VALUES('160451','CURARAY','1604');
INSERT INTO parroquia VALUES('170101','BELISARIO QUEVEDO','1701');
INSERT INTO parroquia VALUES('170102','CARCELÉN','1701');
INSERT INTO parroquia VALUES('170103','CENTRO HISTÓRICO','1701');
INSERT INTO parroquia VALUES('170104','COCHAPAMBA','1701');
INSERT INTO parroquia VALUES('170105','COMITÉ DEL PUEBLO','1701');
INSERT INTO parroquia VALUES('170106','COTOCOLLAO','1701');
INSERT INTO parroquia VALUES('170107','CHILIBULO','1701');
INSERT INTO parroquia VALUES('170108','CHILLOGALLO','1701');
INSERT INTO parroquia VALUES('170109','CHIMBACALLE','1701');
INSERT INTO parroquia VALUES('170110','EL CONDADO','1701');
INSERT INTO parroquia VALUES('170111','GUAMANÍ','1701');
INSERT INTO parroquia VALUES('170112','IÑAQUITO','1701');
INSERT INTO parroquia VALUES('170113','ITCHIMBÍA','1701');
INSERT INTO parroquia VALUES('170114','JIPIJAPA','1701');
INSERT INTO parroquia VALUES('170115','KENNEDY','1701');
INSERT INTO parroquia VALUES('170116','LA ARGELIA','1701');
INSERT INTO parroquia VALUES('170117','LA CONCEPCIÓN','1701');
INSERT INTO parroquia VALUES('170118','LA ECUATORIANA','1701');
INSERT INTO parroquia VALUES('170119','LA FERROVIARIA','1701');
INSERT INTO parroquia VALUES('170120','LA LIBERTAD','1701');
INSERT INTO parroquia VALUES('170121','LA MAGDALENA','1701');
INSERT INTO parroquia VALUES('170122','LA MENA','1701');
INSERT INTO parroquia VALUES('170123','MARISCAL SUCRE','1701');
INSERT INTO parroquia VALUES('170124','PONCEANO','1701');
INSERT INTO parroquia VALUES('170125','PUENGASÍ','1701');
INSERT INTO parroquia VALUES('170126','QUITUMBE','1701');
INSERT INTO parroquia VALUES('170127','RUMIPAMBA','1701');
INSERT INTO parroquia VALUES('170128','SAN BARTOLO','1701');
INSERT INTO parroquia VALUES('170129','SAN ISIDRO DEL INCA','1701');
INSERT INTO parroquia VALUES('170130','SAN JUAN','1701');
INSERT INTO parroquia VALUES('170131','SOLANDA','1701');
INSERT INTO parroquia VALUES('170132','TURUBAMBA','1701');
INSERT INTO parroquia VALUES('170150','QUITO DISTRITO METROPOLITANO','1701');
INSERT INTO parroquia VALUES('170151','ALANGASÍ','1701');
INSERT INTO parroquia VALUES('170152','AMAGUAÑA','1701');
INSERT INTO parroquia VALUES('170153','ATAHUALPA','1701');
INSERT INTO parroquia VALUES('170154','CALACALÍ','1701');
INSERT INTO parroquia VALUES('170155','CALDERÓN','1701');
INSERT INTO parroquia VALUES('170156','CONOCOTO','1701');
INSERT INTO parroquia VALUES('170157','CUMBAYÁ','1701');
INSERT INTO parroquia VALUES('170158','CHAVEZPAMBA','1701');
INSERT INTO parroquia VALUES('170159','CHECA','1701');
INSERT INTO parroquia VALUES('170160','EL QUINCHE','1701');
INSERT INTO parroquia VALUES('170161','GUALEA','1701');
INSERT INTO parroquia VALUES('170162','GUANGOPOLO','1701');
INSERT INTO parroquia VALUES('170163','GUAYLLABAMBA','1701');
INSERT INTO parroquia VALUES('170164','LA MERCED','1701');
INSERT INTO parroquia VALUES('170165','LLANO CHICO','1701');
INSERT INTO parroquia VALUES('170166','LLOA','1701');
INSERT INTO parroquia VALUES('170167','MINDO','1701');
INSERT INTO parroquia VALUES('170168','NANEGAL','1701');
INSERT INTO parroquia VALUES('170169','NANEGALITO','1701');
INSERT INTO parroquia VALUES('170170','NAYÓN','1701');
INSERT INTO parroquia VALUES('170171','NONO','1701');
INSERT INTO parroquia VALUES('170172','PACTO','1701');
INSERT INTO parroquia VALUES('170173','PEDRO VICENTE MALDONADO','1701');
INSERT INTO parroquia VALUES('170174','PERUCHO','1701');
INSERT INTO parroquia VALUES('170175','PIFO','1701');
INSERT INTO parroquia VALUES('170176','PÍNTAG','1701');
INSERT INTO parroquia VALUES('170177','POMASQUI','1701');
INSERT INTO parroquia VALUES('170178','PUÉLLARO','1701');
INSERT INTO parroquia VALUES('170179','PUEMBO','1701');
INSERT INTO parroquia VALUES('170180','SAN ANTONIO','1701');
INSERT INTO parroquia VALUES('170181','SAN JOSÉ DE MINAS','1701');
INSERT INTO parroquia VALUES('170182','SAN MIGUEL DE LOS BANCOS','1701');
INSERT INTO parroquia VALUES('170183','TABABELA','1701');
INSERT INTO parroquia VALUES('170184','TUMBACO','1701');
INSERT INTO parroquia VALUES('170185','YARUQUÍ','1701');
INSERT INTO parroquia VALUES('170186','ZAMBIZA','1701');
INSERT INTO parroquia VALUES('170187','PUERTO QUITO','1701');
INSERT INTO parroquia VALUES('170201','AYORA','1702');
INSERT INTO parroquia VALUES('170202','CAYAMBE','1702');
INSERT INTO parroquia VALUES('170203','JUAN MONTALVO','1702');
INSERT INTO parroquia VALUES('170250','CAYAMBE','1702');
INSERT INTO parroquia VALUES('170251','ASCÁZUBI','1702');
INSERT INTO parroquia VALUES('170252','CANGAHUA','1702');
INSERT INTO parroquia VALUES('170253','OLMEDO (PESILLO)','1702');
INSERT INTO parroquia VALUES('170254','OTÓN','1702');
INSERT INTO parroquia VALUES('170255','SANTA ROSA DE CUZUBAMBA','1702');
INSERT INTO parroquia VALUES('170350','MACHACHI','1703');
INSERT INTO parroquia VALUES('170351','ALÓAG','1703');
INSERT INTO parroquia VALUES('170352','ALOASÍ','1703');
INSERT INTO parroquia VALUES('170353','CUTUGLAHUA','1703');
INSERT INTO parroquia VALUES('170354','EL CHAUPI','1703');
INSERT INTO parroquia VALUES('170355','MANUEL CORNEJO ASTORGA (TANDAPI)','1703');
INSERT INTO parroquia VALUES('170356','TAMBILLO','1703');
INSERT INTO parroquia VALUES('170357','UYUMBICHO','1703');
INSERT INTO parroquia VALUES('170450','TABACUNDO','1704');
INSERT INTO parroquia VALUES('170451','LA ESPERANZA','1704');
INSERT INTO parroquia VALUES('170452','MALCHINGUÍ','1704');
INSERT INTO parroquia VALUES('170453','TOCACHI','1704');
INSERT INTO parroquia VALUES('170454','TUPIGACHI','1704');
INSERT INTO parroquia VALUES('170501','SANGOLQUÍ','1705');
INSERT INTO parroquia VALUES('170502','SAN PEDRO DE TABOADA','1705');
INSERT INTO parroquia VALUES('170503','SAN RAFAEL','1705');
INSERT INTO parroquia VALUES('170550','SANGOLQUI','1705');
INSERT INTO parroquia VALUES('170551','COTOGCHOA','1705');
INSERT INTO parroquia VALUES('170552','RUMIPAMBA','1705');
INSERT INTO parroquia VALUES('170750','SAN MIGUEL DE LOS BANCOS','1707');
INSERT INTO parroquia VALUES('170751','MINDO','1707');
INSERT INTO parroquia VALUES('170752','PEDRO VICENTE MALDONADO','1707');
INSERT INTO parroquia VALUES('170753','PUERTO QUITO','1707');
INSERT INTO parroquia VALUES('170850','PEDRO VICENTE MALDONADO','1708');
INSERT INTO parroquia VALUES('170950','PUERTO QUITO','1709');
INSERT INTO parroquia VALUES('180101','ATOCHA – FICOA','1801');
INSERT INTO parroquia VALUES('180102','CELIANO MONGE','1801');
INSERT INTO parroquia VALUES('180103','HUACHI CHICO','1801');
INSERT INTO parroquia VALUES('180104','HUACHI LORETO','1801');
INSERT INTO parroquia VALUES('180105','LA MERCED','1801');
INSERT INTO parroquia VALUES('180106','LA PENÍNSULA','1801');
INSERT INTO parroquia VALUES('180107','MATRIZ','1801');
INSERT INTO parroquia VALUES('180108','PISHILATA','1801');
INSERT INTO parroquia VALUES('180109','SAN FRANCISCO','1801');
INSERT INTO parroquia VALUES('180150','AMBATO','1801');
INSERT INTO parroquia VALUES('180151','AMBATILLO','1801');
INSERT INTO parroquia VALUES('180152','ATAHUALPA (CHISALATA)','1801');
INSERT INTO parroquia VALUES('180153','AUGUSTO N. MARTÍNEZ (MUNDUGLEO)','1801');
INSERT INTO parroquia VALUES('180154','CONSTANTINO FERNÁNDEZ (CAB. EN CULLITAHUA)','1801');
INSERT INTO parroquia VALUES('180155','HUACHI GRANDE','1801');
INSERT INTO parroquia VALUES('180156','IZAMBA','1801');
INSERT INTO parroquia VALUES('180157','JUAN BENIGNO VELA','1801');
INSERT INTO parroquia VALUES('180158','MONTALVO','1801');
INSERT INTO parroquia VALUES('180159','PASA','1801');
INSERT INTO parroquia VALUES('180160','PICAIGUA','1801');
INSERT INTO parroquia VALUES('180161','PILAGÜÍN (PILAHÜÍN)','1801');
INSERT INTO parroquia VALUES('180162','QUISAPINCHA (QUIZAPINCHA)','1801');
INSERT INTO parroquia VALUES('180163','SAN BARTOLOMÉ DE PINLLOG','1801');
INSERT INTO parroquia VALUES('180164','SAN FERNANDO (PASA SAN FERNANDO)','1801');
INSERT INTO parroquia VALUES('180165','SANTA ROSA','1801');
INSERT INTO parroquia VALUES('180166','TOTORAS','1801');
INSERT INTO parroquia VALUES('180167','CUNCHIBAMBA','1801');
INSERT INTO parroquia VALUES('180168','UNAMUNCHO','1801');
INSERT INTO parroquia VALUES('180250','BAÑOS DE AGUA SANTA','1802');
INSERT INTO parroquia VALUES('180251','LLIGUA','1802');
INSERT INTO parroquia VALUES('180252','RÍO NEGRO','1802');
INSERT INTO parroquia VALUES('180253','RÍO VERDE','1802');
INSERT INTO parroquia VALUES('180254','ULBA','1802');
INSERT INTO parroquia VALUES('180350','CEVALLOS','1803');
INSERT INTO parroquia VALUES('180450','MOCHA','1804');
INSERT INTO parroquia VALUES('180451','PINGUILÍ','1804');
INSERT INTO parroquia VALUES('180550','PATATE','1805');
INSERT INTO parroquia VALUES('180551','EL TRIUNFO','1805');
INSERT INTO parroquia VALUES('180552','LOS ANDES (CAB. EN POATUG)','1805');
INSERT INTO parroquia VALUES('180553','SUCRE (CAB. EN SUCRE-PATATE URCU)','1805');
INSERT INTO parroquia VALUES('180650','QUERO','1806');
INSERT INTO parroquia VALUES('180651','RUMIPAMBA','1806');
INSERT INTO parroquia VALUES('180652','YANAYACU - MOCHAPATA (CAB. EN YANAYACU)','1806');
INSERT INTO parroquia VALUES('180701','PELILEO','1807');
INSERT INTO parroquia VALUES('180702','PELILEO GRANDE','1807');
INSERT INTO parroquia VALUES('180750','PELILEO','1807');
INSERT INTO parroquia VALUES('180751','BENÍTEZ (PACHANLICA)','1807');
INSERT INTO parroquia VALUES('180752','BOLÍVAR','1807');
INSERT INTO parroquia VALUES('180753','COTALÓ','1807');
INSERT INTO parroquia VALUES('180754','CHIQUICHA (CAB. EN CHIQUICHA GRANDE)','1807');
INSERT INTO parroquia VALUES('180755','EL ROSARIO (RUMICHACA)','1807');
INSERT INTO parroquia VALUES('180756','GARCÍA MORENO (CHUMAQUI)','1807');
INSERT INTO parroquia VALUES('180757','GUAMBALÓ (HUAMBALÓ)','1807');
INSERT INTO parroquia VALUES('180758','SALASACA','1807');
INSERT INTO parroquia VALUES('180801','CIUDAD NUEVA','1808');
INSERT INTO parroquia VALUES('180802','PÍLLARO','1808');
INSERT INTO parroquia VALUES('180850','PÍLLARO','1808');
INSERT INTO parroquia VALUES('180851','BAQUERIZO MORENO','1808');
INSERT INTO parroquia VALUES('180852','EMILIO MARÍA TERÁN (RUMIPAMBA)','1808');
INSERT INTO parroquia VALUES('180853','MARCOS ESPINEL (CHACATA)','1808');
INSERT INTO parroquia VALUES('180854','PRESIDENTE URBINA (CHAGRAPAMBA -PATZUCUL)','1808');
INSERT INTO parroquia VALUES('180855','SAN ANDRÉS','1808');
INSERT INTO parroquia VALUES('180856','SAN JOSÉ DE POALÓ','1808');
INSERT INTO parroquia VALUES('180857','SAN MIGUELITO','1808');
INSERT INTO parroquia VALUES('180950','TISALEO','1809');
INSERT INTO parroquia VALUES('180951','QUINCHICOTO','1809');
INSERT INTO parroquia VALUES('190101','EL LIMÓN','1901');
INSERT INTO parroquia VALUES('190102','ZAMORA','1901');
INSERT INTO parroquia VALUES('190150','ZAMORA','1901');
INSERT INTO parroquia VALUES('190151','CUMBARATZA','1901');
INSERT INTO parroquia VALUES('190152','GUADALUPE','1901');
INSERT INTO parroquia VALUES('190153','IMBANA (LA VICTORIA DE IMBANA)','1901');
INSERT INTO parroquia VALUES('190154','PAQUISHA','1901');
INSERT INTO parroquia VALUES('190155','SABANILLA','1901');
INSERT INTO parroquia VALUES('190156','TIMBARA','1901');
INSERT INTO parroquia VALUES('190157','ZUMBI','1901');
INSERT INTO parroquia VALUES('190158','SAN CARLOS DE LAS MINAS','1901');
INSERT INTO parroquia VALUES('190250','ZUMBA','1902');
INSERT INTO parroquia VALUES('190251','CHITO','1902');
INSERT INTO parroquia VALUES('190252','EL CHORRO','1902');
INSERT INTO parroquia VALUES('190253','EL PORVENIR DEL CARMEN','1902');
INSERT INTO parroquia VALUES('190254','LA CHONTA','1902');
INSERT INTO parroquia VALUES('190255','PALANDA','1902');
INSERT INTO parroquia VALUES('190256','PUCAPAMBA','1902');
INSERT INTO parroquia VALUES('190257','SAN FRANCISCO DEL VERGEL','1902');
INSERT INTO parroquia VALUES('190258','VALLADOLID','1902');
INSERT INTO parroquia VALUES('190259','SAN ANDRÉS','1902');
INSERT INTO parroquia VALUES('190350','GUAYZIMI','1903');
INSERT INTO parroquia VALUES('190351','ZURMI','1903');
INSERT INTO parroquia VALUES('190352','NUEVO PARAÍSO','1903');
INSERT INTO parroquia VALUES('190450','28 DE MAYO (SAN JOSÉ DE YACUAMBI)','1904');
INSERT INTO parroquia VALUES('190451','LA PAZ','1904');
INSERT INTO parroquia VALUES('190452','TUTUPALI','1904');
INSERT INTO parroquia VALUES('190550','YANTZAZA (YANZATZA)','1905');
INSERT INTO parroquia VALUES('190551','CHICAÑA','1905');
INSERT INTO parroquia VALUES('190552','EL PANGUI','1905');
INSERT INTO parroquia VALUES('190553','LOS ENCUENTROS','1905');
INSERT INTO parroquia VALUES('190650','EL PANGUI','1906');
INSERT INTO parroquia VALUES('190651','EL GUISME','1906');
INSERT INTO parroquia VALUES('190652','PACHICUTZA','1906');
INSERT INTO parroquia VALUES('190653','TUNDAYME','1906');
INSERT INTO parroquia VALUES('190750','ZUMBI','1907');
INSERT INTO parroquia VALUES('190751','PAQUISHA','1907');
INSERT INTO parroquia VALUES('190752','TRIUNFO-DORADO','1907');
INSERT INTO parroquia VALUES('190753','PANGUINTZA','1907');
INSERT INTO parroquia VALUES('190850','PALANDA','1908');
INSERT INTO parroquia VALUES('190851','EL PORVENIR DEL CARMEN','1908');
INSERT INTO parroquia VALUES('190852','SAN FRANCISCO DEL VERGEL','1908');
INSERT INTO parroquia VALUES('190853','VALLADOLID','1908');
INSERT INTO parroquia VALUES('190854','LA CANELA','1908');
INSERT INTO parroquia VALUES('190950','PAQUISHA','1909');
INSERT INTO parroquia VALUES('190951','BELLAVISTA','1909');
INSERT INTO parroquia VALUES('190952','NUEVO QUITO','1909');
INSERT INTO parroquia VALUES('200150','PUERTO BAQUERIZO MORENO','2001');
INSERT INTO parroquia VALUES('200151','EL PROGRESO','2001');
INSERT INTO parroquia VALUES('200152','ISLA SANTA MARÍA (FLOREANA) (CAB. EN PTO. VELASCO IBARRA)','2001');
INSERT INTO parroquia VALUES('200250','PUERTO VILLAMIL','2002');
INSERT INTO parroquia VALUES('200251','TOMÁS DE BERLANGA (SANTO TOMÁS)','2002');
INSERT INTO parroquia VALUES('200350','PUERTO AYORA','2003');
INSERT INTO parroquia VALUES('200351','BELLAVISTA','2003');
INSERT INTO parroquia VALUES('200352','SANTA ROSA (INCLUYE LA ISLA BALTRA)','2003');
INSERT INTO parroquia VALUES('210150','NUEVA LOJA','2101');
INSERT INTO parroquia VALUES('210151','CUYABENO','2101');
INSERT INTO parroquia VALUES('210152','DURENO','2101');
INSERT INTO parroquia VALUES('210153','GENERAL FARFÁN','2101');
INSERT INTO parroquia VALUES('210154','TARAPOA','2101');
INSERT INTO parroquia VALUES('210155','EL ENO','2101');
INSERT INTO parroquia VALUES('210156','PACAYACU','2101');
INSERT INTO parroquia VALUES('210157','JAMBELÍ','2101');
INSERT INTO parroquia VALUES('210158','SANTA CECILIA','2101');
INSERT INTO parroquia VALUES('210159','AGUAS NEGRAS','2101');
INSERT INTO parroquia VALUES('210250','EL DORADO DE CASCALES','2102');
INSERT INTO parroquia VALUES('210251','EL REVENTADOR','2102');
INSERT INTO parroquia VALUES('210252','GONZALO PIZARRO','2102');
INSERT INTO parroquia VALUES('210253','LUMBAQUÍ','2102');
INSERT INTO parroquia VALUES('210254','PUERTO LIBRE','2102');
INSERT INTO parroquia VALUES('210255','SANTA ROSA DE SUCUMBÍOS','2102');
INSERT INTO parroquia VALUES('210350','PUERTO EL CARMEN DEL PUTUMAYO','2103');
INSERT INTO parroquia VALUES('210351','PALMA ROJA','2103');
INSERT INTO parroquia VALUES('210352','PUERTO BOLÍVAR (PUERTO MONTÚFAR)','2103');
INSERT INTO parroquia VALUES('210353','PUERTO RODRÍGUEZ','2103');
INSERT INTO parroquia VALUES('210354','SANTA ELENA','2103');
INSERT INTO parroquia VALUES('210450','SHUSHUFINDI','2104');
INSERT INTO parroquia VALUES('210451','LIMONCOCHA','2104');
INSERT INTO parroquia VALUES('210452','PAÑACOCHA','2104');
INSERT INTO parroquia VALUES('210453','SAN ROQUE (CAB. EN SAN VICENTE)','2104');
INSERT INTO parroquia VALUES('210454','SAN PEDRO DE LOS COFANES','2104');
INSERT INTO parroquia VALUES('210455','SIETE DE JULIO','2104');
INSERT INTO parroquia VALUES('210550','LA BONITA','2105');
INSERT INTO parroquia VALUES('210551','EL PLAYÓN DE SAN FRANCISCO','2105');
INSERT INTO parroquia VALUES('210552','LA SOFÍA','2105');
INSERT INTO parroquia VALUES('210553','ROSA FLORIDA','2105');
INSERT INTO parroquia VALUES('210554','SANTA BÁRBARA','2105');
INSERT INTO parroquia VALUES('210650','EL DORADO DE CASCALES','2106');
INSERT INTO parroquia VALUES('210651','SANTA ROSA DE SUCUMBÍOS','2106');
INSERT INTO parroquia VALUES('210652','SEVILLA','2106');
INSERT INTO parroquia VALUES('210750','TARAPOA','2107');
INSERT INTO parroquia VALUES('210751','CUYABENO','2107');
INSERT INTO parroquia VALUES('210752','AGUAS NEGRAS','2107');
INSERT INTO parroquia VALUES('220150','PUERTO FRANCISCO DE ORELLANA (EL COCA)','2201');
INSERT INTO parroquia VALUES('220151','DAYUMA','2201');
INSERT INTO parroquia VALUES('220152','TARACOA (NUEVA ESPERANZA: YUCA)','2201');
INSERT INTO parroquia VALUES('220153','ALEJANDRO LABAKA','2201');
INSERT INTO parroquia VALUES('220154','EL DORADO','2201');
INSERT INTO parroquia VALUES('220155','EL EDÉN','2201');
INSERT INTO parroquia VALUES('220156','GARCÍA MORENO','2201');
INSERT INTO parroquia VALUES('220157','INÉS ARANGO (CAB. EN WESTERN)','2201');
INSERT INTO parroquia VALUES('220158','LA BELLEZA','2201');
INSERT INTO parroquia VALUES('220159','NUEVO PARAÍSO (CAB. EN UNIÓN','2201');
INSERT INTO parroquia VALUES('220160','SAN JOSÉ DE GUAYUSA','2201');
INSERT INTO parroquia VALUES('220161','SAN LUIS DE ARMENIA','2201');
INSERT INTO parroquia VALUES('220201','TIPITINI','2202');
INSERT INTO parroquia VALUES('220250','NUEVO ROCAFUERTE','2202');
INSERT INTO parroquia VALUES('220251','CAPITÁN AUGUSTO RIVADENEYRA','2202');
INSERT INTO parroquia VALUES('220252','CONONACO','2202');
INSERT INTO parroquia VALUES('220253','SANTA MARÍA DE HUIRIRIMA','2202');
INSERT INTO parroquia VALUES('220254','TIPUTINI','2202');
INSERT INTO parroquia VALUES('220255','YASUNÍ','2202');
INSERT INTO parroquia VALUES('220350','LA JOYA DE LOS SACHAS','2203');
INSERT INTO parroquia VALUES('220351','ENOKANQUI','2203');
INSERT INTO parroquia VALUES('220352','POMPEYA','2203');
INSERT INTO parroquia VALUES('220353','SAN CARLOS','2203');
INSERT INTO parroquia VALUES('220354','SAN SEBASTIÁN DEL COCA','2203');
INSERT INTO parroquia VALUES('220355','LAGO SAN PEDRO','2203');
INSERT INTO parroquia VALUES('220356','RUMIPAMBA','2203');
INSERT INTO parroquia VALUES('220357','TRES DE NOVIEMBRE','2203');
INSERT INTO parroquia VALUES('220358','UNIÓN MILAGREÑA','2203');
INSERT INTO parroquia VALUES('220450','LORETO','2204');
INSERT INTO parroquia VALUES('220451','AVILA (CAB. EN HUIRUNO)','2204');
INSERT INTO parroquia VALUES('220452','PUERTO MURIALDO','2204');
INSERT INTO parroquia VALUES('220453','SAN JOSÉ DE PAYAMINO','2204');
INSERT INTO parroquia VALUES('220454','SAN JOSÉ DE DAHUANO','2204');
INSERT INTO parroquia VALUES('220455','SAN VICENTE DE HUATICOCHA','2204');
INSERT INTO parroquia VALUES('230101','ABRAHAM CALAZACÓN','2301');
INSERT INTO parroquia VALUES('230102','BOMBOLÍ','2301');
INSERT INTO parroquia VALUES('230103','CHIGUILPE','2301');
INSERT INTO parroquia VALUES('230104','RÍO TOACHI','2301');
INSERT INTO parroquia VALUES('230105','RÍO VERDE','2301');
INSERT INTO parroquia VALUES('230106','SANTO DOMINGO DE LOS COLORADOS','2301');
INSERT INTO parroquia VALUES('230107','ZARACAY','2301');
INSERT INTO parroquia VALUES('230150','SANTO DOMINGO DE LOS COLORADOS','2301');
INSERT INTO parroquia VALUES('230151','ALLURIQUÍN','2301');
INSERT INTO parroquia VALUES('230152','PUERTO LIMÓN','2301');
INSERT INTO parroquia VALUES('230153','LUZ DE AMÉRICA','2301');
INSERT INTO parroquia VALUES('230154','SAN JACINTO DEL BÚA','2301');
INSERT INTO parroquia VALUES('230155','VALLE HERMOSO','2301');
INSERT INTO parroquia VALUES('230156','EL ESFUERZO','2301');
INSERT INTO parroquia VALUES('230157','SANTA MARÍA DEL TOACHI','2301');
INSERT INTO parroquia VALUES('240101','BALLENITA','2401');
INSERT INTO parroquia VALUES('240102','SANTA ELENA','2401');
INSERT INTO parroquia VALUES('240150','SANTA ELENA','2401');
INSERT INTO parroquia VALUES('240151','ATAHUALPA','2401');
INSERT INTO parroquia VALUES('240152','COLONCHE','2401');
INSERT INTO parroquia VALUES('240153','CHANDUY','2401');
INSERT INTO parroquia VALUES('240154','MANGLARALTO','2401');
INSERT INTO parroquia VALUES('240155','SIMÓN BOLÍVAR (JULIO MORENO)','2401');
INSERT INTO parroquia VALUES('240156','SAN JOSÉ DE ANCÓN','2401');
INSERT INTO parroquia VALUES('240250','LA LIBERTAD','2402');
INSERT INTO parroquia VALUES('240301','CARLOS ESPINOZA LARREA','2403');
INSERT INTO parroquia VALUES('240302','GRAL. ALBERTO ENRÍQUEZ GALLO','2403');
INSERT INTO parroquia VALUES('240303','VICENTE ROCAFUERTE','2403');
INSERT INTO parroquia VALUES('240304','SANTA ROSA','2403');
INSERT INTO parroquia VALUES('240350','SALINAS','2403');
INSERT INTO parroquia VALUES('240351','ANCONCITO','2403');
INSERT INTO parroquia VALUES('240352','JOSÉ LUIS TAMAYO (MUEY)','2403');
INSERT INTO parroquia VALUES('900151','LAS GOLONDRINAS','9001');
INSERT INTO parroquia VALUES('900351','MANGA DEL CURA','9003');
INSERT INTO parroquia VALUES('900451','EL PIEDRERO','9004');

*/


