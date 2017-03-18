# noinspection SqlNoDataSourceInspectionForFile
-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: semaphore
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `access_key`
--

DROP TABLE IF EXISTS `access_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'aws/do/gcloud/ssh',
  `project_id` int(11) DEFAULT NULL,
  `key` text,
  `secret` text,
  `removed` tinyint(1) DEFAULT '0' COMMENT 'marks as deleted',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `access_key_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_key`
--

LOCK TABLES `access_key` WRITE;
/*!40000 ALTER TABLE `access_key` DISABLE KEYS */;
INSERT INTO `access_key` VALUES (1,'Vagrant demo nodes','ssh',1,'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCzVQWZQiXtH5M/TGdq3pHDUrD5Oj6NenTpvFoLsbdQ5uESUuWrc7+u4gDeGVf1C3JHKBj3lUWD+v6b1M3X83Gc1eba8Vv3N0PQ+7JtylJVSZjG4bvNnPTSWmE3Oyj7e4JgyE1xgMPKwxoN7IY4weIdg70hbJqOGI7+2h4N3q93dCLyS17lxEKCbP8AiSVwbVnmpd2Ou/ZhAcZZ6CzF4OalgZ4PzVh0Xd6aRCijnOQBlC3nnJcx6nGUMoxLSCVCITdbHYSdeU1tjoBc5HvT3pwy0pHJXkduxOOOXdVvObZtV3+0zT8mu4kb9gwZ5R75gerWM3aHd8QkV6K/XnwMnKFl semaphore','-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEAs1UFmUIl7R+TP0xnat6Rw1Kw+To+jXp06bxaC7G3UObhElLl\nq3O/ruIA3hlX9QtyRygY95VFg/r+m9TN1/NxnNXm2vFb9zdD0PuybcpSVUmYxuG7\nzZz00lphNzso+3uCYMhNcYDDysMaDeyGOMHiHYO9IWyajhiO/toeDd6vd3Qi8kte\n5cRCgmz/AIklcG1Z5qXdjrv2YQHGWegsxeDmpYGeD81YdF3emkQoo5zkAZQt55yX\nMepxlDKMS0glQiE3Wx2EnXlNbY6AXOR7096cMtKRyV5HbsTjjl3Vbzm2bVd/tM0/\nJruJG/YMGeUe+YHq1jN2h3fEJFeiv158DJyhZQIDAQABAoIBAEATvBlj2ltc8ecn\nLLix6FFrZZLX7evteoLd6yrMiFze8kLy3d+iTzZ0yKyTT6teOKoWOL2WV61t7LXP\nlvF3qfvJLmDC5wJxe8jbdojmRv70eiNuGwW/9HaJFr1+ZQleu1pLl+hbgxobFl8t\nSVRUaq/zF4wu2xa0zbtgQmbgT8AVZFiagiSkhtpKh8MZ+xMWEpp2qL2yMiBcSLXG\n78si/ujACoaI5a9by8QbKVJrkevTwvWX3SSQsc7NScO8MGMciESTEnJDG/dAmrcU\nTgC5DEJvxdaOH1aash8EmCElWINKfy1u6T/XqYN2Z8zym3sUiAv+FxOOqofZMW/i\n173YPa0CgYEA7MsPbxvTx5aSFLsRE1hcmKUMA+u80E/sLMNAripT1fwBIrgTMRnb\nfDR9iDI7qEVxcHFfWIUKwILhBhCesgFHvpzJxwhgWIXn9fQDj4EYF1x4ANc2CdbR\nsKicYQeTlxZZKBgGYbwd1ObE11kZMZzT7JLV6pRzVpggZ2n81jpLMY8CgYEAweDM\no2+9vP9ooQeKb1WRjQbyWvBw91B/bFQR5xNAFG+/WZxHTuocHKxButlKtY8vk6zN\nzfhibRXrfNaOVkH8wbnRvsU3D8Af0rrWWcxikNMeEz5a8ghxN7X2jQm8YljweZzG\nne+Kvln9sMZ/rl+6yFQn4/q8/us7E6jbXD1528sCgYEA6N6N8CP6swb15KNPmKnG\nbmuqFFUKXAatahwfCOkhh4iMiVtjrF8UheKNLZrRJpwcgotMTB6Sw14y9Cb2GnK9\n3swMd8taDNSrmSr/MWqwiZDrh1AembCEiWpYV+f+kpBs38w4wnchE1ZbcLjz2OG1\nXKvO6iJSB3AWNf16pCex+SsCgYBxbVmMDOXO2waVn1nIhSFghr3nomAU8Q17jTvk\nGwkUa8RhYuL9Mk48IDNcY6An1JubJDBL3pOHCpn5MXWY1YZQuKwTlkH+fwKfQRwC\n8WaBIGKqE4MVswa590VFgnqqdypJnAU/hVOAxhl8AMXWeL9IUKP950YHRgwMFnAv\n6O+QPQKBgQChvWJaAYoq14vK79cEiSUwpIyTkQarwel8dy+/6SANrOursWzrdIzx\nsnXULyAAxEHjWuhmT9uWVcnUiqHUjplsx3KYI6pL4W5YvtItlbeRuSp9Hxktm7Ko\n9nZQ5xtOZZp8LBQMj/aUUGvVRMVJY3DHymRYkkL7zWHG4nHWOVU38Q==\n-----END RSA PRIVATE KEY-----\n',0);
/*!40000 ALTER TABLE `access_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `project_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_type` varchar(20) DEFAULT '',
  `description` text,
  `created` datetime(6) NOT NULL,
  KEY `project_id` (`project_id`),
  KEY `object_id` (`object_id`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `version` varchar(255) NOT NULL,
  `upgraded_date` datetime DEFAULT NULL,
  `notes` text,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('0.0.0','2017-03-18 12:54:31',NULL),('0.1.0','2017-03-18 12:54:31',NULL),('1.0.0','2017-03-18 12:54:31',NULL),('1.1.0','2017-03-18 12:54:31',NULL),('1.2.0','2017-03-18 12:54:31',NULL),('1.3.0','2017-03-18 12:54:31',NULL),('1.4.0','2017-03-18 12:54:31',NULL),('1.5.0','2017-03-18 12:54:31',NULL),('1.6.0','2017-03-18 12:54:31',NULL),('1.7.0','2017-03-18 12:54:31',NULL),('1.8.0','2017-03-18 12:54:31',NULL),('1.9.0','2017-03-18 12:54:31',NULL);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL COMMENT 'Created timestamp',
  `name` varchar(255) NOT NULL COMMENT 'Project name',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'2017-03-18 12:58:58','Vagrant Demo');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__environment`
--

DROP TABLE IF EXISTS `project__environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__environment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `json` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  `removed` tinyint(1) DEFAULT '0' COMMENT 'marks as deleted',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  CONSTRAINT `project__environment_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__environment`
--

LOCK TABLES `project__environment` WRITE;
/*!40000 ALTER TABLE `project__environment` DISABLE KEYS */;
INSERT INTO `project__environment` VALUES (1,1,NULL,'{}','empty environment',0);
/*!40000 ALTER TABLE `project__environment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__inventory`
--

DROP TABLE IF EXISTS `project__inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL COMMENT 'can be static/aws/do/gcloud',
  `key_id` int(11) DEFAULT NULL COMMENT 'references keys to authenticate remote services',
  `inventory` longtext NOT NULL,
  `ssh_key_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `removed` tinyint(1) DEFAULT '0' COMMENT 'marks as deleted',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `key_id` (`key_id`),
  KEY `ssh_key_id` (`ssh_key_id`),
  CONSTRAINT `project__inventory_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__inventory_ibfk_2` FOREIGN KEY (`key_id`) REFERENCES `access_key` (`id`),
  CONSTRAINT `project__inventory_ibfk_3` FOREIGN KEY (`ssh_key_id`) REFERENCES `access_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__inventory`
--

LOCK TABLES `project__inventory` WRITE;
/*!40000 ALTER TABLE `project__inventory` DISABLE KEYS */;
INSERT INTO `project__inventory` VALUES (1,1,'static',NULL,'node1   ansible_host=192.168.49.10  ansible_user=root\nnode2    ansible_host=192.168.49.11 ansible_user=root',1,'Vagrant nodes',0);
/*!40000 ALTER TABLE `project__inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__repository`
--

DROP TABLE IF EXISTS `project__repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__repository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `git_url` text NOT NULL,
  `ssh_key_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `removed` tinyint(1) DEFAULT '0' COMMENT 'marks as deleted',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `ssh_key_id` (`ssh_key_id`),
  CONSTRAINT `project__repository_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__repository_ibfk_2` FOREIGN KEY (`ssh_key_id`) REFERENCES `access_key` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__repository`
--

LOCK TABLES `project__repository` WRITE;
/*!40000 ALTER TABLE `project__repository` DISABLE KEYS */;
INSERT INTO `project__repository` VALUES (1,1,'https://github.com/hub-404/hello-ansible',1,'demo repository',0);
/*!40000 ALTER TABLE `project__repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__template`
--

DROP TABLE IF EXISTS `project__template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssh_key_id` int(11) NOT NULL COMMENT 'for accessing the inventory',
  `project_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `repository_id` int(11) NOT NULL,
  `environment_id` int(11) DEFAULT NULL,
  `alias` varchar(100) NOT NULL,
  `playbook` varchar(255) NOT NULL COMMENT 'playbook name (ansible.yml)',
  `arguments` text,
  `override_args` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `ssh_key_id` (`ssh_key_id`),
  KEY `inventory_id` (`inventory_id`),
  KEY `repository_id` (`repository_id`),
  KEY `environment_id` (`environment_id`),
  CONSTRAINT `project__template_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__template_ibfk_2` FOREIGN KEY (`ssh_key_id`) REFERENCES `access_key` (`id`),
  CONSTRAINT `project__template_ibfk_3` FOREIGN KEY (`inventory_id`) REFERENCES `project__inventory` (`id`),
  CONSTRAINT `project__template_ibfk_4` FOREIGN KEY (`repository_id`) REFERENCES `project__repository` (`id`),
  CONSTRAINT `project__template_ibfk_5` FOREIGN KEY (`environment_id`) REFERENCES `project__environment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__template`
--

LOCK TABLES `project__template` WRITE;
/*!40000 ALTER TABLE `project__template` DISABLE KEYS */;
INSERT INTO `project__template` VALUES (1,1,1,1,1,1,'Run ping','00-ping.yml',NULL,0);
/*!40000 ALTER TABLE `project__template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__template_schedule`
--

DROP TABLE IF EXISTS `project__template_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__template_schedule` (
  `template_id` int(11) NOT NULL,
  `cron_format` varchar(255) NOT NULL,
  KEY `template_id` (`template_id`),
  CONSTRAINT `project__template_schedule_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `project__template` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__template_schedule`
--

LOCK TABLES `project__template_schedule` WRITE;
/*!40000 ALTER TABLE `project__template_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `project__template_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project__user`
--

DROP TABLE IF EXISTS `project__user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project__user` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'User ID',
  `admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Gives user god-like privileges',
  UNIQUE KEY `id` (`project_id`,`user_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `project__user_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  CONSTRAINT `project__user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project__user`
--

LOCK TABLES `project__user` WRITE;
/*!40000 ALTER TABLE `project__user` DISABLE KEYS */;
INSERT INTO `project__user` VALUES (1,1,1);
/*!40000 ALTER TABLE `project__user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `last_active` datetime NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `user_agent` text NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `expired` (`expired`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `playbook` varchar(255) NOT NULL COMMENT 'override playbook name (ansible.yml)',
  `environment` longtext COMMENT 'override environment',
  `user_id` int(11) DEFAULT NULL,
  `debug` tinyint(1) NOT NULL DEFAULT '0',
  `dry_run` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_ibfk_1` (`template_id`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `project__template` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task__output`
--

DROP TABLE IF EXISTS `task__output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task__output` (
  `task_id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `time` datetime(6) NOT NULL,
  `output` longtext NOT NULL,
  KEY `task_id` (`task_id`),
  CONSTRAINT `task__output_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task__output`
--

LOCK TABLES `task__output` WRITE;
/*!40000 ALTER TABLE `task__output` DISABLE KEYS */;
/*!40000 ALTER TABLE `task__output` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `username` varchar(255) NOT NULL COMMENT 'Username, unique',
  `name` varchar(255) NOT NULL COMMENT 'Full name',
  `email` varchar(255) NOT NULL COMMENT 'Email, unique',
  `password` varchar(255) NOT NULL COMMENT 'Password',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'2017-03-18 12:54:44','admin','admin','admin@example.com','$2a$11$zAeNlR5gbZ5Yw/nFvs1Opexy/Gd.uuRdxvleNUIy0/gw.wgnhE5A2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user__token`
--

DROP TABLE IF EXISTS `user__token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user__token` (
  `id` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user__token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user__token`
--

LOCK TABLES `user__token` WRITE;
/*!40000 ALTER TABLE `user__token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user__token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-18 13:52:13
