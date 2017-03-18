# SPIP for YunoHost

* Attention:* ne pas utiliser cette version, mais la version sur [YunoHost-Apps](https://github.com/YunoHost-Apps/spip_ynh)
* Forbidden:* Don't use this version, but a version into [YunoHost-Apps](https://github.com/YunoHost-Apps/spip_ynh)


## SPIP c'est quoi ?

SPIP est un système de publication pour l’Internet qui s’attache particulièrement au fonctionnement collectif, au multilinguisme et à la facilité d’emploi. C’est un logiciel libre, distribué sous la licence GNU/GPL. Il peut ainsi être utilisé pour tout site Internet, qu’il soit associatif ou institutionnel, personnel ou marchand.

Source: [spip.net](http://www.spip.net/fr_rubrique91.html)

## Fonctionnalité de l'application pour Yunohost

- Installation de la base sans passer par le système d'installation
- Support multilingue
- Support LDAP

### Installation

`$ sudo yunohost app install https://github.com/YunoHost-Apps/spip_ynh.git`

### Mise à jour

`$ sudo yunohost app upgrade --verbose spip -u https://github.com/YunoHost-Apps/spip_ynh.git`

### Utilisation

Accéder à l'administration du site en écrivant l'adresse suivante dans votre navigateur.

https://www.domain.tld/spip/ecrire

Faire une demande de "mot de passe oublié" pour changer votre mot de passe, vous recevez un email vous indiquant comment procéder au changement de mot de passe.

## What is SPIP?

SPIP is a publishing system for the Internet in which great importance is attached to collaborative working, to multilingual environments, and to simplicity of use for web authors. It is free software, distributed under the GNU/GPL licence. This means that it can be used for any Internet site, whether personal or institutional, non-profit or commercial.

Source: [spip.net](http://www.spip.net/en_rubrique25.html)

### Use

Access the site administration by writing the following address in your browser.

https://www.domain.tld/spip/ecrire

Request a "forgotten password" to change your password, you will receive an email telling you how to change your password.

## Features for Yunohost app

- Database install without going through the system install
- Multilanguage support
- LDAP support

## Versionning

### Version 1.1.4 (05/03/17)

- Support LDAP

### Version 1.1.3 (22/02/17)

- Update scripts for passing package_linter
- Install database
- Multilanguage

### Version 1.0.3 (20/10/16)

- Update script - status test

### Version 1.0.2 (29/08/16)

- Fix Packaging [Source](https://forum.yunohost.org/t/news-about-app-management-and-packaging-in-yunohost-2-4/1379/1)
- Update SPIP Version

### Version 1.0.1 (04/01/16)

- Delete SPIP sources
- Fix install script for download and extract SPIP

###Version 1.0.0 (28/12/15)

- Create script install
