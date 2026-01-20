# VPN WireGuard Configuration

Configuration du VPN WireGuard pour les accès sécurisés distants à l'infrastructure.

## Fichiers

- `wg0.conf` : Configuration de l'interface WireGuard

## Description

WireGuard est un VPN moderne, rapide et sécurisé qui permet aux utilisateurs distants de se connecter de manière sécurisée à l'infrastructure.

## Installation

```bash
sudo apt update
sudo apt install wireguard
```

## Configuration

1. Placer le fichier `wg0.conf` dans `/etc/wireguard/`
2. Ajuster les clés et les adresses IP selon votre environnement
3. Démarrer le VPN :

```bash
sudo systemctl enable wg-quick@wg0
sudo systemctl start wg-quick@wg0
```

## Vérification

```bash
sudo wg show
```
