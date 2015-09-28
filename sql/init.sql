-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema moviemgr
--

CREATE DATABASE IF NOT EXISTS moviemgr;
USE moviemgr;

--
-- Definition of table `itcc_movie_info`
--

DROP TABLE IF EXISTS `itcc_movie_info`;
CREATE TABLE `itcc_movie_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL COMMENT '片名',
  `description` varchar(1024) DEFAULT NULL COMMENT '描述',
  `Image` varchar(512) DEFAULT NULL COMMENT '图片路径',
  `mark` varchar(512) DEFAULT NULL COMMENT '备注',
  `actor` varchar(512) NOT NULL COMMENT '主演',
  `path` varchar(1024) NOT NULL COMMENT '电影存放路径',
  `movieid` varchar(45) DEFAULT NULL COMMENT '电影ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `itcc_movie_info`
--

/*!40000 ALTER TABLE `itcc_movie_info` DISABLE KEYS */;
INSERT INTO `itcc_movie_info` (`id`,`name`,`description`,`Image`,`mark`,`actor`,`path`,`movieid`) VALUES 
 (126,'天龙八部','',NULL,NULL,'周星驰','\\\\123\\1\\23','001'),
 (127,'泰囧','',NULL,NULL,'王宝强','\\\\123\\12\\31\\23','002'),
 (128,'黄金甲','',NULL,NULL,'周杰伦','\\\\123\\123\\12\\','003');
/*!40000 ALTER TABLE `itcc_movie_info` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
