USE LearnSQL;
GO

INSERT INTO Items
VALUES
(1, 'BRZ-001', 'Bronze Bar Stock', 'Bronze'),
(2, 'BRZ-002', 'Bronze Casting Stock', 'Bronze'),
(3, 'AL-001', 'Aluminum Bar Stock', 'Aluminum');

INSERT INTO Locations
VALUES
(1, 'North Plant'),
(2, 'South Plant'),
(3, 'Central Warehouse');

INSERT INTO InventoryTransactions
VALUES
(1, 1, 1, '2026-09-01', 'Receipt', 5000),
(2, 1, 1, '2026-09-02', 'Usage', -1200),
(3, 2, 1, '2026-09-02', 'Receipt', 3000),
(4, 1, 2, '2026-09-03', 'Receipt', 2500),
(5, 2, 2, '2026-09-03', 'Usage', -800),
(6, 3, 2, '2026-09-04', 'Receipt', 4000),
(7, 1, 3, '2026-09-04', 'Receipt', 1800);
GO