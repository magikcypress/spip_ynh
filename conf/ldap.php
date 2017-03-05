<?php
if (!defined("_ECRIRE_INC_VERSION")) return;
$GLOBALS['ldap_base'] = 'dc=yunohost, dc=org';
$GLOBALS['ldap_link'] = @ldap_connect('localhost','389');
@ldap_set_option($GLOBALS['ldap_link'],LDAP_OPT_PROTOCOL_VERSION,'3');
@ldap_bind($GLOBALS['ldap_link'],'dc=yunohost,dc=org','');
$GLOBALS['ldap_champs'] = array('login' => array('sAMAccountName','uid','login','userid','cn','sn'),'nom' => 'cn','email' => 'mail','bio' => 'description',);
