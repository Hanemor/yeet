USE dummydb;

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