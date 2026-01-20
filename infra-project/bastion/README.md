# Bastion Host Configuration

Configuration du serveur bastion pour l'administration sécurisée de l'infrastructure.

## Description

Le bastion est un serveur durci qui sert de point d'entrée unique pour l'administration de l'infrastructure. Tous les accès administratifs doivent passer par ce serveur.

## Fonctionnalités

- Point d'entrée unique pour l'administration
- Authentification renforcée (SSH avec clés, 2FA)
- Journalisation complète des sessions
- Accès restreint aux ressources internes

## Configuration

Les fichiers de configuration se trouvent dans le répertoire `config/`.

## Bonnes pratiques

1. Utiliser uniquement l'authentification par clé SSH
2. Désactiver l'authentification par mot de passe
3. Activer l'authentification à deux facteurs
4. Maintenir des logs d'audit complets
5. Limiter les utilisateurs autorisés
6. Mettre à jour régulièrement le système

## Sécurité

- Désactiver root login via SSH
- Utiliser fail2ban pour protéger contre les attaques par force brute
- Configurer un timeout de session automatique
- Restreindre l'accès par IP source si possible
