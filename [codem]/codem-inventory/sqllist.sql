CREATE TABLE `codem_invdata` (
	`name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`type` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`items` LONGTEXT NULL DEFAULT '[]' COLLATE 'utf8mb3_general_ci'
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;
