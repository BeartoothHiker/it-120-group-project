INSERT INTO Sale (
    SaleId,
    PersonID,
    Item,
    Quantity,
    BillingAddress,
    ShippingAddress,
	DateOrdered,
	DateShipped)
VALUES
    (1, 8, 'Earth Rise puzzle', '2', '161 Brown Street, Chicago, IL, 80092', null, '10/2/2020', '10/4/2020',
    2, 4, 'Earth rise T-shirt', '3', '303 South Market Seattle, WA, 98112', '120 Pine Street, Seattle, WA 98122', '10/09/2020', '10/12/2019',
	3, 9, 'Last Views', '1', '2020 North Street, San Francisco, CA. 99122', null, '10/30/2020', null);
	
INSERT INTO SaleItem (
    SaleItemId,
    Name,
    Description,
    Contents,
    UnitPrice,
    Quantity,
	EnteredDate,
	SaleID)
VALUES
	(1, 'Earth Rise T-Shirt', 'T-shirt with earth rising over moon', '1 T-Shirt', '15.50', 20, '2/15/2020', 2,
	2, 'Earth Rise Puzzle', '1000 piece jigsaw puzzle of earth rising over moon', '1 box', '9.35', 15, '3/1/2020', 1,
	3, 'Endangered Habitats', 'Tabletop book', '1 book', '35.30', 25, '3/1/2020', null,
	4, 'Last Views', '4k UHD bluray documentary on endangered species', '1 blueray', '23.90', 10, '4/12/2020', 3,
	5, 'Call to Action', 'Book on climate change action', '1 book', '6.45', 30, '4/15/2020', null);
	
	