-- 1

SELECT SUM(bill_total) AS Income
FROM restBill;

-- 2 

SELECT SUM(bill_total) AS 'Feb Income'
FROM restBill
where bill_date between 160201 and 160229;

-- 3

SELECT AVG(bill_total) AS Average_Bill
FROM restBill;

-- 4

SELECT 
    MIN(no_of_seats) AS Min, 
    MAX(no_of_seats) AS Max, 
    AVG(no_of_seats) AS Avg
FROM restRest_table
WHERE room_name = 'Blue';

-- 5

SELECT COUNT(DISTINCT table_no) AS Distinct_Tables
FROM restBill
WHERE waiter_no IN (004, 002);
