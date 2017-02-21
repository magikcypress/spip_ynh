<?php
if (!defined("_ECRIRE_INC_VERSION")) return;
$GLOBALS['spip_connect_version'] = 0.8;
spip_connect_db('localhost','','__DB_USER__','__DB_PWD__','spip','mysql', 'spip','','');
?>