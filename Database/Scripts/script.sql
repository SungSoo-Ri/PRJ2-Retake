--Prepare Database by droping tables if they exist

DROP TABLE IF EXISTS flight CASCADE;
DROP TABLE IF EXISTS flightPlane CASCADE;
DROP TABLE IF EXISTS passenger CASCADE;
DROP TABLE IF EXISTS booking CASCADE;
DROP TABLE IF EXISTS bookingFlight CASCADE;
DROP TABLE IF EXISTS flightdiscount CASCADE;
DROP TABLE IF EXISTS extras CASCADE;
DROP TABLE IF EXISTS bookingextras CASCADE;
drop table if exists plane cascade;
drop table if exists users cascade;
DROP TABLE IF EXISTS airport CASCADE;


--Create required tables

create table plane(
	id serial primary key,
	model varchar(30) not null,
	numberofseats int not null
);

CREATE TABLE flight(
    flightid serial primary key ,
    departure varchar(50) not null ,
    arrival varchar(50) not null ,
    deptime time(0) not null ,
    arrtime time(0) not null ,
    depdate date not null ,
    arrdate date not null,
    price int not null,
    currency varchar(3) not null,
    gatenr varchar(3) not null,
    planemodel varchar(20) not null,
    numberofseats int not null
);

CREATE TABLE flightPlane(
    flightid int not null ,
    planeid int not null,
    FOREIGN KEY(flightid) REFERENCES flight(flightid),
    FOREIGN KEY(planeid) REFERENCES plane(id)
);

CREATE TABLE passenger(
    passengerid serial not null primary key,
    firstname varchar(30) not null,
    lastname varchar(30) not null,
    email varchar(100) not null,
    phonenumber varchar(20) not null,
    nationality varchar(40) not null,
    docnumber varchar(50) not null,
    birthday varchar(50) not null
);

CREATE TABLE booking(
    passengerid int not null,
    bookingid serial not null primary key ,
    price int not null,
    seat varchar(10) not null,
    FOREIGN KEY(passengerid) REFERENCES passenger(passengerid)
);

CREATE TABLE bookingFlight(
    bookingid int not null,
    flightid int not null,
    FOREIGN KEY(bookingid) REFERENCES booking(bookingid),
    FOREIGN KEY(flightid) REFERENCES flight(flightid)
);

CREATE TABLE IF NOT EXISTS extras(
    extrasid serial NOT NULL PRIMARY KEY,
    description varchar(100) NOT NULL,
    price int NOT NULL
);

CREATE TABLE IF NOT EXISTS bookingextras(
    extrasid int NOT NULL,
    bookingid int NOT NULL,
    FOREIGN KEY (extrasid) REFERENCES extras(extrasid),
    FOREIGN KEY (bookingid) REFERENCES booking(bookingid)
);

CREATE TABLE IF NOT EXISTS hasextras(
    planeid int NOT NULL,
    extrasid int NOT NULL,
    FOREIGN KEY(planeid) REFERENCES plane(id),
    FOREIGN KEY (extrasid) REFERENCES extras(extrasid)
);

CREATE TABLE flightdiscount (
    flightid int not null PRIMARY KEY,
    discount int not null,
    FOREIGN KEY (flightid) REFERENCES flight(flightid)
);

create table users(
	userId int not null primary key,
	lastName varchar(30) not null,
	firstName varchar(30) not null,
	userRole varchar(30) not null,
	pass_word varchar(255) not null
);

CREATE TABLE airport(
    iata varchar(3) unique not null,
    city varchar(50) not null,
    country varchar(50) not null,
    PRIMARY KEY(iata)
);



--Apply initial data

insert into users(userId,lastName,firstname,userrole,pass_word) values
(0,'Mustermann','Mathias','Sales Managre','TestPassword1'),
(1,'Lift','Lukas','Sales Officer','TestPassword2'),
(2,'Peters','Patric','Sales Employee','TestPassword3');

INSERT INTO airport(iata, city, country) values
(DUS, 'Düsseldorf', 'Germany'),
(DTM, 'Dortmund', 'Germany'),
(AMS, 'Amsterdam', 'Netherlands');

INSERT INTO flight values
                       (1, 'Berlin', 'Amsterdam', '10:30', '12:00', '2023-08-08', '2023-08-08', 200, 'EUR', 1, 'Boeing 737', 150),
                       (2, 'Vilnius', 'Berlin', '20:00', '22:30', '2023-09-01', '2023-09-01', 120, 'EUR', 2, 'Airbus A220', 210);
