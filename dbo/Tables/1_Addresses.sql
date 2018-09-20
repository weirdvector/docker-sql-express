CREATE TABLE Addresses (
    AddressId INT PRIMARY KEY,
    Street VARCHAR(MAX) NOT NULL,
    City VARCHAR(MAX) NOT NULL,
    Postal VARCHAR(MAX) NOT NULL,
    State CHAR(2) NOT NULL,
    Country CHAR(2) NOT NULL
)