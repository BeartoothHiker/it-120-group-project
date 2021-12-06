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