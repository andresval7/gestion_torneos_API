-- Crear tabla Torneo
CREATE TABLE Torneo (
    `id_torneo` int(15) NOT NULL auto_increment,
    `nombre_torneo` varchar(50) NOT NULL,
    `fecha_inicio` DATE NOT NULL,
    `fecha_fin` DATE NOT NULL,
    `ubicacion` varchar(100),
    `deporte` varchar(60),
    `tipo_torneo` varchar(60),
    `fk_organizador` bigint(20) NOT NULL,
    PRIMARY KEY (`id_torneo`),
    INDEX (`fk_organizador`),
    FOREIGN KEY (`fk_organizador`) REFERENCES users_user(id)
);

-- Crear tabla Equipo
CREATE TABLE Equipo (
    `id_equipo` int(15) NOT NULL auto_increment,
    `nombre_equipo` varchar (100) NOT NULL,
    `ciudad` varchar (100),
    `pais` varchar (100) NOT NULL,
    `tamano_equipo` int(10),
    PRIMARY KEY (`id_equipo`)
);

-- Crear tabla Encuentro
CREATE TABLE Encuentro (
    `id_encuentro` INT(15) NOT NULL AUTO_INCREMENT,
    `id_torneo_fke` INT (15),
    `fecha` DATE NOT NULL,
    `hora` TIME NOT NULL,
    `ubicacion` VARCHAR(100),
    PRIMARY KEY (`id_encuentro`),
    INDEX(`id_torneo_fke`),
    FOREIGN KEY (`id_torneo_fke`) REFERENCES Torneo(id_torneo) ON DELETE CASCADE
);

-- Crear tabla Participacion (relaciona Encuentro con Equipo)
CREATE TABLE Participa (
    `id_participa` INT(15) NOT NULL AUTO_INCREMENT,
    `id_encuentro_fk` INT(15),
    `id_equipo_fk` INT (15),
    `puntuacion` INT (5),
    `resultado` VARCHAR(50),
    PRIMARY KEY (`id_participa`),
    INDEX(`id_encuentro_fk`),
    INDEX(`id_equipo_fk`),
    FOREIGN KEY (id_encuentro_fk) REFERENCES Encuentro(id_encuentro) ON DELETE CASCADE,
    FOREIGN KEY (id_equipo_fk) REFERENCES Equipo(id_equipo) ON DELETE CASCADE
);