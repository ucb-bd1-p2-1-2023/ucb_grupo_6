CREATE TABLE `user` (
  `userID` integer PRIMARY KEY,
  `firstName` text,
  `lastName` text,
  `email` text,
  `country` text,
  `birthday` timestamp,
  `city` text,
  `phone` integer
);

CREATE TABLE `driver` (
  `driverID` integer PRIMARY KEY,
  `firstName` text,
  `lastName` text,
  `email` text,
  `country` text,
  `birthday` timestamp,
  `city` text,
  `phone` integer
);

CREATE TABLE `vehicle` (
  `vehicleID` integer PRIMARY KEY,
  `driverID` integer,
  `plate` text,
  `vehicleModel` text,
  `vehicleManufacturedDate` text
);

CREATE TABLE `payment` (
  `paymentID` integer PRIMARY KEY,
  `userID` integer,
  `ammountPay` text,
  `datePay` text,
  `typePay` integer
);

CREATE TABLE `promotion` (
  `promotionID` integer PRIMARY KEY,
  `userID` integer,
  `promoCode` text,
  `datePromo` text,
  `discountPromo` text,
  `descriptionPromo` text
);

CREATE TABLE `rating` (
  `ratingID` integer PRIMARY KEY,
  `userID` integer,
  `driverID` integer,
  `rating` integer,
  `ratingDescription` text
);

CREATE TABLE `travel` (
  `travelID` integer PRIMARY KEY,
  `userID` integer,
  `driverID` integer,
  `vehicleID` integer,
  `originPoint` text,
  `destination` text,
  `dateTrip` text,
  `tripDuration` text,
  `priceTrip` text
);

ALTER TABLE `vehicle` ADD FOREIGN KEY (`driverID`) REFERENCES `driver` (`driverID`);

ALTER TABLE `payment` ADD FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

ALTER TABLE `promotion` ADD FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

ALTER TABLE `rating` ADD FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

ALTER TABLE `rating` ADD FOREIGN KEY (`driverID`) REFERENCES `driver` (`driverID`);

ALTER TABLE `travel` ADD FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

ALTER TABLE `travel` ADD FOREIGN KEY (`driverID`) REFERENCES `driver` (`driverID`);

ALTER TABLE `travel` ADD FOREIGN KEY (`vehicleID`) REFERENCES `vehicle` (`vehicleID`);

/*
-- Creación para SQL --

CREATE TABLE user (
  userID int PRIMARY KEY,
  firstName varchar(255),
  lastName varchar(255),
  email varchar(255) CHECK (email LIKE '%@gmail.com' OR email LIKE '%@hotmail.com' OR email LIKE '%@outlook.com'),
  country varchar(255),
  birthday varchar(255),
  city varchar(255),
  phone int CHECK (phone <= 99999999)
);

CREATE TABLE driver (
  driverID int PRIMARY KEY,
  firstName varchar(255),
  lastName varchar(255),
  email varchar(255) CHECK (email LIKE '%@gmail.com' OR email LIKE '%@hotmail.com' OR email LIKE '%@outlook.com'),
  country varchar(255),
  birthday varchar(255),
  city varchar(255),
  phone int CHECK (phone <= 99999999)
);

CREATE TABLE vehicle (
  vehicleID int PRIMARY KEY,
  driverID int,
  plate varchar(255),
  vehicleModel varchar(255),
  vehicleManufacturedDate varchar(255),
  FOREIGN KEY (driverID) REFERENCES driver(driverID)
);

CREATE TABLE payment (
  paymentID int PRIMARY KEY,
  userID int,
  ammountPay varchar(255),
  datePay varchar(255),
  typePay int CHECK (typePay <= 2),
  FOREIGN KEY (userID) REFERENCES user(userID)
);

CREATE TABLE promotion (
  promotionID int PRIMARY KEY,
  userID int,
  promoCode varchar(255),
  datePromo varchar(255),
  discountPromo varchar(255),
  descriptionPromo varchar(255),
  FOREIGN KEY (userID) REFERENCES user(userID)
);

CREATE TABLE rating (
  ratingID int PRIMARY KEY,
  userID int,
  driverID int,
  rating int CHECK (rating <= 5),
  ratingDescription varchar(255),
  FOREIGN KEY (userID) REFERENCES user(userID),
  FOREIGN KEY (driverID) REFERENCES driver(driverID)
);

CREATE TABLE travel (
  travelID int PRIMARY KEY,
  userID int,
  driverID int,
  vehicleID int,
  originPoint varchar(255),
  destination varchar(255),
  dateTrip varchar(255),
  tripDuration varchar(255),
  priceTrip varchar(255),
  FOREIGN KEY (userID) REFERENCES user(userID),
  FOREIGN KEY (driverID) REFERENCES driver(driverID),
  FOREIGN KEY (vehicleID) REFERENCES vehicle(vehicleID)
);
*/