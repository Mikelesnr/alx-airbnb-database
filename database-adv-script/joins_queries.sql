USE airbnb;


SELECT 
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM 
    Booking
INNER JOIN 
    User ON Booking.user_id = User.user_id;
    
SELECT 
    Property.property_id,
    Property.name,
    Property.description AS description,
    Property.location,
    Property.pricepernight AS price,
    Review.review_id,
    Review.rating,
    Review.comment,
    Review.created_at
FROM 
    Property
LEFT JOIN 
    Review ON Property.property_id = Review.property_id
ORDER BY Property.name ASC;

SELECT u.user_id, u.first_name, u.last_name, b.booking_id, b.property_id, b.booking_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
