/*
-- Empty tables

delete from saleitem;
delete from sale;

delete from eventcomment;
delete from resourcecomment;
delete from comment;

delete from event;
delete from resource;

delete from member;
delete from member;
delete from person;
*/

-- 1. Add persons & members

insert into Person(PersonID, FirstName, LastName, Email, Phone)
values
(1, 'Jill', 'Keller', 'JillKeller@gmail.com', '2065551245'),
(2, 'Mark', 'Lowen', 'lowen@msn.com', null),
(3, 'Wendy', 'Nelson', 'wnelson@yahoo.com', '4565551265'),
(4, 'Krystal', 'Brown', 'krystallball@hotmail.com', '9045552211'),
(5, 'Bob', 'Danielson', 'bd2035@gmail.com','3605552030'),
(6, 'Ta', 'Nguyen', 'tnguyen304@gmail.com', null),
(7, 'Nichole', 'Bradley', 'nicholeb@harvest.org', '2225552323'),
(8, 'Lindsay', 'Peterson', 'lp@msn.com', null),
(9, 'Marcus', 'Tellerman', 'mtellerman@yahoo.com', null),
(10, 'Hamid', 'Brown', 'hamidb@outlook.com', null),
(11, 'Ha', 'li', 'hali@gmail.com', null),
(12, 'Ken', 'Jackson', 'kj202@yahoo.com', null),
(13, 'Wendy', 'Nelson', 'windynelson@morningstar.org', null)
;

insert into member(MemberID, PersonID, DateAdded, NewsletterOptin)
values
(1, 1, '2019-3-29', True),
(2, 2, '2020-4-19', True),
(3, 3, '2020-5-1', True),
(4, 4, '2020-5-20', True),
(5, 5, '2020-6-10', True),
(6, 6, '2020-7-12', True),
(7, 7, '2020-7-15', True)
;

--SELECT Person.PersonID, Person.FirstName, Person.Lastname, Person.email, Member.* 
--FROM Person
--LEFT OUTER JOIN Member ON (Person.PersonId = Member.PersonId); 

-- 2. Add Sale/SaleItem data

-- Issue with table: Item should not be in Sale
-- Removed the "Item" column, and "Item" values from the 3 rows

-- Issue with table: Sale Should have FK reference into SaleItem (Inventory)

-- Issue with DATA below.  It should be referenceing data form SaleItem (inventory) table

INSERT INTO SaleItem (
    SaleItemId,
    ItemName,
    Description,
    Contents,
    UnitPrice,
    Quantity,
    EnteredDate)
VALUES
	(1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', '1 T-Shirt', '15.50', 20, '2/15/2020'),
	(2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising over moon', '1 box', '9.35', 15, '3/1/2020'),
	(3, 'Endangered Habitats', 'Tabletop book', '1 book', '35.30', 25, '3/1/2020'),
	(4, 'Last Views', '4k UHD bluray documentary on endangered species', '1 blueray', '23.90', 10, '4/12/2020'),
	(5, 'Call to Action', 'Book on climate change action', '1 book', '6.45', 30, '4/15/2020');

INSERT INTO Address (
    AddressId,
    address1,
    address2,
    city,
    state,
    postalcode)
VALUES
    (1, '161 Brown Street', null, 'Chicago', 'IL', '80092'),
    (2, '303 South Market', null, 'Seattle', 'WA', '98112'),
    (3, '120 Pine Street', null, 'Seattle', 'WA', '98122'),
    (4, '2020 North Street', null, 'San Francisco', 'CA', '99122');

-- SELECT SaleItemID, ItemName FROM SaleItem;
-- SELECT PersonID, Email FROM Person;

INSERT INTO Sale (
    SaleId,
    SaleItemID,
    PersonID,
    Quantity,
    BillingAddress,
    ShippingAddress,
    Ordered,
    Shipped)
VALUES
    (1, 2, 3, 8, 1, 1, '10/2/2020', '10/4/2020'),
    (2, 1, 3, 4, 2, 3, '10/09/2020', '10/12/2019'),
    (3, 4, 1, 9, 4, 4, '10/30/2020', null);

-- 3a. Add addresses for the Event Locations

INSERT INTO Address (
    AddressId,
    address1,
    address2,
    city,
    state,
    postalcode)
VALUES
    (5, 'Room 313 - Convention Center', '200 Pike Street', 'Seattle', 'WA', '98112'),
    (6, 'UN Convention House 2', 'UN Plaza', 'New York', 'NY', '00231')
;

-- 3b. Insert Events

INSERT INTO Event 
    (EventId, AddressId, EventTitle, EventPrice, EventNotes, EventDate, IsVetted)
VALUES
    (1, 5, 'Convention on Climate Policy', 250.00, null, '12/03/2020 12:00 PM', true),
    (2, 6, 'UN Report on Climate Progress', 0.00, 'Limited seats', '12/03/2020 12:00 PM', true)
;

-- 3c. Insert Comments for Events

-- Deterime MemberID for 'wnelson@yahoo.com'
SELECT Member.MemberID, Person.* 
FROM Member
JOIN Person ON Member.PersonID = Person.PersonID
WHERE Person.Email = 'wnelson@yahoo.com';
-- MemberID = 3

INSERT INTO Comment
    (CommentID, MemberID, Date, Comment)
VALUES
    (1, 3, '10/22/2020 1:00 PM', 'I attended the Convention on Climate policy last year and it was quite enlightening. They had discussions from several high ranking scientists and politicians. Worth the price.')
;

-- 4a. Insert Resources

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 1, 
 1, 
 'https://www.pepnw.org/about-us/',
 'Partnership for Energy progress',
 'The Partnership for Energy Progress is a collaboration of utilities, farmers, workers, small and large businesses, and community advocates across the Northwest. Our goal is to communicate the work we do to provide reliable, affordable energy to homes and businesses, and highlight the progress we\’re making to address climate change.', 
 '09/12/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 2, 
 1, 
 'https://new.siemens.com/us/en/company/sustainability/environmental-action.html',
 'Siemens Company',
 'Siemens is supporting the Decade of Action to accelerate the adoption of sustainable technologies so our customers, our communities and our employees can lead the U.S. towards a low-carbon future', 
 '10/09/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 3, 
 5, 
 'https://www.unep-wcmc.org/',
 'UN Environment Program',
 'UN Environment Programme World Conservation Monitoring Centre is a world leader in biodiversity knowledge. It works with scientists and policy makers worldwide to place biodiversity at the heart of environment and development decision-making to enable enlightened choices for people and the planet.', 
 '10/18/2020 12:00 PM',
 false
);

INSERT INTO Resource
   (ResourceID, MemberID, ResourceLink, Title, Description, Date, IsVetted)
VALUES (
 4, 
 6, 
 'https://climate.nasa.gov/ ',
 'Nasa on Climate Change',
 'Explore a real-time data visualization of NASA’s Earth-orbiting satellites and the data they collect about climate change.',
 '10/25/2020 12:00 PM',
 false
);

-- 4b. Insert comments for Resources

SELECT Member.MemberID, Person.* 
FROM Member
JOIN Person ON Member.PersonID = Person.PersonID
WHERE Person.Email = 'nicholeb@harvest.org';
-- MemberID = 7

INSERT INTO Comment
    (CommentID, MemberID, Date, Comment)
VALUES
    (2, 7, '10/20/2020', 'This sight is gorgeous and useful. Well worth the time to visit and explore its features.')
;


-- 4c. Insert Resource-Comment linking entries

INSERT INTO ResourceComment
    (ResourceCommentID, ResourceID, CommentID)
VALUES(1, 4, 2)
;

-- quick test to validate user
SELECT Comment.*, Person.Email
FROM Comment
JOIN ResourceComment on (ResourceComment.CommentID = Comment.CommentId)
JOIN Member on (Member.MemberID = Comment.MemberID)
JOIN Person on (Person.PersonID = Member.PersonID)
WHERE (ResourceComment.ResourceID = 4); 

-- 5. Insert Donations at this point 

INSERT INTO donation(donationid, personid, amount, date)
VALUES
    (1,10,125.00, '10-14-2020'),
    (2,11,200.00,'10-15-2020'),
    (3,12,15.00,'10-15-2020'),
    (4,13,135.00,'10-16-2020');
