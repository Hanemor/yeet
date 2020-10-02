CREATE DATABASE Roprosjekt; /* Databasens navn kan endres om ønskelig. */

USE Roprosjekt;

CREATE TABLE tid (
år int,
uke int,
constraint tid_pk primary key (år, uke)
);

CREATE INDEX uke
ON Tid (uke);

CREATE TABLE testresultater (
Utøver_ID int,
år int,
uke int,
roklassetype VARCHAR(10),
watt_60 Time,
bevegelighet int,
watt_5000_M int,
tid_5000_m Time,
watt_2000_M int,
tid_2000_m Time,
prosent_ligg_ro int,
kilo_ligg_ro int,
prosent_knebøy int,
kilo_knebøy int,
cm_Sargeant int,
sek_3000_M int,
min_3000_M Time,
antall_Kr_Hev int,
3000_løp Time,
constraint testresultater_pk primary key (Utøver_ID, år, uke),
constraint år_fk foreign key(år) references Tid (år),
constraint uke_fk foreign key(uke) references Tid (uke)
);

CREATE TABLE roKlasse(
klasseID int(3),
klasseType varchar(30),
constraint roKlasse_pk primary key (klasseID));

CREATE TABLE klubb(
klubbID int(3),
klubbNavn varchar(30),
constraint klubb_pk primary key (klubbID));

CREATE TABLE kjonn(
kjonnID int(3),
kjonntype varchar(30),
constraint kjonn_pk primary key (kjonnID));

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
constraint klubb_fk foreign key(klubbID) references klubb (KlubbID),
constraint kjonn_fk foreign key(kjonnID) references kjonn (kjonnID));

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

INSERT INTO roklasse
VALUES
(1, 'SM'),
(2, 'SK'),
(3, 'JAG'),
(4, 'JAJ'),
(5, 'JBG'),
(6, 'JBJ'),
(7, 'JCG'),
(8, 'JCJ');
