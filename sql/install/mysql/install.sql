CREATE TABLE IF NOT EXISTS `#__smiginis_tournaments` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `alias` VARCHAR(255) NOT NULL,
    `event_date` DATE NOT NULL,
    `location` VARCHAR(255),
    `status` TINYINT NOT NULL DEFAULT 1,
    `created` DATETIME NOT NULL,
    `modified` DATETIME NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
DEFAULT COLLATE=utf8mb4_unicode_ci;