drop database if exists apicola;

create database apicola; 

use apicola;

create table usuarios(
 idusuario int auto_increment primary key,
 email varchar(35) unique,
 clave varchar(16),
 nombre varchar(35),
 apellido varchar(35) 
);


-- ----------------------------------------------------------------
create table provincias (
 idprovicia varchar(2) primary key,
 nombreprovincia varchar(45)
);

-- ----------------------------------------------------------------


CREATE TABLE IF NOT EXISTS sector (
  idsector INT NOT NULL AUTO_INCREMENT primary key,
  nombre VARCHAR(45) NOT NULL,
  idprovincia VARCHAR(2) NOT NULL,
  rcto VARCHAR(45) NOT NULL,
  direccion VARCHAR(45) NOT NULL,
  email VARCHAR(50) NOT NULL,
  observacion LONGTEXT NOT NULL,
  responsable VARCHAR(50) NOT NULL
  );


-- ----------------------------------------------------------------
  
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
  
  