# Backups

Stratégies et configurations de sauvegarde pour l'infrastructure.

## Description

Ce répertoire contient les scripts et configurations pour les sauvegardes régulières de l'infrastructure.

## Stratégie de sauvegarde

### Principe 3-2-1

- **3** copies des données
- **2** types de supports différents
- **1** copie hors site

## Types de sauvegardes

### Sauvegarde complète (Full Backup)
- Fréquence : Hebdomadaire
- Rétention : 4 semaines

### Sauvegarde incrémentale
- Fréquence : Quotidienne
- Rétention : 7 jours

### Sauvegarde des bases de données
- Fréquence : Quotidienne + dumps avant modifications importantes
- Rétention : 30 jours

## Données à sauvegarder

1. **Bases de données**
   - Dumps MariaDB
   - Données applicatives

2. **Configurations**
   - Fichiers de configuration système
   - Configurations des services
   - Clés et certificats

3. **Données utilisateur**
   - Fichiers uploads
   - Documents

4. **Logs**
   - Logs système
   - Logs applicatifs
   - Logs d'audit

## Outils

### rsync
```bash
# Sauvegarde incrémentale avec rsync
rsync -avz --delete /source/ /destination/
```

### mysqldump
```bash
# Sauvegarde base de données
mysqldump -u root -p --all-databases > backup.sql
```

### tar
```bash
# Archive compressée
tar -czf backup-$(date +%Y%m%d).tar.gz /data/
```

## Automatisation

Utiliser cron pour automatiser les sauvegardes :

```bash
# Sauvegarde quotidienne à 2h du matin
0 2 * * * /usr/local/bin/backup-daily.sh

# Sauvegarde hebdomadaire le dimanche à 3h
0 3 * * 0 /usr/local/bin/backup-weekly.sh
```

## Restauration

Tester régulièrement la restauration des sauvegardes pour garantir leur fiabilité.

## Sécurité

- Chiffrer les sauvegardes sensibles
- Contrôler l'accès aux fichiers de sauvegarde
- Stocker les sauvegardes hors site
- Vérifier l'intégrité des sauvegardes
