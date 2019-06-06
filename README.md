# postgresql_-2018-01-18-alexandre-erwan

## 1. Installation de PostgreSQL

Lancer la commande : 
```./script/setup_postgres.sh```

## 2. Récuperation du fichier json qui contient les events github :

Taper la commande :
```./script/import_github.sh```

## 3. Créér la base de données

Taper la commande :
```./script/create_event_database.sh```

## 4. Changer la configuration

Taper la commande :
```./script/update_configuration.sh```

## 5. Créér des utilisateurs

Taper la commande :
```./script/create_users.sh```

## 6. Créér une table "events_raw" dans la base de données "github_events"

Taper la commande :
```./script/populate_raw_events.sh```

## 7. Installation de pgAdmin

Taper la commande : 
```./script/pg_admin_install.sh```