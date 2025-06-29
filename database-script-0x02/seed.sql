INSERT INTO "user" (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('a1b2c3d4-0001-0000-0000-000000000001', 'Eva', 'Kariuki', 'eva@gmail.com', 'hashed_password_1', '0712345678', 'guest', CURRENT_TIMESTAMP),
('a1b2c3d4-0002-0000-0000-000000000002', 'Brian', 'Kamau', 'brian@yahoo.com', 'hashed_password_2', '0723456789', 'host', CURRENT_TIMESTAMP),
('a1b2c3d4-0003-0000-0000-000000000003', 'Admin', 'User', 'admin@hotmail.com', 'hashed_password_3', NULL, 'admin', CURRENT_TIMESTAMP);

INSERT INTO property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('b1c2d3e4-0001-0000-0000-000000000001', 2, 'Cozy Apartment', 'A nice and cozy place in Nairobi.', 'Nairobi', 4500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b1c2d3e4-0002-0000-0000-000000000002', 2, 'Beach House', 'A relaxing beach house in Mombasa.', 'Mombasa', 9000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('c1d2e3f4-0001-0000-0000-000000000001', 1, 1, '2025-07-10', '2025-07-12', 9000.00, 'confirmed', CURRENT_TIMESTAMP),
('c1d2e3f4-0002-0000-0000-000000000002', 2, 1, '2025-08-01', '2025-08-05', 36000.00, 'pending', CURRENT_TIMESTAMP);

INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('d1e2f3g4-0001-0000-0000-000000000001', 1, 9000.00, CURRENT_TIMESTAMP, 'credit_card'),
('d1e2f3g4-0002-0000-0000-000000000002', 2, 36000.00, CURRENT_TIMESTAMP, 'paypal');

INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('e1f2g3h4-0001-0000-0000-000000000001', 1, 1, 5, 'Loved the stay! Very clean and quiet.', CURRENT_TIMESTAMP),
('e1f2g3h4-0002-0000-0000-000000000002', 2, 1, 4, 'Great house but a bit far from the city.', CURRENT_TIMESTAMP);

INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('f1g2h3i4-0001-0000-0000-000000000001', 1, 2, 'Hi, is your apartment available on 10th July?', CURRENT_TIMESTAMP),
('f1g2h3i4-0002-0000-0000-000000000002', 2, 1, 'Yes, it is! Looking forward to hosting you.', CURRENT_TIMESTAMP);
