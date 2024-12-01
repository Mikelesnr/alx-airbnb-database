USE airbnb;

SELECT u.user_id, first_name, last_name, COUNT(*) AS total_bookings
FROM User u
JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name;

SELECT p.property_id, name, COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;

SELECT p.property_id, name, COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;
