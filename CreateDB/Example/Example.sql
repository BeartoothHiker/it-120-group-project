-- EXAMPLE scriopt

-- Drop Tables
-- We do this to re-run the Create Table Commands.  
-- !!! Caution !!!
-- Running the DROP scripts wil drop ALL data out of the DB.

-- NOTE: We drop tables in the opposite order of creation

DROP TABLE Event;
DROP TABLE Address;
DROP TABLE Sales;
DROP TABLE person;

DROP TABLE Song;
DROP TABLE AlbumInfo;
DROP TABLE AlbumInfoOld;


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

CREATE TABLE Sales
{
    SaleId integer primary key,
    PersonId integer references(person),
    Item text not null,
    quantity integer,
    BillingAddress integer references(Address) not null,
    ShippingAddress integer references(Address),
    date ordered,
    date shipped
}

CREATE TABLE Address
{
    AddressId integer primary key,
    StreetAddress1 text,
    StreetAddress2 text,
    City text not null,
    State text not null,
    ZipCode integer not null
};

CREATE TABLE Event
{
    EventID integer primary key,
    EventName text,
    EventAddress integer references(Address),
    Price decimal,
    PriceIsFree text,
    EventDate timestamp
};
