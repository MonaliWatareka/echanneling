-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: echanneling
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `r_num` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'Sasanka Karunarathna','0784583777','1','2024-10-16','16:00','Vomiting','sasanka@gmail.com'),(2,'Dinuka Fernando','0771234567','R001','2024-10-18','09:00 AM','Routine Checkup','sasanka@gmail.com'),(3,'Thilini Perera','0719876543','R002','2024-10-19','10:30 AM','Fever','sanduni@yahoo.com'),(4,'Arjuna Silva','0763456789','R003','2024-10-20','11:00 AM','Back Pain','minuli@hotmail.com'),(5,'Samantha Wijesinghe','0781239876','R004','2024-10-21','01:00 PM','Skin Allergy','minuli@gmail.com'),(6,'Hiruni Rathnayake','0726543210','R005','2024-10-22','02:30 PM','Headache','monali@gmail.com'),(7,'Kasun Jayawardena','0759873214','R006','2024-10-23','03:00 PM','Eye Checkup','dasun@gmail.com');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availability`
--

DROP TABLE IF EXISTS `availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availability` (
  `availabilityId` int NOT NULL AUTO_INCREMENT,
  `dName` varchar(45) NOT NULL,
  `specialization` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `startTime` varchar(45) NOT NULL,
  `endTime` varchar(45) NOT NULL,
  `hospital` varchar(45) NOT NULL,
  PRIMARY KEY (`availabilityId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availability`
--

LOCK TABLES `availability` WRITE;
/*!40000 ALTER TABLE `availability` DISABLE KEYS */;
INSERT INTO `availability` VALUES (1,'Dr.Kamal','Cardiologist','2024-10-20','17:00','19:00','Asiri kandy hospital'),(2,'Dr. Nuwan Perera','Cardiologist','2024-10-18','08:00 AM','12:00 PM','Asiri Central Hospital'),(3,'Dr. Chamari De Silva','Dermatologist','2024-10-19','09:00 AM','01:00 PM','National Hospital of Sri Lanka'),(4,'Dr. Ruwan Jayawardena','Pediatrician','2024-10-20','02:00 PM','06:00 PM','Lanka Hospitals'),(5,'Dr. Kanchana Rathnayake','ENT Specialist','2024-10-21','10:00 AM','02:00 PM','Durdans Hospital');
/*!40000 ALTER TABLE `availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docadmin`
--

DROP TABLE IF EXISTS `docadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docadmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docadmin`
--

LOCK TABLES `docadmin` WRITE;
/*!40000 ALTER TABLE `docadmin` DISABLE KEYS */;
INSERT INTO `docadmin` VALUES (1,'amal','amal@gmail.com','amal'),(2,'nimal','nimal@gmail.com','nimal');
/*!40000 ALTER TABLE `docadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labreport`
--

DROP TABLE IF EXISTS `labreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labreport` (
  `lid` int NOT NULL AUTO_INCREMENT,
  `hName` varchar(45) DEFAULT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `testType` varchar(45) DEFAULT NULL,
  `testResult` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labreport`
--

LOCK TABLES `labreport` WRITE;
/*!40000 ALTER TABLE `labreport` DISABLE KEYS */;
INSERT INTO `labreport` VALUES (2,'Asiri kandy hospital','Mr.Perera','Blood test','O+','2024-10-1'),(3,'Nawaloka Hospital','Nadeesha Silva','X-Ray','No Fracture','2024-10-13'),(4,'Lanka Hospitals','Ruwan Dissanayake','MRI Scan','Mild Herniation','2024-10-14'),(5,'National Hospital of Sri Lanka','Sajith Fernando','Urine Test','Infection Detected','2024-10-15'),(6,'Durdans Hospital','Tharindu Jayasinghe','CT Scan','No Issues','2024-10-16'),(7,'Asiri Surgical Hospital','Menaka Rajapaksha','COVID-19 PCR','Negative','2024-10-17');
/*!40000 ALTER TABLE `labreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `DOB` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Sasanka','Karunarathna','0784583778','2002.05.09','sasanka@gmail.com','sasi'),(2,'Sanduni','Dulakshika','0784569236','2002.05.10','sanduni@gmail.com','sandu'),(3,'Minuli','De Silva','0752042018','2003.01.20','minuli@gmail.com','minu'),(4,'Monali','Watareka','0758486952','2001.12.12','monali@gmail.com','mona'),(5,'Dasun','Thathsara','0784563952','2003.07.17','dasun@gmail.com','dasu');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-15 17:30:48
