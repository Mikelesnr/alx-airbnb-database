USE airbnb;

CREATE TABLE Booking_Partitioned (
	booking_id CHAR(36) ,
    property_id CHAR(36),
    user_id CHAR(36),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p0 VALUES LESS THAN (2024-12-30),
    PARTITION p1 VALUES LESS THAN (2025-01-30)
);

INSERT INTO Booking_Partitioned (booking_id, user_id, property_id, start_date, end_date,total_price)
SELECT booking_id, user_id, property_id, start_date, end_date, total_price
FROM Booking;

-- Query on the original table
EXPLAIN SELECT * FROM Booking WHERE start_date BETWEEN 2024-12-01 AND 2025-01-31;

-- Query on the partitioned table
EXPLAIN SELECT * FROM Booking_Partitioned WHERE start_date BETWEEN 2024-12-01 AND 2025-01-31;
