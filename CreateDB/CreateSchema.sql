/*
-- Run this portion of the script to drop tables
-- if we make a change to the schema.

-- Warning Drop tables will delete table & all data.

drop table Donation;
drop table SaleItem;
drop table Sale;

drop table EventComment;
drop table ResourceComment;
drop table Comment;

drop table Event;
drop table Resource;

drop table member cascade;
drop table person cascade;
drop table address cascade;

*/

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
	NewsletterOptin boolean default false
);


CREATE TABLE address
(
    addressid integer primary key,
	address1 text,
	address2 text,
	city text,
	state char(2),
	postalcode text not null
);


CREATE TABLE Sale
(
    SaleId integer primary key,
    PersonId integer references Person(personId) not null,
    Item text not null,
    Quantity integer,
    BillingAddress integer references Address(AddressId) not null,
    ShippingAddress integer references Address(AddressId),
    Ordered timestamp,
    Shipped timestamp
);

CREATE TABLE Donation
(
	DonationID integer primary key,
	PersonId integer references Person(personId) not null,
	Amount decimal not null,
	Date timestamp default current_timestamp
);

CREATE TABLE SaleItem 
(
	SaleItemID integer primary key,
	SaleId integer references Sale(SaleId) not null,
	ItemName text not null,
	Description text,
	Contents text,
	UnitPrice decimal not null,
	Quanity integer	
);

CREATE TABLE Event
(
    EventID integer primary key,
    MemberID integer references Member(MemberId),
	AddressID integer references Address(AddressId),
    EventTitle text not null,
    EventDescription text,
    EventPrice decimal,
    EventNotes text,
    EventDate timestamp,
    IsVetted boolean default false
);

CREATE TABLE Comment
(
    CommentID integer primary key,
    MemberID integer references Member(MemberId) not null,
    Comment text,
    Date timestamp default current_timestamp
);

CREATE TABLE EventComment
(
    EventCommentID integer primary key,
    EventID integer references Event(EventId) not null,
    CommentID integer references Comment(CommentId) not null
);

CREATE TABLE Resource  
(
    ResourceID integer primary key,
    MemberID integer references Member(MemberId),
    ResourceLink integer not null,
    Title text not null,
    Description text,
    Date timestamp,
    IsVetted boolean default false
);

CREATE TABLE ResourceComment
(
    ResourceCommentID integer primary key,
    ResourceID integer references Resource(ResourceID) not null,
    CommentID integer references Comment(CommentID) not null
);

