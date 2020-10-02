Use <navn på schema>;

CREATE TABLE Tid (
År int,
Uke int,
constraint tid_pk primary key (År, uke)
);

CREATE TABLE Testresultater (
Utøver_ID int,
År int,
Uke int,
Roklassetype VARCHAR(10),
Watt_60 Time,
Bevegelighet int,
Watt_5000_M int,
Tid_5000_m Time,
Watt_2000_M int,
Tid_2000_m Time,
Prosent_ligg_ro int,
Kilo_ligg_ro int,
Prosent_knebøy int,
Kilo_knebøy int,
Cm_Sargeant int,
Sek_3000_M int,
Min_3000_M Time,
Antall_Kr_Hev int,
3000_løp Time,
constraint testresultater_pk primary key (Utøver_ID, År, Uke),
constraint testresultater_fk foreign key (År) references Tid (År),
constraint testresultater_fk foreign key (Uke) references Tid (Uke)
);

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
