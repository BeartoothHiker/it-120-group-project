/*This is the script for the Farm Fresh Co-op
database */
;

DROP TABLE inventory;
DROP TABLE address;
DROP TABLE employeeJob;
DROP TABLE employee ;
DROP TABLE jobtype ;
DROP TABLE coopmember ;
 
drop table member;
drop table person;

CREATE TABLE person
(
	personid integer primary key,
	lastname text not null,
	firstname text,
	email text not null,
	phone text
);

CREATE TABLE member
(
	memberid integer primary key,
	personid integer references person(personid),
	DateAdded Date not null,
	NewsletterOptin boolean not null
);





CREATE TABLE address
(
    addressid integer primary key,
	personid integer references person(personid),
	address1 text,
	address2 text,
	city text,
	state char(2),
	postalcode text not null
);

CREATE TABLE inventory
(
    inventoryid integer primary key,
	entrydate date not null,
	description text not null,
	units text not null,
    priceperunit numeric not null,
	quantity integer not null
);

