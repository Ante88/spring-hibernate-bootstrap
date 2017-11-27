DROP SCHEMA IF EXISTS `web_customer_tracker2`;

CREATE SCHEMA `web_customer_tracker2`;

use `web_customer_tracker2`;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `customer_detail`;

CREATE TABLE `customer_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_address` varchar(128) DEFAULT NULL,
  `work_address` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `customer_detail_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_DETAIL_idx` (`customer_detail_id`),
  CONSTRAINT `FK_DETAIL` FOREIGN KEY (`customer_detail_id`) REFERENCES `customer_detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;
