CREATE DATABASE  IF NOT EXISTS `fitnessapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fitnessapp`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fitnessapp
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `diet`
--

DROP TABLE IF EXISTS `diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diet` (
  `diet_id` int NOT NULL,
  `exercise_id` int NOT NULL,
  `portion` decimal(10,2) NOT NULL,
  `food` varchar(255) NOT NULL,
  PRIMARY KEY (`diet_id`),
  KEY `exercise_id_idx` (`exercise_id`),
  CONSTRAINT `ex_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diet`
--

LOCK TABLES `diet` WRITE;
/*!40000 ALTER TABLE `diet` DISABLE KEYS */;
INSERT INTO `diet` VALUES (300,200,1.50,'Chicken Breast'),(301,201,2.00,'Brown Rice'),(302,202,1.00,'Broccoli'),(303,203,1.00,'Salmon'),(304,204,1.50,'Sweet Potato'),(305,205,1.00,'Spinach'),(306,206,1.00,'Greek Yogurt'),(307,207,2.00,'Quinoa'),(308,208,1.50,'Lentils'),(309,209,1.00,'Cottage Cheese'),(310,210,1.00,'Oatmeal'),(311,211,1.50,'Banana'),(312,212,2.00,'Almonds'),(313,213,1.00,'Avocado'),(314,214,1.50,'Blueberries'),(315,215,1.00,'Kale'),(316,216,1.00,'Whole Wheat Bread'),(317,217,2.00,'Peanut Butter'),(318,218,1.50,'Eggs'),(319,219,1.00,'Beef'),(320,220,1.00,'Pasta'),(321,221,1.50,'Cheese'),(322,222,2.00,'Milk'),(323,223,1.00,'Tuna'),(324,224,1.50,'Green Beans'),(325,225,1.00,'Turkey'),(326,226,1.00,'Cucumber'),(327,227,2.00,'Whey Protein'),(328,228,1.50,'Chickpeas'),(329,229,1.00,'Pork'),(330,230,1.00,'Rice Cakes'),(331,231,1.50,'Pineapple'),(332,232,2.00,'Cashews'),(333,233,1.00,'Oranges'),(334,234,1.50,'Carrots'),(335,235,1.00,'Tomato'),(336,236,1.00,'Celery'),(337,237,2.00,'Black Beans'),(338,238,1.50,'Green Tea'),(339,239,1.00,'Watermelon'),(340,240,1.00,'Cottage Cheese'),(341,241,1.50,'Olive Oil'),(342,242,2.00,'Yogurt'),(343,243,1.00,'Grapefruit'),(344,244,1.50,'Asparagus'),(345,245,1.00,'Brown Rice'),(346,246,1.00,'Eggs'),(347,247,2.00,'Chicken Breast'),(348,248,1.50,'Broccoli'),(349,249,1.00,'Salmon'),(350,250,1.00,'Sweet Potato');
/*!40000 ALTER TABLE `diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_muscle_group`
--

DROP TABLE IF EXISTS `exercise_muscle_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercise_muscle_group` (
  `exercise_id` int NOT NULL,
  `muscle_group_id` int NOT NULL,
  KEY `exercise_id` (`exercise_id`),
  KEY `muscle_group_id` (`muscle_group_id`),
  CONSTRAINT `exercise_muscle_group_ibfk_1` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`),
  CONSTRAINT `exercise_muscle_group_ibfk_2` FOREIGN KEY (`muscle_group_id`) REFERENCES `muscle_group` (`muscle_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_muscle_group`
--

LOCK TABLES `exercise_muscle_group` WRITE;
/*!40000 ALTER TABLE `exercise_muscle_group` DISABLE KEYS */;
INSERT INTO `exercise_muscle_group` VALUES (200,1),(200,6),(201,4),(202,3),(203,4),(204,3),(205,3),(206,1),(206,3),(206,4),(206,5),(207,3),(208,4),(209,4),(210,3),(211,3),(212,8),(213,4),(214,10),(215,4),(216,3),(217,4),(218,3),(219,6),(220,2),(221,5),(222,6),(224,5),(225,5),(226,1),(226,2),(226,3),(226,10),(227,3),(227,5),(228,3),(228,6),(229,4),(229,3),(230,4),(230,3),(231,4),(232,3),(233,1),(233,2),(233,3),(233,4),(233,5),(233,6),(233,7),(233,8),(233,9),(233,10),(233,11),(233,12),(233,13),(233,14),(234,3),(235,1),(235,5),(235,6),(236,1),(236,6),(237,1),(237,6),(238,1),(238,5),(239,4),(240,4),(241,4),(242,4),(242,3),(242,3),(243,4),(243,3),(244,4),(245,4),(245,5),(246,4),(246,3),(247,4),(248,4),(249,4),(249,10),(249,3),(250,4);
/*!40000 ALTER TABLE `exercise_muscle_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercises`
--

DROP TABLE IF EXISTS `exercises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exercises` (
  `exercise_id` int NOT NULL,
  `exercise_name` varchar(255) NOT NULL,
  PRIMARY KEY (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercises`
--

LOCK TABLES `exercises` WRITE;
/*!40000 ALTER TABLE `exercises` DISABLE KEYS */;
INSERT INTO `exercises` VALUES (200,'Push-ups'),(201,'Sit-ups'),(202,'Jumping Jacks'),(203,'Plank'),(204,'Squats'),(205,'Lunges'),(206,'Burpees'),(207,'Mountain Climbers'),(208,'Crunches'),(209,'Russian Twists'),(210,'High Knees'),(211,'Butt Kicks'),(212,'Calf Raises'),(213,'Leg Raises'),(214,'Superman'),(215,'Bicycle Crunches'),(216,'Bridge'),(217,'Side Plank'),(218,'Wall Sit'),(219,'Tricep Dips'),(220,'Dumbbell Rows'),(221,'Shoulder Press'),(222,'Bicep Curls'),(223,'Tricep Extensions'),(224,'Lateral Raises'),(225,'Front Raises'),(226,'Deadlifts'),(227,'Squats with Shoulder Press'),(228,'Lunges with Bicep Curls'),(229,'Plank with Leg Lifts'),(230,'Side Plank with Hip Dips'),(231,'Russian Twists with Weight'),(232,'Mountain Climbers with Sliders'),(233,'Burpees with Push-ups'),(234,'Jumping Jacks with Jump Squats'),(235,'Incline Push-ups'),(236,'Decline Push-ups'),(237,'Diamond Push-ups'),(238,'Wide Arm Push-ups'),(239,'Reverse Crunches'),(240,'Flutter Kicks'),(241,'Scissor Kicks'),(242,'Toe Touches'),(243,'Heel Touches'),(244,'Seated Russian Twists'),(245,'Plank Jacks'),(246,'Side Plank with Leg Lift'),(247,'Russian Twist with Medicine Ball'),(248,'Standing Oblique Crunches'),(249,'Reverse Plank'),(250,'Reverse plank');
/*!40000 ALTER TABLE `exercises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muscle_group`
--

DROP TABLE IF EXISTS `muscle_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muscle_group` (
  `muscle_group_id` int NOT NULL,
  `muscle_name` varchar(255) NOT NULL,
  PRIMARY KEY (`muscle_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muscle_group`
--

LOCK TABLES `muscle_group` WRITE;
/*!40000 ALTER TABLE `muscle_group` DISABLE KEYS */;
INSERT INTO `muscle_group` VALUES (1,'Chest (Pectoralis Major)'),(2,'Back (Lats, Traps, Rhomboids)'),(3,'Legs (Quads, Hamstrings, Glutes)'),(4,'Core (Abdominal muscles and obliques)'),(5,'Shoulders (Deltoids)'),(6,'Arms (Biceps, Triceps)'),(7,'Forearms'),(8,'Calves'),(9,'Gluteus Medius'),(10,'Lower Traps'),(11,'Serratus Anterior'),(12,'Erector Spinae'),(13,'Neck (Sternocleidomastoid)'),(14,'Abdominals (Rectus Abdominis, Transversus Abdominis)');
/*!40000 ALTER TABLE `muscle_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password_hash` varchar(45) NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','user1@example.com','hash1'),(2,'user2','user2@example.com','hash2'),(3,'user3','user3@example.com','hash3'),(4,'user4','user4@example.com','hash4'),(5,'user5','user5@example.com','hash5'),(6,'user6','user6@example.com','hash6'),(7,'user7','user7@example.com','hash7'),(8,'user8','user8@example.com','hash8'),(9,'user9','user9@example.com','hash9'),(10,'user10','user10@example.com','hash10'),(11,'user11','user11@example.com','hash11'),(12,'user12','user12@example.com','hash12'),(13,'user13','user13@example.com','hash13'),(14,'user14','user14@example.com','hash14'),(15,'user15','user15@example.com','hash15'),(16,'user16','user16@example.com','hash16'),(17,'user17','user17@example.com','hash17'),(18,'user18','user18@example.com','hash18'),(19,'user19','user19@example.com','hash19'),(20,'user20','user20@example.com','hash20'),(21,'user21','user21@example.com','hash21'),(22,'user22','user22@example.com','hash22'),(23,'user23','user23@example.com','hash23'),(24,'user24','user24@example.com','hash24'),(25,'user25','user25@example.com','hash25'),(26,'user26','user26@example.com','hash26'),(27,'user27','user27@example.com','hash27'),(28,'user28','user28@example.com','hash28'),(29,'user29','user29@example.com','hash29'),(30,'user30','user30@example.com','hash30'),(31,'user31','user31@example.com','hash31'),(32,'user32','user32@example.com','hash32'),(33,'user33','user33@example.com','hash33'),(34,'user34','user34@example.com','hash34'),(35,'user35','user35@example.com','hash35'),(36,'user36','user36@example.com','hash36'),(37,'user37','user37@example.com','hash37'),(38,'user38','user38@example.com','hash38'),(39,'user39','user39@example.com','hash39'),(40,'user40','user40@example.com','hash40'),(41,'user41','user41@example.com','hash41'),(42,'user42','user42@example.com','hash42'),(43,'user43','user43@example.com','hash43'),(44,'user44','user44@example.com','hash44'),(45,'user45','user45@example.com','hash45'),(46,'user46','user46@example.com','hash46'),(47,'user47','user47@example.com','hash47'),(48,'user48','user48@example.com','hash48'),(49,'user49','user49@example.com','hash49'),(50,'user50','user50@example.com','hash50');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workout_logs`
--

DROP TABLE IF EXISTS `workout_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workout_logs` (
  `log_id` int NOT NULL,
  `workout_id` int NOT NULL,
  `exercise_id` int NOT NULL,
  `sets` int NOT NULL,
  `reps` int NOT NULL,
  `weight` decimal(10,2) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `exercise_id_idx` (`exercise_id`),
  CONSTRAINT `exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workout_logs`
--

LOCK TABLES `workout_logs` WRITE;
/*!40000 ALTER TABLE `workout_logs` DISABLE KEYS */;
INSERT INTO `workout_logs` VALUES (300,102,200,3,12,50.50),(301,103,201,4,10,60.00),(302,104,202,3,8,70.50),(303,105,203,3,12,55.00),(304,106,204,4,10,65.00),(305,107,205,3,8,75.50),(306,108,206,3,12,58.00),(307,109,207,4,10,68.00),(308,110,208,3,8,80.50),(309,111,209,3,12,52.00),(310,112,210,4,10,62.00),(311,113,211,3,8,72.50),(312,114,212,3,12,55.00),(313,115,213,4,10,65.00),(314,116,214,3,8,75.50),(315,117,215,3,12,58.00),(316,118,216,4,10,68.00),(317,119,217,3,8,80.50),(318,120,218,3,12,52.00),(319,121,219,4,10,62.00),(320,122,220,3,8,72.50),(321,123,221,3,12,55.00),(322,124,222,4,10,65.00),(323,125,223,3,8,75.50),(324,126,224,3,12,58.00),(325,127,225,4,10,68.00),(326,128,226,3,8,80.50),(327,129,227,3,12,52.00),(328,130,228,4,10,62.00),(329,131,229,3,8,72.50),(330,132,230,3,12,55.00),(331,133,231,4,10,65.00),(332,134,232,3,8,75.50),(333,135,233,3,12,58.00),(334,136,234,4,10,68.00),(335,137,235,3,8,80.50),(336,138,236,3,12,52.00),(337,139,237,4,10,62.00),(338,140,238,3,8,72.50),(339,141,239,3,12,55.00),(340,142,240,4,10,65.00),(341,143,241,3,8,75.50),(342,144,242,3,12,58.00),(343,145,243,4,10,68.00),(344,146,244,3,8,80.50),(345,147,245,3,12,52.00),(346,148,246,4,10,62.00),(347,149,247,3,8,72.50),(348,150,246,3,12,55.00),(349,151,249,4,10,65.00),(350,152,250,3,8,75.50);
/*!40000 ALTER TABLE `workout_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts` (
  `workout_id` int NOT NULL,
  `iduser` int NOT NULL,
  `date` date NOT NULL,
  `duration` int NOT NULL,
  `calories_burned` decimal(10,2) NOT NULL,
  PRIMARY KEY (`workout_id`),
  KEY `user_id_idx` (`iduser`),
  CONSTRAINT `user_id` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (102,2,'2024-04-29',45,250.00),(103,3,'2024-04-30',30,200.00),(104,4,'2024-07-30',70,230.00),(105,5,'2023-04-12',30,180.00),(106,6,'2023-04-16',60,200.00),(107,7,'2023-06-16',60,120.00),(108,8,'2023-01-14',60,200.00),(109,9,'2021-04-19',60,200.00),(110,10,'2021-04-12',60,200.00),(111,24,'2021-08-11',60,200.00),(112,12,'2021-07-08',60,200.00),(113,13,'2021-07-08',60,234.00),(114,14,'2021-07-08',60,234.00),(115,15,'2021-07-08',60,234.00),(116,16,'2021-07-08',60,234.00),(117,17,'2021-07-08',60,234.00),(118,18,'2021-07-08',60,234.00),(119,19,'2021-07-08',60,234.00),(120,20,'2021-07-08',60,234.00),(121,21,'2021-07-08',60,234.00),(122,22,'2021-07-08',60,234.00),(123,23,'2021-07-08',60,234.00),(124,25,'2021-07-08',60,234.00),(125,26,'2021-07-08',60,234.00),(126,25,'2021-07-08',60,234.00),(127,28,'2021-07-08',60,234.00),(128,29,'2021-07-08',60,234.00),(130,27,'2021-07-08',60,234.00),(131,32,'2021-07-08',60,234.00),(132,33,'2021-07-08',60,234.00),(133,30,'2021-07-08',60,234.00),(134,31,'2021-07-08',60,234.00),(135,33,'2021-07-08',60,234.00),(136,26,'2021-07-08',60,234.00),(137,35,'2021-07-08',60,234.00),(139,39,'2021-07-08',60,234.00),(140,41,'2021-07-08',60,234.00),(141,42,'2021-07-08',60,234.00),(142,40,'2021-07-08',60,234.00),(143,43,'2021-07-08',60,234.00),(144,45,'2021-07-08',60,234.00),(145,44,'2021-07-08',60,234.00),(146,46,'2021-07-08',60,234.00),(147,47,'2021-07-08',60,234.00),(148,48,'2021-07-08',60,234.00),(149,49,'2021-07-08',60,234.00),(150,50,'2021-07-08',60,234.00);
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12 13:43:56
