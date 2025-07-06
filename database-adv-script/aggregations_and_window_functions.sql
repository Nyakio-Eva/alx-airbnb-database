-- Total Bookings per User (Using GROUP BY)
SELECT 
    u.id AS user_id,
    u.email,
    COUNT(b.id) AS total_bookings
FROM 
    users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY 
    u.id, u.email
ORDER BY 
    total_bookings DESC;


-- Rank Properties by Total Bookings (Using RANK() Window Function)
SELECT 
    p.id AS property_id,
    p.title,
    COUNT(b.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.id) DESC) AS rank
FROM 
    properties p
LEFT JOIN bookings b ON p.id = b.property_id
GROUP BY 
    p.id, p.title
ORDER BY 
    rank;
