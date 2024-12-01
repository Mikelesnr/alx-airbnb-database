USE airbnb;

-- Sample Data for User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '0987654321', 'host', CURRENT_TIMESTAMP),
('3e4d5c6b-7a8f-9e0d-1c2b-3a4b5c6d7e8f', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', '1122334455', 'admin', CURRENT_TIMESTAMP);

-- Sample Data for Property Table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', 'Cozy Cottage', 'A cozy cottage in the countryside.', 'Countryside', 100.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', 'Beach House', 'A beautiful beach house with ocean views.', 'Beachside', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Sample Data for Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('6e7d8c9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2024-12-01', '2024-12-07', 700.00, 'confirmed', CURRENT_TIMESTAMP),
('7e8d9c0b-1a2f-3e4d-5c6b-7a8b9c0d1e2f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2024-12-15', '2024-12-20', 1000.00, 'pending', CURRENT_TIMESTAMP),
('10e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2024-12-10', '2024-12-12', 300.00, 'confirmed', CURRENT_TIMESTAMP),
('11e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2024-12-20', '2024-12-22', 400.00, 'confirmed', CURRENT_TIMESTAMP),
('12e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2024-12-25', '2024-12-27', 300.00, 'confirmed', CURRENT_TIMESTAMP),
('13e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2025-01-05', '2025-01-07', 400.00, 'confirmed', CURRENT_TIMESTAMP),
('14e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2025-01-15', '2025-01-17', 300.00, 'confirmed', CURRENT_TIMESTAMP),
('15e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '2024-12-05', '2024-12-08', 400.00, 'confirmed', CURRENT_TIMESTAMP),
('16e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '2024-12-18', '2024-12-21', 600.00, 'confirmed', CURRENT_TIMESTAMP),
('17e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '2024-12-28', '2024-12-30', 400.00, 'confirmed', CURRENT_TIMESTAMP),
('18e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '2025-01-10', '2025-01-12', 600.00, 'confirmed', CURRENT_TIMESTAMP),
('19e7dc9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '2025-01-20', '2025-01-23', 400.00, 'confirmed', CURRENT_TIMESTAMP);

-- Sample Data for Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('8e9d0c1b-2a3f-4e5d-6c7b-8a9b0c1d2e3f', '6e7d8c9b-0a1f-2e3d-4c5b-6a7b8c9d0e1f', 700.00, CURRENT_TIMESTAMP, 'credit_card'),
('9e0d1c2b-3a4f-5e6d-7c8b-9a0b1c2d3e4f', '7e8d9c0b-1a2f-3e4d-5c6b-7a8b9c0d1e2f', 1000.00, CURRENT_TIMESTAMP, 'paypal');

-- Sample Data for Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('0e1d2c3b-4a5f-6e7d-8c9b-0a1b2c3d4e5f', '4e5d6c7b-8a9f-0e1d-2c3b-4a5b6c7d8e9f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', 5, 'Amazing stay! Highly recommend.', CURRENT_TIMESTAMP),
('1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '5e6d7c8b-9a0f-1e2d-3c4b-5a6b7c8d9e0f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', 4, 'Great location, but a bit noisy.', CURRENT_TIMESTAMP);

-- Sample Data for Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', 'Hi Jane, I have a question about the property.', CURRENT_TIMESTAMP),
('3e4d5c6b-7a8f-9e0d-1c2b-3a4b5c6d7e8f', '2e3d4c5b-6a7f-8e9d-0c1b-2a3b4c5d6e7f', '1e2d3c4b-5a6f-7e8d-9c0b-1a2b3c4d5e6f', 'Hi John, sure, what would you like to know?', CURRENT_TIMESTAMP);
