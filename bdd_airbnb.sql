-- Table adress
CREATE TABLE IF NOT EXISTS `adress` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `adress` VARCHAR(255) NOT NULL,
    `zip_code` VARCHAR(255) NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL
);

INSERT INTO `adress`(`adress`, `zip_code`, `country`, `phone`) VALUES 
    ('8 rue des lila', '75000', 'France', '01 02 03 04 05'),
    ('9 avenue André Malraux', '57000', 'France', '03 02 03 04 05');

-- Table type
CREATE TABLE IF NOT EXISTS `type`(
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `label` VARCHAR(255) NOT NULL,
    `image_path` VARCHAR(255) NOT NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT 1
);

INSERT INTO `type`(`label`, `image_path`, `is_active`) VALUES 
    ('appartement', '/images/appartement.jpg', 1),
    ('maison', '/images/maison.jpg', 1),
    ('insolite', '/images/insolite.jpg', 1);

-- Table user
CREATE TABLE IF NOT EXISTS `user` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `lastname` VARCHAR(255) NOT NULL,
    `firstname` VARCHAR(255) NOT NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT 1,
    `address_id` INT(11),
    FOREIGN KEY (`address_id`) REFERENCES `adress`(`id`)
);

-- Ajout de l'admin uniquement
INSERT INTO `user` (`email`, `password`, `lastname`, `firstname`, `address_id`) VALUES 
    ('admin@admin.com', 'Admin1234', 'toto', 'toto', 1),
    ('admin2@admin.com', 'Admin1234', 'toto', 'toto', 2);

-- Table logement
CREATE TABLE IF NOT EXISTS `logement` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `description` VARCHAR(255),
    `price_per_night` INT (11) NOT NULL,
    `nb_rooms` INT(11) NOT NULL,
    `nb_bed` INT(11) NOT NULL,
    `nb_traveler` INT(11) NOT NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT 1,
    `type_id` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL,
    `address_id` INT(11) NOT NULL,
    FOREIGN KEY (`type_id`) REFERENCES `type`(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`),
    FOREIGN KEY (`address_id`) REFERENCES `adress`(`id`)
);

INSERT INTO `logement` (`title`, `description`, `price_per_night`, `nb_rooms`, `nb_bed`, `nb_traveler`, `type_id`, `user_id`, `address_id`) VALUES 
    ('Maison de campagne', 'Maison de campagne, proche de la forêt, c\'est très sympa', 300, 3, 4, 3, 1, 1, 1),
    ('Appartement', 'Appartement centre ville', 100, 1, 1, 2, 2, 2, 2);

-- Table reservation
CREATE TABLE IF NOT EXISTS `reservation` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `date_start` DATE NOT NULL,
    `date_end` DATE NOT NULL,
    `nb_adult` INT(11) NOT NULL,
    `nb_child` INT(11) NOT NULL,
    `price_total` INT(11) NOT NULL,
    `logement_id` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`),
    FOREIGN KEY (`logement_id`) REFERENCES `logement`(`id`)
);

INSERT INTO `reservation`(`date_start`, `date_end`, `nb_adult`, `nb_child`, `price_total`, `logement_id`, `user_id`) VALUES 
    ('2024-05-11', '2024-05-20', 4, 2, 400, 1, 1), 
    ('2024-07-01', '2024-08-02', 4, 2, 1500, 2, 2);

-- Table equipement
CREATE TABLE IF NOT EXISTS `equipement` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `label` VARCHAR(255) NOT NULL,
    `image_path` VARCHAR(255) NOT NULL
);

INSERT INTO `equipement`(`label`, `image_path`) VALUES 
    ('sèche-cheveux', '/images/sechecheveux.png'),
    ('wifi', '/images/wifi.png');

-- Table logement_equipement
CREATE TABLE IF NOT EXISTS `logement_equipement` (
    `equipement_id` INT(11) NOT NULL,
    `logement_id` INT(11) NOT NULL,
    PRIMARY KEY (`equipement_id`, `logement_id`),
    FOREIGN KEY (`equipement_id`) REFERENCES `equipement`(`id`),
    FOREIGN KEY (`logement_id`) REFERENCES `logement`(`id`)
);

-- Table media
CREATE TABLE IF NOT EXISTS `media` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `image_path` VARCHAR(255) NOT NULL,
    `logement_id` INT(11) NOT NULL,
    FOREIGN KEY (`logement_id`) REFERENCES `logement`(`id`)
);

INSERT INTO `media`(`image_path`, `logement_id`) VALUES 
    ('/images/maison.jpg', 2),
    ('/images/appartement.jpg', 1);

-- Table favoris
CREATE TABLE IF NOT EXISTS `favoris` (
    `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `logement_id` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL,
    `is_active` BOOLEAN NOT NULL DEFAULT 1,
    FOREIGN KEY (`logement_id`) REFERENCES `logement`(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);
