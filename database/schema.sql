USE LearnSQL;
GO

CREATE TABLE Items (
    ItemID INT NOT NULL PRIMARY KEY,
    ItemNumber VARCHAR(50) NOT NULL,
    ItemName VARCHAR(100) NOT NULL,
    MaterialType VARCHAR(50) NOT NULL
);

CREATE TABLE Locations (
    LocationID INT NOT NULL PRIMARY KEY,
    LocationName VARCHAR(100) NOT NULL
);

CREATE TABLE InventoryTransactions (
    TransactionID INT NOT NULL PRIMARY KEY,
    ItemID INT NOT NULL,
    LocationID INT NOT NULL,
    TransactionDate DATE NOT NULL,
    TransactionType VARCHAR(20) NOT NULL,
    QuantityPounds DECIMAL(18,2) NOT NULL,

    CONSTRAINT FK_InventoryTransactions_Items
        FOREIGN KEY (ItemID) REFERENCES Items(ItemID),

    CONSTRAINT FK_InventoryTransactions_Locations
        FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);
GO