# Inventory Management - Conteneurisation Minimale

## 🚀 Démarrage en 1 commande

```bash
docker-compose up --build
```

## 🌐 Accès aux services

- **Django App** : http://localhost:8000
- **Airflow** : http://localhost:8081 (admin/admin)

## 📦 Services

- **Django** : Application web d'inventaire
- **MySQL** : Base de données
- **Airflow** : Workflows ML pour prédictions

## ⚡ Commandes utiles

```bash
# Démarrer en arrière-plan
docker-compose up -d

# Voir les logs
docker-compose logs -f

# Arrêter
docker-compose down

# Migrations Django
docker-compose exec web python manage.py migrate

# Créer superuser Django
docker-compose exec web python manage.py createsuperuser
```

## � Configuration

Les variables par défaut fonctionnent directement :
- DB : `inventory` 
- User : `root`
- Password : `password123`

**3 services, 1 commande, ça marche !**
