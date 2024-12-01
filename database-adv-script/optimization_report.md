EXPLAIN SELECT b.booking_id, b.start_date, u.user_id, u.first_name, p.property_id, p.name, pay.payment_id, pay.amount FROM Booking b JOIN User u ON b.user_id = u.user_id JOIN Property p ON b.property_id = p.property_id JOIN Payment pay ON b.booking_id = pay.booking_id

22:32:45 EXPLAIN SELECT b.booking_id, b.start_date, u.user_id, u.first_name, p.property_id, p.name, pay.payment_id, pay.amount FROM Booking b JOIN User u ON b.user_id = u.user_id JOIN Property p ON b.property_id = p.property_id JOIN Payment pay ON b.booking_id = pay.booking_id 4 row(s) returned 0.00077 sec / 0.000018 sec
