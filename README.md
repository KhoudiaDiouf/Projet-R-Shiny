# Projet-R-Shiny

# Aperçu du site

Bienvenue sur notre plateforme dédiée à l'analyse des incidents impliquant des victimes sans-abri à Los Angeles. Notre application Shiny offre une exploration interactive des données pour mieux comprendre les aspects géographiques, saisonniers et démographiques de ces incidents.

<img width="1425" alt="Capture d’écran 2024-01-04 à 12 36 49" src="https://github.com/KhoudiaDiouf/Projet-R-Shiny/assets/152623020/247cbc6e-0fd9-4134-a234-4a09a1805ba3">

<img width="1420" alt="Capture d’écran 2024-01-04 à 12 37 48" src="https://github.com/KhoudiaDiouf/Projet-R-Shiny/assets/152623020/8f1c9710-1bf4-41bc-9f83-0aa688a1b409">

## Étapes Préliminaires
1. **Installer R et RStudio :**
   - Téléchargez R depuis [R Project](https://www.r-project.org/).
   - Téléchargez RStudio depuis [RStudio](https://www.rstudio.com/products/rstudio/download/).

2. **Installer les Packages Requis :**
   - Exécutez la commande suivante dans la console RStudio :
     ```R
     install.packages(c("shiny", "ggplot2", "leaflet", "dplyr", "tidyr"))
     ```
## Téléchargement et Exécution de l'Application
3. **Télécharger le Code Source :**
   - Téléchargez les dossiers depuis le dépôt GitHub ou tout autre emplacement spécifié.

4. **Ouvrir le Projet dans RStudio :**
   - Ouvrez le fichier "App.R" ou le fichier principal dans RStudio.

5. **Exécuter l'Application :**
   - utilisez la commande suivante : runApp('/chemin/vers/votre/dossier/contenant/App.R') au niveau de la 
     console R  avec le chemin complet vers le dossier contenant le fichier App.R.
   - Par exemple sur le mien c'est: runApp('/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-    
     Shiny/App.R/app.R')


## Comment utiliser l'application :

1. **Tranche d'âge :** Utilisez le curseur pour sélectionner une tranche d'âge spécifique.

2. **Rechercher :** Cliquez sur le bouton "Rechercher" pour appliquer votre sélection.

## Onglets disponibles :

- **Accueil :** Explorez des graphiques interactifs pour visualiser la répartition des victimes sans-abri par ville, saison et sexe. Utilisez le curseur pour filtrer les données en fonction de tranches d'âge spécifiques et observez instantanément les changements dans les visualisations.

- **Lieux Crime :** Visualisez les emplacements géographiques des incidents criminels en fonction de la tranche d'âge sélectionnée. La carte interactive permet une exploration approfondie des emplacements exacts des incidents, offrant une perspective géographique cruciale.

---

**Confidentialité et Éthique des Données :**
- Afin de respecter la confidentialité des données, le jeu de données réel n'est pas inclus dans ce dépôt. Les informations sensibles ont été anonymisées.

**Instructions :**
- Sélectionnez une tranche d'âge, explorez les onglets pour obtenir des informations visuelles sur les tendances des incidents, et découvrez la carte interactive des lieux de crime.

