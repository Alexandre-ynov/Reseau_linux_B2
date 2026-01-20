# Database MariaDB Configuration

Configuration de la base de données MariaDB pour les applications de l'entreprise.

## Description

MariaDB est utilisée comme système de gestion de base de données relationnelle pour stocker les données des applications.

## Installation

```bash
sudo apt update
sudo apt install mariadb-server mariadb-client
```

## Sécurisation

Après l'installation, sécuriser l'installation :

```bash
sudo mysql_secure_installation
```

## Configuration

### Création d'une base de données

```sql
CREATE DATABASE app_db;
CREATE USER 'app_user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON app_db.* TO 'app_user'@'localhost';
FLUSH PRIVILEGES;
```

### Fichiers de configuration

- Configuration principale : `/etc/mysql/mariadb.conf.d/50-server.cnf`

## Sauvegardes

Voir le répertoire `../backups/` pour les scripts de sauvegarde de base de données.

## Performance

- Optimiser les paramètres de mémoire selon les ressources disponibles
- Configurer le cache de requêtes
- Activer les logs lents pour identifier les requêtes problématiques

## Sécurité

- Utiliser des mots de passe forts
- Limiter les accès réseau
- Désactiver l'accès root distant
- Chiffrer les connexions avec SSL/TLS
