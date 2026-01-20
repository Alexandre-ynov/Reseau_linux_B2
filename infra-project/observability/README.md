# Observability

Configuration des outils de monitoring et d'observabilité pour l'infrastructure.

## Description

Ce répertoire contient les configurations pour surveiller l'état et les performances de l'infrastructure.

## Outils recommandés

### Monitoring

- **Prometheus** : Collecte de métriques
- **Grafana** : Visualisation des métriques
- **Node Exporter** : Métriques système Linux

### Logs

- **Loki** : Agrégation de logs
- **Promtail** : Collecte de logs

### Alerting

- **Alertmanager** : Gestion des alertes

## Métriques à surveiller

### Système
- Utilisation CPU
- Utilisation mémoire
- Utilisation disque
- I/O disque
- Trafic réseau

### Services
- Disponibilité des services
- Temps de réponse
- Taux d'erreur
- Nombre de requêtes

### Base de données
- Connexions actives
- Requêtes lentes
- Utilisation du cache
- Temps de réponse des requêtes

## Configuration

```bash
# Installation de Prometheus
sudo apt update
sudo apt install prometheus

# Installation de Grafana
sudo apt install -y software-properties-common
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt update
sudo apt install grafana
```

## Dashboards

Créer des dashboards Grafana pour :
- Vue d'ensemble de l'infrastructure
- Performance des serveurs
- État des services
- Métriques applicatives
