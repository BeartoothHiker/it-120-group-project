-- EXAMPLE scriopt

-- Drop Tables
-- We do this to re-run the Create Table Commands.  
-- !!! Caution !!!
-- Running the DROP scripts wil delete ALL data out of the DB.

DROP TABLE AlbumInfoOld;

-- Delay dropping 'AlbumInfo' table because 'Song' depends on it
DROP TABLE Song;
DROP TABLE AlbumInfo;


-- Delay dropping 'Address' table because Sales/Event depend on it
DROP TABLE Sales;
DROP TABLE Event;

-- Drop person table after tables that depend on it
DROP TABLE person;

-- Drop Address table after tables that depend on it
DROP TABLE Address;


-- Definition: "Entity"
-- describes contents of a table (essentially column names & types)

-- First Normal Form:  Remove repated groups from an "Entity"
-- You do this by creating table that contains the 'type' of repeated data
-- Each entry will have a FOREIGN KEY into the orginal table.



-- Before Nomralization

CREATE TABLE AlbumInfoOld
(
    AlbumId integer primary key,
    SongName1 text,
    SongName2 text,
    SongName3 text
);

-- After Normalization, seprate Album/Songs
-- Songs have a Many-to-One relationship with Albums.

CREATE TABLE AlbumInfo
(
    AlbumId integer primary key,
	AlbumName text
);

CREATE TABLE Song
(
    SongId integer primary key,
    AlbumID integer references AlbumInfo(AlbumId),  --  Foreign Key into Album Table
    SongName text,
    TrackLength time
);

-- Some tables we'll use with actual project.

CREATE TABLE person
(
	personId serial primary key,
	firstName text not null,
	lastname text not null,
	email text not null,
	phone text
);


CREATE TABLE Address
(
    AddressId integer primary key,
    StreetAddress1 text,
    StreetAddress2 text,
    City text not null,
    State text not null,
    ZipCode integer not null
);

CREATE TABLE Sales
(
    SaleId integer primary key,
    PersonId integer references Person(personId) not null,
    Item text not null,
    quantity integer,
    BillingAddress integer references Address(AddressId) not null,
    ShippingAddress integer references Address(AddressId),
    Ordered timestamp,
    Shipped timestamp
);

CREATE TABLE Donations 
(
	DonationID integer primary key,
	PersonId integer references Person(personId) not null,
	email text not null,
	Amount decimal,
	Date timestamp
);











CREATE TABLE Event
(
    EventID integer primary key,
    EventName text,
    EventAddress integer references Address(AddressId),
    Price decimal,
    PriceIsFree text,
    EventDate timestamp
);
