CREATE DATABASE Roprosjekt; /* Databasens navn kan endres om ønskelig. */

USE Roprosjekt;

CREATE TABLE tid (
år int,
uke int,
constraint tid_pk primary key (år, uke)
);

CREATE INDEX uke
ON tid (uke);

CREATE TABLE klubb(
klubbID int(3),
klubbNavn varchar(30),
constraint klubb_pk primary key (klubbID));

CREATE TABLE kjonn(
kjonnID int(3),
kjonntype varchar(30),
constraint kjonn_pk primary key (kjonnID));

CREATE TABLE roKlasse(
klasseID int(3),
klasseType varchar(30),
constraint roKlasse_pk primary key (klasseID));

CREATE TABLE utover(
uID int(3),
kjonnID int(3),
klubbID int(3),
klasseID int(3),
fornavn varchar(30),
etternavn varchar(30),
fodt int(4),
constraint utover_pk primary key(uID),
constraint roklasse_fk foreign key(klasseID) references roKlasse (klasseID),
constraint klubb_fk foreign key(klubbID) references klubb (klubbID),
constraint kjonn_fk foreign key(kjonnID) references kjonn (kjonnID));

CREATE TABLE testresultater (
uID int,
år int,
uke int,
klasseID int,
watt_60 decimal(6,2),
bevegelighet int,
watt_5000_M decimal(6,2),
tid_5000_m varchar(10),
watt_2000_M decimal(6,2),
tid_2000_m varchar(10),
prosent_ligg_ro decimal(6,2),
kilo_ligg_ro decimal(6,2),
prosent_knebøy decimal(6,2),
kilo_knebøy decimal(6,2),
cm_Sargeant decimal(6,2),
sek_3000_M decimal(6,2),
min_3000_M varchar(10),
antall_Kr_Hev int,
_3000_løp varchar(10),
score decimal(3,1),
constraint testresultater_pk primary key (uID, år, uke),
constraint år_fk foreign key(år) references tid (år),
constraint uke_fk foreign key(uke) references tid (uke),
constraint utover_fk foreign key(uID) references utover (uID),
constraint klasse_fk foreign key(klasseID) references roKlasse (klasseID) 
);

INSERT INTO kjonn
VALUES 
(1, 'Mann'),
(2, 'Kvinne');

INSERT INTO klubb
VALUES 
(1, 'NTNUI'),
(2, 'Os'),
(3, 'Bergens'),
(4, 'Moss'),
(5, 'Haldens'),
(6, 'Fredriksstad'),
(7, 'Aalesunds'),
(8, 'Alvøen'),
(9, 'BSI'),
(10, 'Bærum'),
(11, 'Christiania'),
(12, 'Drammen'),
(13, 'Fana'),
(14, 'Horten'),
(15, 'Kristiansand'),
(16, 'NSR'),
(17, 'Ormsund'),
(18, 'Porsgrunn'),
(19, 'Sandefjord'),
(20, 'Sarpsborg'),
(21, 'Sjøkrigsskolen'),
(22, 'Stavanger'),
(23, 'Trondhjems'),
(24, 'Tønsberg');

INSERT INTO roKlasse
VALUES
(1, 'SM'),
(2, 'SK'),
(3, 'JAG'),
(4, 'JAJ'),
(5, 'JBG'),
(6, 'JBJ'),
(7, 'JCG'),
(8, 'JCJ');

INSERT INTO tid
VALUES
(2020, 44),
(2020, 11),
(2020, 2),
(2019, 44),
(2019, 11),
(2019, 2),
(2018, 44),
(2018, 11),
(2018, 2);
