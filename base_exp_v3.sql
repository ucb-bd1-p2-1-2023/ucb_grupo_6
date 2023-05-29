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
