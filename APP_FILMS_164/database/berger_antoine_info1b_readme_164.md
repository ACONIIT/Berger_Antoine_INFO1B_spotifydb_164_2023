# Module 164 - Antoine Berger

Bienvenue dans mon projet pour le module 164.

Je vous invite à suivre les instructions ci-dessous afin d'assurer une utilisation optimale de mon projet

## Prérequis d'installations

- Installer [python 3.11](https://www.python.org/downloads/release/python-3110/)) ( octobre 2022)
  
  - ATTENTION : Cocher la case pour que le “PATH” intègre le programme Python
  
  - cliquer sur “disabled length limit” et cliquer sur “CLOSE”
  
  - L'IDE que nous allons utiliser est pycharm (voir ci-dessous)

- Installer [PyCharm](https://www.jetbrains.com/fr-fr/pycharm/) (community edition)
  
  - Cocher toute les cases, ASSOCIATIONS, ADD PATH, etc.

- Une fois Pycharm installé, Il faut aller download [mon code](https://github.com/ACONIIT/Berger_Antoine_INFO1B_spotifydb_164_2023) en .zip sur github
  
  - Dézipper mon projet dans votre répértoire de projet pycharm.
  
  - Ouvrir Pycharm et ouvrir mon projet : File -> Open -> Trouver le projet dans l'explorer

- Pour la partie de la BD (base de données)
  
  - Installer [Laragon](https://laragon.org/download/index.html) Portable ou Full au choix

- Lors de l'éxection de Laragon
  
  - Cliquer sur "Start all" puis sur "Database" : 
  
  - Créez une nouvelle base : "laragon"
    
    - Type de réseau : MySQL (TCP/IP)
    
    - Nom ou Ip de l'hôte : localhost
    
    - Demander les identifiants : PAS COCHER
    
    - Utilisateur : root
    
    - Mot de passe : LAISSER VIDE
    
    - port : 3036
    
    - Protocole client serveur compressé : PAS COCHER
    
    - Base de données : par défaut : Séparation par point-virgule
    
    - Commentaire : Au choix 

- Ensuite, une fois dans HEIDISQL, il vous faut faire un DUMP de ma base dans votre laragon

- Fichier -> Charger un fichier sql -> sélectionner le .sql de ma base -> open

- Nous pouvons Maintenant ouvrir mon projet
  
  - ATTENTION : Gardez laragon ouvert (start all) afin que le projet fonctionne

- Le fichier d'éxection de mon projet se nomme run_mon_app.py
  
  - Il faut exécuter le fichier et cliquez sur l'adresse qui s'affiche dans la console.
