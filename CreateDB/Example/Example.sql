
drop table member;
drop table person cascade;
drop table address cascade;

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
	address1 text,
	address2 text,
	city text,
	state char(2),
	postalcode text not null
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

CREATE TABLE SaleItem 
(
	SaleItemID integer primary key,
	SaleId integer references Sale(SaleId) not null,
	name text not null,
	Description text not null,
	Contents text not null,
	UnitPrice decimal not null,
	Quanity decimal not null	
);



CREATE TABLE Event
(
    EventID integer primary key,
    MemberID integer references Member(MemberId) not null,
	AddressID integer references Address(AddressId) not null,
    EventTitle text,
    EventDescription text,
    EventPrice decimal,
    EventNotes text,
    IsVetted text
);
--drop table eventcomment; 

CREATE TABLE EventComment
(
    EventCommentID integer primary key,
    EventID integer references Event(EventId) not null,
    CommentID integer references Comment(CommentId) not null
);


CREATE TABLE Comment
(
    CommentID integer primary key,
    MemberID integer references Member(MemberId) not null,
    Date timestamp,
    Comment text
    
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
    ResourceID integer references Resource(ResourceID) not null,
    CommentID integer references Comment(CommentID) not null
    
);


	
	





