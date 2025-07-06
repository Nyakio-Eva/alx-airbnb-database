-- INNER JOIN – Bookings with User Info
SELECT 
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.email
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.id;

--  LEFT JOIN – Properties and Their Reviews
SELECT 
    properties.id AS property_id,
    properties.title,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN – Users and Bookings (All Rows)

SELECT 
    users.id AS user_id,
    users.email,
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;