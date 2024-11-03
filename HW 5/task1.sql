-- 1
SELECT bill_date, bill_total 
FROM restBill 
WHERE cust_name = 'Bob Crow';

-- 2
SELECT DISTINCT CONCAT(first_name, ' ', surname) AS customer_name 
FROM restBill 
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no 
WHERE surname = 'Smith' 
ORDER BY customer_name DESC;

-- 3
SELECT DISTINCT CONCAT(first_name, ' ', surname) AS customer_name 
FROM restBill 
JOIN restStaff ON restBill.waiter_no = restStaff.staff_no 
WHERE first_name LIKE 'C%';

-- 4
SELECT DISTINCT CONCAT(first_name, ' ', surname) AS headwaiter_name 
FROM restStaff 
WHERE headwaiter IS NULL;

-- 5
SELECT * 
FROM restBill 
WHERE bill_date BETWEEN 160201 AND 160229;

-- 6
SELECT DISTINCT bill_date 
FROM restBill 
WHERE bill_date BETWEEN 150101 AND 151231 
ORDER BY bill_date;
