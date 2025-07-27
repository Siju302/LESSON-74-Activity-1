-- Create the Salesman table if it does not exist
CREATE TABLE
IF NOT EXISTS Salesman
(
    Salesman_id TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Commission REAL
);

-- Insert sample data into the Salesman table
INSERT INTO Salesman
    (Salesman_id, name, city, Commission)
VALUES
    ('5001', 'James Hong', 'New York', 0.15),
    ('5002', 'Nail Knite', 'Paris', 0.13),
    ('5005', 'Pit Alex', 'London', 0.11),
    ('5006', 'Mc Lyon', 'Paris', 0.14),
    ('5007', 'Paul Adam', 'Rome', 0.13),
    ('5003', 'Lauson Hen', 'San Jose', 0.12);

-- Create the Customer table if it does not exist
CREATE TABLE
IF NOT EXISTS Customer
(
    customer_id TEXT,
    cust_name TEXT PRIMARY KEY,
    city TEXT,
    grade INTEGER,
    Salesman_id TEXT,
    FOREIGN KEY
(Salesman_id) REFERENCES Salesman
(Salesman_id)
);

-- Insert sample data into the Customer table
INSERT INTO Customer
    (customer_id, cust_name, city, grade, Salesman_id)
VALUES
    ('3002', 'Nick Rimando', 'New York', 100, '5001'),
    ('3007', 'Brad Davis', 'New York', 200, '5001'),
    ('3005', 'Graham Zusi', 'California', 200, '5002'),
    ('3008', 'Julian Green', 'London', 300, '5002'),
    ('3004', 'Fabian Johnson', 'Paris', 300, '5006'),
    ('3009', 'Geoff Cameron', 'Berlin', 100, '5003'),
    ('3003', 'Jozy Altidor', 'Moscow', 200, '5007'),
    ('3001', 'Brad Guzan', 'London', NULL, '5005');

-- Create the Orders table if it does not exist
CREATE TABLE
IF NOT EXISTS Orders
(
    ord_no TEXT PRIMARY KEY,
    punch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,    
    Salesman_id TEXT,
    FOREIGN KEY
(customer_id) REFERENCES Customer
(customer_id)
    FOREIGN KEY
(Salesman_id) REFERENCES Salesman
(Salesman_id)
);