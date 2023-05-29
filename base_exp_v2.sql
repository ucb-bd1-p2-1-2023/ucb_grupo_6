CREATE TABLE `usuario` (
  `id` integer PRIMARY KEY,
  `name` text,
  `email` text,
  `pais` text,
  `fec_nac` timestamp,
  `ciudad` text,
  `num_telf` integer
);

CREATE TABLE `conductor` (
  `id` integer PRIMARY KEY,
  `name` text,
  `email` text,
  `pais` text,
  `fec_nac` timestamp,
  `ciudad` text,
  `num_telf` integer,
  `tipo_vehiculo` integer,
  `info_vehiculo` text
);

CREATE TABLE `registro_conductor_vehiculo` (
  `id` integer,
  `placa` varchar(255),
  `modelo` text,
  `year_manufactured` text,
  `marca` text
);

CREATE TABLE `viajes` (
  `punto_origen` text,
  `punto_destino` text,
  `fecha` timestamp,
  `tiempo_total_viaje` varchar(255),
  `precio_viaje` integer,
  `conductor_id` integer
);

CREATE TABLE `calificaciones` (
  `id_usuario` integer,
  `id_conductor` integer,
  `puntuacion` text,
  `comentarios` text
);

CREATE TABLE `pagos` (
  `monto_pagado` varchar(255),
  `fecha_pago` varchar(255),
  `tarjeta` varchar(255)
);

CREATE TABLE `promociones` (
  `desc_promocin` text,
  `cod_promocion` varchar(255),
  `monto_descontado` integer,
  `fecha_venc` timestamp
);

ALTER TABLE `registro_conductor_vehiculo` ADD FOREIGN KEY (`id`) REFERENCES `conductor` (`id`);

ALTER TABLE `viajes` ADD FOREIGN KEY (`conductor_id`) REFERENCES `conductor` (`id`);

ALTER TABLE `usuario` ADD FOREIGN KEY (`id`) REFERENCES `calificaciones` (`id_usuario`);

ALTER TABLE `conductor` ADD FOREIGN KEY (`id`) REFERENCES `calificaciones` (`id_conductor`);
