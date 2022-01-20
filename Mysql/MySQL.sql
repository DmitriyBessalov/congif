Лог запросов:
nano /etc/mysql/mariadb.conf.d/50-server.cnf
#general_log_file    	= /var/log/mysql/mysql.log
#general_log         	= 1

примеры SQL запросов:
SELECT `email` FROM `users`;
$result = $db->query($sql)->fetchALL(PDO::FETCH_COLUMN);

SELECT `email`,`fio`,`phone`,`role`,`aktiv` FROM `users` WHERE `id`='1' LIMIT 1;
$result = $db->query($sql)->fetch(PDO::FETCH_ASSOC);

SELECT u.id, u.email, u.fio, u.role, u.phone, u.last_ip , u.data_add, GROUP_CONCAT(`p`.`domen` SEPARATOR ',') AS `domen` FROM ploshadki p RIGHT OUTER JOIN users u ON p.user_email = u.email GROUP BY u.email;
$result = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

SELECT `promo_ids` FROM `words` WHERE `word` IN ('".$words."');

UPDATE `users` SET `phpsession` = '" . $session . "',`last_ip`='" . $ip . "' WHERE `email`='" . $email . "';

INSERT INTO `users` SET ".$id." `email`='email', `password_md5`='password_md5',`fio`='fio',`role`='admin',`phone`='phone',`aktiv`='1' ON DUPLICATE KEY UPDATE `email` = VALUES(`email`), `password_md5` = VALUES(`password_md5`), `fio` = VALUES(`fio`), `role` = VALUES(`role`), `phone` = VALUES(`phone`),`aktiv` = VALUES(`aktiv`);
$db->query($sql);
$id=$db->lastInsertId();

REPLACE INTO `style_promo` SET `id`='1',`keys`='value';

DELETE FROM `ploshadki` WHERE `ploshadki`.`id` = '1';
$db->query($sql);





#сброс root пароля
http://ikode.ru/articles/kak-sbrosit-parol-root-mysql-na-ubuntu-1804










































