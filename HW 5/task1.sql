-- 1

select bill_date, bill_total
from restBill        
where cust_name = "bob crow";   

-- 2

SELECT distinct cust_name
FROM restBill
WHERE cust_name like "%Smith"
ORDER BY cust_name DESC;        

-- 3

SELECT distinct cust_name
FROM restBill
WHERE cust_name like "% C%";

-- 4

SELECT DISTINCT first_name, surname
FROM restStaff 
WHERE headwaiter is not null;

-- 5

select *
from restBill
where bill_date between 160201 and 160229;

-- 6

SELECT DISTINCT bill_date
FROM restBill
WHERE bill_date BETWEEN 150101 AND 151231
ORDER BY bill_date;
