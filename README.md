# Application de Don de Sang (BloodDonor)

Cette application Flutter utilise Firebase comme backend pour permettre aux utilisateurs de faire des dons de sang et de rechercher des donneurs dans leur région. L'application prend en charge les fonctionnalités suivantes :

- Inscription et authentification des utilisateurs.
- Enregistrement des informations des donneurs de sang.
- Création de demandes de don de sang.
- Affichage des demandes de don de sang disponibles.
- Envoi de notifications push en temps réel aux donneurs.
- Espace de chat pour les utilisateurs.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants :

- Flutter SDK installé (version 3.0 ou supérieure)
- Compte Firebase (https://console.firebase.google.com) et un projet Firebase créé.

## Configuration du Projet

1. Clonez ce dépôt sur votre machine locale.
2. Dans le répertoire racine du projet, placez le fichier `google-services.json` téléchargé à partir de votre projet Firebase.

## Installation des Dépendances

Exécutez la commande suivante pour télécharger les dépendances nécessaires au projet :

```
flutter pub get
```

## Configuration Firebase

1. Créez un nouveau projet Firebase sur le site Web Firebase (https://console.firebase.google.com).
2. Ajoutez une application Flutter, Android , Ios et Web à votre projet Firebase en suivant les etapes
3. Creez et Ajoutez vos clés firebase dans le fichier .env (voir .env.example)

## Structure des Données Firestore

Le modèle de données Firestore pour cette application comprend les collections suivantes :

- Users (utilisateurs)
- BloodDonations (donations de sang)
- BloodRequests (demandes de don de sang)
- BloodCenters (centres agréés)
- ChatRooms (salles de chat)
- Messages (messages dans les salles de chat)

Consultez le [Modèle de Données Complet](MODELE) pour obtenir plus d'informations sur la structure des données.

## Configuration des Autorisations

Assurez-vous d'avoir configuré les règles de sécurité appropriées pour votre base de données Firestore et l'authentification des utilisateurs.

## Exécution du Projet

Connectez un périphérique ou un émulateur, puis exécutez la commande suivante pour lancer l'application :

```
flutter run
```

## Contribuer

Les contributions sont les bienvenues ! Si vous souhaitez améliorer cette application, veuillez soumettre une demande de pull avec vos modifications.

## Licence

Ce projet est sous licence MIT. Pour plus d'informations, consultez le fichier [LICENSE](LICENSE).