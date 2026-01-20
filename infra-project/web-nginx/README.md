# Web Server Nginx Configuration

Configuration du serveur web Nginx pour héberger les applications web de l'entreprise.

## Fichiers

- `nginx.conf` : Configuration principale de Nginx

## Description

Nginx est utilisé comme serveur web et reverse proxy pour les applications de l'entreprise.

## Installation

```bash
sudo apt update
sudo apt install nginx
```

## Configuration

1. Copier `nginx.conf` vers `/etc/nginx/nginx.conf`
2. Vérifier la configuration :

```bash
sudo nginx -t
```

3. Redémarrer Nginx :

```bash
sudo systemctl restart nginx
```

## Fonctionnalités

- Serveur web haute performance
- Reverse proxy pour les applications backend
- Support SSL/TLS
- Compression gzip
- Cache statique

## Sécurité

- Configuration SSL/TLS sécurisée
- En-têtes de sécurité HTTP
- Protection contre les attaques courantes
- Rate limiting
