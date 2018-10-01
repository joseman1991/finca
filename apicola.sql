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

