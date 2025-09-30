
-- ecommerce_data.sql
INSERT INTO Customers VALUES (1, 'Alice Smith', 'alice@example.com', '2024-01-15');
INSERT INTO Customers VALUES (2, 'Bob Johnson', 'bob@example.com', '2024-02-20');

INSERT INTO Products VALUES (1, 'Laptop', 55000.00, 10);
INSERT INTO Products VALUES (2, 'Smartphone', 25000.00, 25);

INSERT INTO Orders VALUES (1, 1, '2024-06-01', 80000.00);
INSERT INTO Orders VALUES (2, 2, '2024-06-05', 25000.00);

INSERT INTO OrderItems VALUES (1, 1, 1, 1);
INSERT INTO OrderItems VALUES (2, 1, 2, 1);
INSERT INTO OrderItems VALUES (3, 2, 2, 1);

INSERT INTO Payments VALUES (1, 1, '2024-06-01', 80000.00, 'Credit Card');
INSERT INTO Payments VALUES (2, 2, '2024-06-05', 25000.00, 'UPI');
