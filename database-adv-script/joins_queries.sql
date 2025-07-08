-- INNER JOIN – Bookings with User Info
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.id;

--  LEFT JOIN – Properties and Their Reviews
SELECT *
FROM 
    properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN – Users and Bookings (All Rows)

SELECT *
FROM 
    users
FULL OUTER JOIN bookings ON users.users.id = bookings.user_id;