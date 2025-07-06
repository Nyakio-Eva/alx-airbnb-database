-- Create Parent Table (Partitioned)

CREATE TABLE bookings (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    property_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

CREATE TABLE bookings_2025_08 PARTITION OF bookings
    FOR VALUES FROM ('2025-08-01') TO ('2025-09-01');

CREATE TABLE bookings_2025_09 PARTITION OF bookings
    FOR VALUES FROM ('2025-09-01') TO ('2025-10-01');

SELECT * FROM bookings WHERE start_date BETWEEN '2025-08-01' AND '2025-08-31';

-- Use EXPLAIN ANALYZE on Both Tables
-- Unpartitioned Table (before partitioning)

EXPLAIN ANALYZE
SELECT * FROM bookings_unpartitioned
WHERE start_date BETWEEN '2025-08-01' AND '2025-08-31';
-- Partitioned Table
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-08-01' AND '2025-08-31';

