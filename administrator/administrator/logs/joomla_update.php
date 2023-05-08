#
#<?php die('Forbidden.'); ?>
#Date: 2022-11-15 00:16:17 UTC
#Software: Joomla! 4.1.5 Stable [ Kuamini ] 21-June-2022 14:00 GMT

#Fields: datetime	priority clientip	category	message
2022-11-15T00:16:17+00:00	INFO ::1	update	Actualización inciciadoa por el usuario admin (565). La versión antigua es la 4.1.5.
2022-11-15T00:16:19+00:00	INFO ::1	update	Descargando el archivo desde https://s3-us-west-2.amazonaws.com/joomla-official-downloads/joomladownloads/joomla4/Joomla_4.2.5-Stable-Update_Package.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA6LXDJLNUINX2AVMH%2F20221115%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221115T001612Z&X-Amz-Expires=60&X-Amz-SignedHeaders=host&X-Amz-Signature=cd9036ca362b37bb9289648e9843d9850903659c43567f8f7f139acded6c18e4.
2022-11-15T00:16:23+00:00	INFO ::1	update	El archivo Joomla_4.2.5-Stable-Update_Package.zip se ha descargado.
2022-11-15T00:16:23+00:00	INFO ::1	update	Iniciando la instalación de la versión nueva.
2022-11-15T00:16:35+00:00	INFO ::1	update	Finalizando la instalación.
2022-11-15T00:16:35+00:00	INFO ::1	update	Inicio de las actualizaciones de SQL.
2022-11-15T00:16:35+00:00	INFO ::1	update	La versión actual de la base de datos (esquema) es 4.1.3-2022-04-08.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: CREATE TABLE IF NOT EXISTS `#__user_mfa` (   `id` int NOT NULL AUTO_INCREMENT,  .
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: DELETE FROM `#__postinstall_messages` WHERE `condition_file` = 'site://plugins/t.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: INSERT INTO `#__extensions` (`package_id`, `name`, `type`, `element`, `folder`, .
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: UPDATE `#__extensions` AS `a` 	INNER JOIN `#__extensions` AS `b` on `a`.`element.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: DELETE FROM `#__extensions` WHERE `type` = 'plugin' AND `folder` = 'twofactoraut.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: INSERT IGNORE INTO `#__postinstall_messages` (`extension_id`, `title_key`, `desc.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-05-15. Texto de la consulta: INSERT IGNORE INTO `#__mail_templates` (`template_id`, `extension`, `language`, .
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-06-15. Texto de la consulta: ALTER TABLE `#__mail_templates` MODIFY `htmlbody` mediumtext NOT NULL COLLATE 'u.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-06-19. Texto de la consulta: INSERT INTO `#__extensions` (`package_id`, `name`, `type`, `element`, `folder`, .
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.0-2022-06-22. Texto de la consulta: UPDATE `#__extensions` SET `locked` = 1 WHERE  (`type` = 'plugin' AND     (     .
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.1-2022-08-23. Texto de la consulta: DELETE FROM `#__extensions` WHERE `name` = 'plg_fields_menuitem' AND `type` = 'p.
2022-11-15T00:16:35+00:00	INFO ::1	update	Consulta ejecutada desde el archivo 4.2.3-2022-09-07. Texto de la consulta: DELETE FROM `#__template_overrides` WHERE `template` NOT IN (SELECT `name` FROM .
2022-11-15T00:16:35+00:00	INFO ::1	update	Fin de las actualizaciones de SQL.
2022-11-15T00:16:35+00:00	INFO ::1	update	Borrando los archivos y carpetas que han sido eliminados.
2022-11-15T00:16:37+00:00	INFO ::1	update	Limpieza posterior a la instalación.
2022-11-15T00:16:38+00:00	INFO ::1	update	La actualización a la versión 4.2.5 se ha completado.
