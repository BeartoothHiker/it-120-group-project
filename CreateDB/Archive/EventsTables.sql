
INSERT INTO Address (
    AddressId,
    address1,
    address2,
    city,
    state,
    postalcode)
VALUES
    (1, 'Room 313 - Convention Center', '200 Pike Street', 'Seattle', 'WA', '98112'),
    (2, 'UN Convention House 2', 'UN Plaza', 'New York', 'NY', '00231')
;

INSERT INTO Event 
    (EventId, AddressId, EventTitle, EventPrice, EventNotes, EventDate, IsVetted)
VALUES
    (1, 1, 'Convention on Climate Policy', 250.00, null, '12/03/2020 12:00 PM', true),
    (2, 2, 'UN Report on Climate Progress', 0.00, 'Limited seats', '12/03/2020 12:00 PM', true)
;

INSERT INTO person
    (PersonId, FirstName, LastName, Email, Phone)
VALUES
    (1, 'Wendy', 'Nelson', 'wnelson@yahoo.com', '456-555-1265')
;

INSERT INTO Member
    (memberid, personid, DateAdded)
VALUES
    (1, 1, '5/1/2020')
;
