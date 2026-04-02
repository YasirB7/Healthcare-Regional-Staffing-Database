USE HealthcareDB;

INSERT INTO Regions VALUES
(1, 'North'),
(2, 'South'),
(3, 'East'),
(4, 'West');

INSERT INTO Directors VALUES
(1, 'Sarah Johnson', 1),
(2, 'Michael Lee', 2),
(3, 'Alicia Brown', 3),
(4, 'David Clark', 4);

INSERT INTO Teams VALUES
(1, 'Care Team A', 1),
(2, 'Care Team B', 1),
(3, 'Care Team C', 2),
(4, 'Care Team D', 3),
(5, 'Care Team E', 4);

INSERT INTO RNs VALUES
(1, 'Emily Davis', 1),
(2, 'James Carter', 1),
(3, 'Olivia Moore', 2),
(4, 'Liam Harris', 2),
(5, 'Sophia Walker', 3),
(6, 'Noah Hall', 3),
(7, 'Ava Allen', 4),
(8, 'Elijah Young', 5);

INSERT INTO Contacts VALUES
(1, 1, '555-1001', 'emily.davis@email.com'),
(2, 2, '555-1002', 'james.carter@email.com'),
(3, 3, '555-1003', 'olivia.moore@email.com'),
(4, 4, '555-1004', 'liam.harris@email.com'),
(5, 5, '555-1005', 'sophia.walker@email.com'),
(6, 6, '555-1006', 'noah.hall@email.com'),
(7, 7, '555-1007', 'ava.allen@email.com'),
(8, 8, '555-1008', 'elijah.young@email.com');
