-- task 3

-- 1

SELECT DISTINCT first_name, surname
FROM restBill 
JOIN restStaff ON waiter_no = staff_no
WHERE cust_name = 'tanya singh';

-- 2

SELECT rm.room_date
FROM restRoom_management rm
JOIN restStaff s ON rm.headwaiter = s.staff_no
WHERE s.first_name = 'Charles'
  AND rm.room_name = 'Green'
  AND rm.room_date BETWEEN 160201 AND 160229;
  
-- 3

SELECT DISTINCT s.first_name, s.surname
FROM restStaff z
JOIN restStaff s ON z.headwaiter = s.headwaiter OR z.staff_no = s.headwaiter
WHERE z.first_name = 'Zoe' AND z.surname = 'Ball'
	AND s.first_name != z.first_name;
    
-- 4

SELECT b.cust_name, b.bill_total, s.first_name AS waiter_first_name, s.surname AS waiter_surname
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
ORDER BY b.bill_total DESC;

-- 5

SELECT DISTINCT s.first_name, s.surname
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE b.table_no IN (
    SELECT table_no
    FROM restBill
    WHERE bill_no IN (00014, 00017)
);
 
-- 6

SELECT DISTINCT s.first_name, s.surname
FROM restStaff s
JOIN restBill b ON b.waiter_no = s.staff_no
JOIN restRest_table t ON b.table_no = t.table_no
WHERE t.room_name = 'Blue'
  AND b.bill_date = 160312
UNION
SELECT s.first_name, s.surname
FROM restStaff s
JOIN restRoom_management rm ON rm.headwaiter = s.staff_no
WHERE rm.room_name = 'Blue'
  AND rm.room_date = 160312;
