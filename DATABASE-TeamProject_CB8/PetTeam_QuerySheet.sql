CREATE TABLE `PETDB`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(60) NULL,
  `telephone` INT NOT NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `PETDB`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE `PETDB`.`dog` (
  `dog_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `chip` VARCHAR(45) NOT NULL,
  `size` VARCHAR(45) NULL,
  `shelter_dog` INT NOT NULL,
  PRIMARY KEY (`dog_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
CREATE TABLE `PETDB`.`shelter` (
  `shelter_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(45) NOT NULL,
  `telephone` INT NOT NULL,
  `mobile` INT NOT NULL,
  PRIMARY KEY (`shelter_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
ALTER TABLE `PETDB`.`shelter` 
ADD COLUMN `email` VARCHAR(60) NOT NULL AFTER `mobile`;
​
CREATE TABLE `PETDB`.`room` (
  `room_id` INT NOT NULL AUTO_INCREMENT,
  `occupied` INT NOT NULL,
  PRIMARY KEY (`room_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

ALTER TABLE `PETDB`.`dog` 
ADD COLUMN `birthdate` VARCHAR(25) NULL AFTER `shelter_dog`;


-- Queries

-- select * from user;
-- select * from role;
-- select * from dog;
-- select * from shelter;
-- select * from room;