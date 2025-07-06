 Choose High-Frequency Queries
Let’s say the following are common:

Query 1: Get bookings for a user
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'abc-123';
Query 2: Search properties by location and price

EXPLAIN ANALYZE
SELECT * FROM properties
WHERE location = 'Nairobi' AND price_per_night <= 100;
Query 3: Join bookings and users

EXPLAIN ANALYZE
SELECT b.*, u.email FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE b.start_date >= CURRENT_DATE;
Analyze the Output
Observed Issue	Diagnosis from EXPLAIN	Suggested Fix
Seq Scan on bookings	No index on user_id or start_date	Add indexes on bookings(user_id) and bookings(start_date)
Seq Scan on properties	No index on location or price_per_night	Add a composite index on (location, price_per_night)
Join cost high	User table scan for each booking	Ensure users(id) is indexed

3. Implement Changes (Indexes)

-- Improve user lookup in bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Improve filtering on start_date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Composite index for property search
CREATE INDEX idx_properties_location_price ON properties(location, price_per_night);

-- Ensure users table is optimized for joins
CREATE INDEX idx_users_id ON users(id);
4. Compare Performance Before and After
Before Indexing
Query	Execution Time
Bookings by user	380 ms
Search properties	420 ms
Join bookings + users	510 ms

After Indexing
Query	Execution Time
Bookings by user	50 ms 
Search properties	75 ms 
Join bookings + users	95 ms 

Sample Optimization Report

# Performance Optimization Report

## Issue Summary
Frequent queries on `bookings` and `properties` were slow due to sequential scans and unindexed joins.

## Changes Implemented
- Indexed `bookings(user_id)` and `bookings(start_date)`
- Indexed `properties(location, price_per_night)`
- Ensured `users(id)` was indexed

## Results
Execution time improved by 75–90% across critical queries. Most performance gains were observed in:
- Filtering large tables
- Optimized joins
- Index-aware query planning

## Recommendation
Monitor slow queries regularly (e.g., via pg_stat_statements or MySQL slow query log). Maintain and rotate indexes based on usage patterns.