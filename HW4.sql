-- HW4

-- INNER join orders,orderdetails,products and customers. Return back: orderNumber, priceEach, quantityOrdered, productName, productLine, city, country, orderDate
USE classicmodels;
SELECT
   orders.orderNumber AS SalesId,
   orderdetails.priceEach AS Price,
   orderdetails.quantityOrdered AS Unit,
   products.productName AS Product,
   products.productLine As Brand,
   customers.city As City,
   customers.country As Country,
   orders.orderDate AS Date,
   WEEK(orders.orderDate) as WeekOfYear
FROM
	orders
INNER JOIN
	orderdetails USING (orderNumber)
INNER JOIN
	products USING (productCode)
INNER JOIN
	customers USING (customerNumber);