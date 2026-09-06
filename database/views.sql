USE LearnSQL;
GO

CREATE VIEW dbo.InventoryOnHand AS
SELECT
    i.ItemID,
    i.ItemNumber,
    i.ItemName,
    i.MaterialType,
    l.LocationID,
    l.LocationName,
    SUM(t.QuantityPounds) AS OnHandPounds
FROM dbo.InventoryTransactions AS t
INNER JOIN dbo.Items AS i
    ON t.ItemID = i.ItemID
INNER JOIN dbo.Locations AS l
    ON t.LocationID = l.LocationID
GROUP BY
    i.ItemID,
    i.ItemNumber,
    i.ItemName,
    i.MaterialType,
    l.LocationID,
    l.LocationName;
GO