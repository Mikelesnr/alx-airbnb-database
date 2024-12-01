SET profiling = 1;

SELECT
b.booking_id,
b.start_date,
u.user_id,
u.first_name,
p.property_id,
p.name,
pay.payment_id,
pay.amount
FROM
Booking b
JOIN
User u ON b.user_id = u.user_id
JOIN
Property p ON b.property_id = p.property_id
JOIN
Payment pay ON b.booking_id = pay.booking_id
WHERE
b.start_date BETWEEN '2023-01-01' AND '2023-12-31';

-- Show profile information
SHOW PROFILE FOR QUERY 1;

SHOW PROFILE FOR QUERY 1

Status Duration
Starting 0.000107
checking permissions 0.000007
Opening tables 0.000028
After opening tables 0.000006
System lock 0.000005
table lock 0.000008
Opening tables 0.000013
After opening tables 0.000003
System lock 0.000003
table lock 0.000058
closing tables 0.000003
Unlocking tables 0.000004
closing tables 0.000028
init 0.000021
End of update loop 0.000005
Query end 0.000003
Rollback 0.000004
Query end 0.000002
closing tables 0.000002
Unlocking tables 0.000002
closing tables 0.000004
Query end 0.000003
Starting cleanup 0.000002
Freeing items 0.000006
Updating status 0.000036
Reset for next command 0.000004
