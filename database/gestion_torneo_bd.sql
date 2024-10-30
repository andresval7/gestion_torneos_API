USE gestion_torneos_bd2;

CREATE TABLE `Fases` (
	`id_fase` int(15) NOT NULL,
    `numero_fase` varchar(40) NOT NULL,
    PRIMARY KEY (`id_fase`)
);

CREATE TABLE `Torneo` (
	`id_torneo` int(15) NOT NULL auto_increment,
    `nombre_torneo` varchar(20) NOT NULL,
    `estado_torneo` varchar(20) NOT NULL,
    `ganador` boolean NOT NULL DEFAULT False,
    `deporte` varchar(60) NOT NULL,
    `fk_organizador` bigint(20) NOT NULL,
    PRIMARY KEY (`id_torneo`),
    INDEX (`fk_organizador`),
    FOREIGN KEY (`fk_organizador`) REFERENCES users_user(id)
);


CREATE TABLE `Equipo` (
	`id_equipo` int(15) NOT NULL auto_increment,
    `nombre_equipo` varchar (50),
    `tamano_equipo` int(10) NOT NULL,
    `id_torneo_fk` int(15) NOT NULL,
    PRIMARY KEY (`id_equipo`),
    INDEX (`id_torneo_fk`),
    FOREIGN KEY (`id_torneo_fk`) REFERENCES `Torneo`(`id_torneo`)
);


CREATE TABLE `Tiene` (
    `id_tiene` int(15) NOT NULL,
    `id_fase_fk` int (15) NOT NULL,
    `id_torneo_fk` int (15) NOT NULL,
    PRIMARY KEY (`id_tiene`),
    INDEX(`id_fase_fk`),
    INDEX(`id_torneo_fk`),
    FOREIGN KEY (`id_fase_fk`) REFERENCES `Fases`(`id_fase`),
    FOREIGN KEY (`id_torneo_fk`) REFERENCES `Torneo`(`id_torneo`)
);