-- CREATE DATABASE chat;

USE chat;


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/



/* HERE IS THE PASTED CODE */

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Messages'
-- 
-- ---

DROP TABLE IF EXISTS `Messages`;
		
CREATE TABLE `Messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `Roomname` VARCHAR(30) NULL DEFAULT NULL,
  `Username` VARCHAR(100) NULL DEFAULT NULL,
  `Date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `text` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- -- ---
-- -- Table 'Rooms'
-- -- 
-- -- ---

-- DROP TABLE IF EXISTS `Rooms`;
		
-- CREATE TABLE `Rooms` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `Name` VARCHAR(50) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'Users'
-- -- 
-- -- ---

-- DROP TABLE IF EXISTS `Users`;
		
-- CREATE TABLE `Users` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `name` VARCHAR(250) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Foreign Keys 
-- -- ---

-- ALTER TABLE `Messages` ADD FOREIGN KEY (RoomId) REFERENCES `Rooms` (`id`);
-- ALTER TABLE `Messages` ADD FOREIGN KEY (UserId) REFERENCES `Users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---


-- INSERT INTO `Rooms` (`id`,`Name`) VALUES
-- ('1','lobby');
-- INSERT INTO `Users` (`id`,`name`) VALUES
-- ('1','user1');
-- INSERT INTO `Messages` (`id`,`Roomname`,`Username`,`Date`,`text`) VALUES
-- ('1','lobbytest','tom','01','hello there');


