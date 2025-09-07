-- Question 1 
-- Get the firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine employees with offices on officeCode.
-- ===============================================

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o 
    ON e.officeCode = o.officeCode;


-- Question 2 
-- Get the productName, productVendor, and productLine from products.
-- Use a LEFT JOIN to include all products and match with productlines.
-- ===============================================

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;


-- Question 3 
-- Retrieve the orderDate, shippedDate, status, and customerNumber 
-- for the first 10 orders.
-- Use a RIGHT JOIN to combine customers with orders on customerNumber.
-- ===============================================

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;
