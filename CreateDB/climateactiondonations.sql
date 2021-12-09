select * from person;
select * from person where email = 'hamidb@outlook.com';

insert into donation(donationid, personid, amount, date)
values
(1,10,125.00, '10-14-2020')

insert into donation(donationid, personid, amount, date)
values
(2,11,200.00,'10-15-2020'),
(3,12,15.00,'10-15-2020'),
(4,13,135.00,'10-16-2020');

select * from donation;


