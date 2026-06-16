CREATE TABLE IF NOT EXISTS `#__smiginis_tournaments` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `alias` VARCHAR(255) NOT NULL,

    `description` TEXT NULL,

    `location` VARCHAR(255) NULL,

    `start_date` DATETIME NOT NULL,
    `end_date` DATETIME NULL,

    `registration_open` DATETIME NULL,
    `registration_close` DATETIME NULL,

    `max_players` INT UNSIGNED DEFAULT NULL,

    `status` TINYINT(1) NOT NULL DEFAULT 1,

    `created` DATETIME NOT NULL,
    `modified` DATETIME NULL,

    PRIMARY KEY (`id`),

    UNIQUE KEY `idx_alias` (`alias`)

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `#__smiginis_contacts` (

    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,

    `firstname` VARCHAR(100) NOT NULL,

    `lastname` VARCHAR(100) NOT NULL,

    `alias` VARCHAR(255) NULL,

    `club` VARCHAR(255) NULL,

    `email` VARCHAR(255) NULL,

    `phone` VARCHAR(50) NULL,

    `created` DATETIME NOT NULL,

    `modified` DATETIME NULL,

    PRIMARY KEY (`id`),

    UNIQUE KEY `idx_email` (`email`)

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `#__smiginis_registrations` (

`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,

`tournament_id` INT UNSIGNED NOT NULL,

`contact_id` INT UNSIGNED NOT NULL,

`created` DATETIME NOT NULL,

PRIMARY KEY (`id`),

KEY `idx_tournament` (`tournament_id`),
KEY `idx_contact` (`contact_id`),

UNIQUE KEY `idx_registration` (`tournament_id`,`contact_id`),

CONSTRAINT `fk_registration_tournament`
FOREIGN KEY (`tournament_id`)
REFERENCES `#__smiginis_tournaments` (`id`)
ON DELETE CASCADE,

CONSTRAINT `fk_registration_contact`
FOREIGN KEY (`contact_id`)
REFERENCES `#__smiginis_contacts` (`id`)
ON DELETE CASCADE

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_unicode_ci;