USE airbnb;

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
WHERE
    u.first_name = "John" AND u.last_name = "Doe"
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;

EXPLAIN SELECT 
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
WHERE
    u.first_name = "John" AND u.last_name = "Doe"
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
JOIN 
    Payment pay ON b.booking_id = pay.booking_id;