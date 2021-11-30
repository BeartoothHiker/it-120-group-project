/*This is the script for the Farm Fresh Co-op
database */
;

DROP TABLE inventory;
DROP TABLE address;
DROP TABLE employeeJob;
DROP TABLE employee ;
DROP TABLE jobtype ;
DROP TABLE coopmember ;
 

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
	lastRenewed Date not null
);

CREATE TABLE jobtype
(
	jobtypeid integer primary key,
	typename text not null,
	description text
);

CREATE TABLE employee
(
	employeeid integer primary key,
	personid integer references person(personid),
	startdate date not null
);

--linking table to resolve many-to-many
--in which each employee can hold
--many jobs
CREATE TABLE employeeJob
(
	employeeid integer references employee(employeeid),
	jobtypeid integer references jobtype(jobtypeid),
	primary key(employeeid, jobtypeid)
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

