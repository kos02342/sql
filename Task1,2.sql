use new_schema;
CREATE TABLE sales(
id INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
order_date TEXT NOT NULL,
bucket INT NOT NULL);
INSERT INTO new_schema. sales (order_date, bucket)
VALUES
(2021-01-01, 234),
(2021-01-02, 123),
(2021-01-03, 34),
(2021-01-04, 244),
(2021-01-05, 36);
SELECT
	*,
CASE
	WHEN bucket < 100
		THEN 'Маленький заказ'
	WHEN bucket > 100 and bucket < 300
		THEN 'Средний заказ'
	WHEN bucket > 300
		Then 'Большой заказ'
END as grade
FROM 
	sales;