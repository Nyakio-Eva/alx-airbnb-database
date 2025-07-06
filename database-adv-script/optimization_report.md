Potential Inefficiencies:
-- - Full table scans on users, properties, or payments
-- - No WHERE clause to limit result set
-- - LEFT JOIN might be unnecessary if payments always exist



Optimization Strategies:
-- - LIMIT used to reduce output
-- - WHERE clause narrows scope to future bookings
-- - Indexed fields (b.user_id, b.property_id, pay.booking_id, b.start_date) improve join performance