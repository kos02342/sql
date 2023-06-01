use new_schema;

SELECT city, sname, snum, comm FROM SALESPEOPLE;

SELECT rating,cname FROM customers WHERE city = 'San Jose';

SELECT DISTINCT snum FROM orders;

SELECT * FROM orders WHERE amt > 1000;

SELECT * FROM customers WHERE rating > 100 OR NOT city = 'Rome';

