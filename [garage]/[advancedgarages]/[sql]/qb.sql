ALTER TABLE
    `players`
ADD
    COLUMN IF NOT EXISTS `shell_garage` TEXT NULL DEFAULT '';

ALTER TABLE
    `player_vehicles`
ADD
    COLUMN IF NOT EXISTS `tag` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_bin',
ADD
    COLUMN IF NOT EXISTS `impound_data` TEXT NULL DEFAULT '' COLLATE 'utf8mb4_bin',
ADD
    COLUMN IF NOT EXISTS `favorite` INT(3) NOT NULL DEFAULT '0',
ADD
    COLUMN IF NOT EXISTS `garage` VARCHAR(200) NULL DEFAULT 'OUT' COLLATE 'utf8mb4_bin',
ADD
    COLUMN IF NOT EXISTS `type` VARCHAR(50) NULL DEFAULT 'vehicle' COLLATE 'utf8mb4_bin',
ADD
    COLUMN IF NOT EXISTS `jobVehicle` VARCHAR(50) NULL DEFAULT '' COLLATE 'utf8mb4_bin',
ADD
    COLUMN IF NOT EXISTS `jobGarage` VARCHAR(50) NULL DEFAULT '' COLLATE 'utf8mb4_bin';

DROP TABLE IF EXISTS `player_garages`;

CREATE TABLE `player_garages` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `price` INT(11) NOT NULL,
    `coords` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `shell` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `type` VARCHAR(50) NULL DEFAULT 'vehicle' COLLATE 'utf8mb4_unicode_ci',
    `holders` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    `available` INT(11) NULL DEFAULT NULL,
    `job` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
    PRIMARY KEY (`id`) USING BTREE
) COLLATE = 'utf8mb4_unicode_ci' ENGINE = InnoDB AUTO_INCREMENT = 27;