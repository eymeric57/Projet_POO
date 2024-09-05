# Projet Airbnb - PHP Orienté Objet 🏠

## À propos du projet
Ce projet est une application PHP orientée objet inspirée d'Airbnb. Il a été développé dans le cadre de ma formation en développement web pour appliquer et approfondir les connaissances en PHP orienté objet en recréant des fonctionnalités clés d'une plateforme de location entre particuliers.

## 🎯 Objectifs d'apprentissage
- Appliquer les concepts de la programmation orientée objet en PHP
- Comprendre et implémenter une architecture MVC (Modèle-Vue-Contrôleur)
- Gérer les interactions utilisateur et les flux de données
- Travailler avec une base de données pour stocker et récupérer des informations
- Développer des fonctionnalités similaires à celles d'une plateforme de réservation en ligne

## 🚀 Démarrage rapide
Pour lancer ce projet localement, suivez ces étapes :

1. **Prérequis**
   - Lando installé sur votre machine
   - Composer pour la gestion des dépendances

2. **Installation**
   - Clonez ce dépôt sur votre machine locale : 
     ```bash
     git clone <URL_DU_DEPOT>
     ```
   - Naviguez dans le répertoire du projet : 
     ```bash
     cd <NOM_DU_REPERTOIRE>
     ```
   - Lancez l'environnement Lando : 
     ```bash
     lando start
     ```
   - Importez la base de données : 
     ```bash
     lando db-import bdd-data_base_airbnb
     ```
   - Installez les dépendances avec Composer : 
     ```bash
     lando composer install
     ```

## 🛠 Technologies utilisées
- PHP 8.x
- MySQL
- Lando pour la virtualisation locale
- Composer pour la gestion des dépendances
