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

CREATE TABLE Sale
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

CREATE TABLE Donation 
(
	DonationID integer primary key,
	PersonId integer references Person(personId) not null,
	email text not null,
	Amount decimal,
	Date timestamp
);


CREATE TABLE SaleItem 
(
	SaleItemID integer primary key,
	SaleId integer references Sale(SaleId) not null,
	name text not null,
	Description text not null,
	Contents text not null,
	UnitPrice decimal not null,
	Quanity integer not null
	
	
);


CREATE TABLE Event
(
    EventID integer primary key,
    MemberID integer references Member(MemberId) not null,
    EventTitle text,
    AddressID integer references Address(AddressId) not null,
    EventDescription text,
    EventPrice integer,
    EventNotes text,
    IsVetted text
);


CREATE TABLE EventComment
(
    EventCommentID integer primary key,
    EventID text,
    CommentID text,
);

CREATE TABLE Comment
(
    CommentID integer primary key,
    MemberID integer references Member(MemberId) not null,
    Date timestamp,
    Comment text
    
);


CREATE TABLE Resource
(
    ResourceID integer primary key,
    MemberID integer references Member(MemberId) not null,
    ResourceLink integer not null,
    Title text not null,
    Description text not null,
    Date timestamp,
    IsVetted text
    
);

CREATE TABLE ResourceComment
(
    ResourceCommentID integer primary key,
    ResourceID integer references Resource(ResourceId) not null,   <-----issue here??
    CommentID integer references Comment(CommentId) not null
    
);













