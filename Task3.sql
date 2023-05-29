use new_schema;
CREATE TABLE orders(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
employeeid  TEXT NOT NULL,
amount DECIMAL(5,2) NOT NULL,
orderstatus TEXT NOT NULL);

INSERT INTO new_schema.orders(employeeid, amount, orderstatus)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED'),
('e04', 99.99, 'OPEN');

SELECT id, orderstatus,
	CASE
		WHEN orderstatus = 'OPEN'
			THEN 'Order is in open state.'
		WHEN orderstatus = 'CLOSED' 
			THEN 'Order is closed.'
		WHEN orderstatus = 'CANCELLED'
			THEN 'Order is cancelled.'
	END AS order_summary
FROM 
	orders;



