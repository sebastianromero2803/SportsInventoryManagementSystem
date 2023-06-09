-- DROP DATABASE `sportsinventory`;
CREATE DATABASE  IF NOT EXISTS `sportsinventory`;
Use `sportsinventory`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
                         `userID` int NOT NULL,
                         `userName` varchar(20) NOT NULL,
                         `name` varchar(35) NOT NULL,
                         `email` varchar(50) NOT NULL,
                         `password` varchar(50) NOT NULL,
                         `regDate` date NOT NULL,
                         PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (202200668,'hung','Hung','22hung.tb@vinuni.edu.vn','hung','2023-05-29');
UNLOCK TABLES;


DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
                         `itemID` int NOT NULL,
                         `name` varchar(30) NOT NULL,
                         `condition` varchar(20) NOT NULL,
                         `quantity` int NOT NULL,
                         PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `items` WRITE;
INSERT INTO `items` VALUES (100, 'bracket', 'available', 10);
UNLOCK TABLES;

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
                            `bookingID` int AUTO_INCREMENT,
                            `userID` int NOT NULL,
                            `itemID` int NOT NULL,
                            `quantity` int NOT NULL,
                            `borrowDate` date NOT NULL,
                            `borrowReturn` date NOT NULL,
                            PRIMARY KEY (`bookingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `bookings` WRITE;
INSERT INTO `bookings` VALUES (0, 202200668, 101, 1, '2023-05-29', '2023-05-31');
UNLOCK TABLES;


DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
                          `adminID` int NOT NULL AUTO_INCREMENT,
                          `userName` varchar(20) NOT NULL,
                          `name` varchar(30) NOT NULL,
                          `email` varchar(50) NOT NULL,
                          `password` varchar(50) NOT NULL,
                          `regDate` date NOT NULL,
                          PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `admins` WRITE;
INSERT INTO `admins` VALUES (202200795,'jhon','Jhon','22anh.nkd@vinuni.edu.vn','john','2023-05-29');
UNLOCK TABLES;