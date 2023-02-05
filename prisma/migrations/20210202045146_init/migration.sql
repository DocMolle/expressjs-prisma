-- CreateTable
CREATE TABLE "Todo" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "text" TEXT NOT NULL,
    "completed" BOOLEAN NOT NULL,

    PRIMARY KEY ("id")
);

CREATE TABLE Room (
  id INT AUTO_INCREMENT PRIMARY KEY,
  roomNumber VARCHAR(255),
  capacity INT,
  amenities VARCHAR(255)
);

CREATE TABLE Booking (
  id VARCHAR(255) PRIMARY KEY,
  roomId INT,
  startDate VARCHAR(255),
  endDate VARCHAR(255),
  customerId VARCHAR(255),
  FOREIGN KEY (roomId) REFERENCES Room(id),
  FOREIGN KEY (customerId) REFERENCES Customer(id)
);

CREATE TABLE Customer (
  id VARCHAR(255) PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  phoneNumber VARCHAR(255)
);