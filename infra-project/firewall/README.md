# Firewall Configuration

Configuration du pare-feu avec nftables pour sécuriser l'infrastructure réseau.

## Fichiers

- `rules.nft` : Règles de filtrage nftables

## Description

Ce répertoire contient les règles de pare-feu pour protéger l'infrastructure contre les accès non autorisés et les menaces réseau.

## Utilisation

Pour appliquer les règles :
```bash
sudo nft -f rules.nft
```

Pour vérifier les règles actives :
```bash
sudo nft list ruleset
```
