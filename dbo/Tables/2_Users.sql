CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    FirstName VARCHAR(MAX) NOT NULL,
    LastName VARCHAR(MAX) NOT NULL,
    Email VARCHAR(MAX) NOT NULL,
    Phone CHAR(12),
    AddressID INT NOT NULL,
    CONSTRAINT UserAddresses FOREIGN KEY (AddressId) REFERENCES dbo.Addresses (AddressId)
);