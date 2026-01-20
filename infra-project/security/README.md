# Security

Politiques et configurations de sécurité pour l'infrastructure.

## Description

Ce répertoire contient les politiques de sécurité, les configurations de durcissement et les bonnes pratiques de sécurité pour l'infrastructure.

## Principes de sécurité

### Defense in Depth (Défense en profondeur)
Plusieurs couches de sécurité pour protéger l'infrastructure.

### Least Privilege (Moindre privilège)
Accorder uniquement les permissions nécessaires.

### Zero Trust
Ne jamais faire confiance, toujours vérifier.

## Mesures de sécurité

### 1. Durcissement système (Hardening)

#### Mises à jour
```bash
# Activer les mises à jour automatiques de sécurité
sudo apt install unattended-upgrades
sudo dpkg-reconfigure unattended-upgrades
```

#### SSH
- Désactiver l'authentification par mot de passe
- Utiliser uniquement l'authentification par clé
- Changer le port par défaut (optionnel)
- Limiter les utilisateurs autorisés

#### Fail2ban
```bash
# Installation
sudo apt install fail2ban

# Configuration pour SSH, Nginx, etc.
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
```

### 2. Pare-feu

Voir `../firewall/` pour la configuration nftables.

### 3. SELinux / AppArmor

Utiliser les modules de sécurité du noyau Linux pour renforcer la sécurité.

### 4. Authentification

- Authentification à deux facteurs (2FA)
- Politique de mots de passe forts
- Gestion centralisée des identités (LDAP/AD)

### 5. Chiffrement

#### SSL/TLS
- Utiliser Let's Encrypt pour les certificats
- Configurer uniquement TLS 1.2 et 1.3
- Désactiver les ciphers faibles

#### Chiffrement des données
- Chiffrer les données sensibles au repos
- Chiffrer les communications réseau

### 6. Audit et Logs

```bash
# Installation de auditd
sudo apt install auditd

# Activer l'audit
sudo systemctl enable auditd
sudo systemctl start auditd
```

### 7. Analyse de vulnérabilités

#### Lynis
```bash
# Installation
sudo apt install lynis

# Audit du système
sudo lynis audit system
```

#### OpenSCAP
Analyse de conformité et de vulnérabilités.

### 8. IDS/IPS

#### Suricata
Système de détection et prévention d'intrusion.

```bash
sudo apt install suricata
sudo systemctl enable suricata
sudo systemctl start suricata
```

### 9. Antivirus

#### ClamAV
```bash
sudo apt install clamav clamav-daemon
sudo freshclam
```

## Politiques de sécurité

### Gestion des accès
1. Révision régulière des accès
2. Suppression immédiate des accès des employés partis
3. Utilisation de comptes nominatifs

### Gestion des mots de passe
1. Longueur minimale : 12 caractères
2. Complexité requise
3. Rotation tous les 90 jours pour les comptes privilégiés
4. Pas de réutilisation

### Gestion des incidents
1. Procédure de signalement
2. Équipe de réponse aux incidents
3. Plan de continuité d'activité

## Conformité

- RGPD (protection des données personnelles)
- ISO 27001 (sécurité de l'information)
- PCI-DSS (si traitement de cartes bancaires)

## Formation

- Sensibilisation à la sécurité pour tous les employés
- Formation technique pour les administrateurs
- Tests de phishing réguliers
