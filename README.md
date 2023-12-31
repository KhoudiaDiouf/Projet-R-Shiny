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
   - Créez un dossier "DATA"  au niveau de votre ordinateur et recupérer les données ici : 
     (https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)

4. **Ouvrir le Projet dans RStudio :**
   - Ouvrez le fichier "App.R", Global.R et Packages.R dans RStudio.
   - Au niveau de Global.R mettre le chemin qui conduit à vos données qui se trouve dans le fichier DATA 
     que vous aviez créer ultérieurement:
     data <- read.csv("/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-Shiny/DATA/Crime_Data.csv", 
          header = TRUE)

5. **Exécuter l'Application :**
   - utilisez la commande suivante : runApp('/chemin/vers/votre/dossier/contenant/App.R') au niveau de la 
     console R  avec le chemin complet vers le dossier contenant le fichier App.R.
   - Par exemple sur le mien c'est: runApp('/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-    
     Shiny/App.R/app.R')


**Confidentialité et Éthique des Données :**
- Afin de respecter la confidentialité des données, le jeu de données réel n'est pas inclus dans ce dépôt. Les informations sensibles ont été anonymisées.

**Instructions :**
- Sélectionnez une tranche d'âge, explorez les onglets pour obtenir des informations visuelles sur les tendances des incidents, et découvrez la carte interactive des lieux de crime.

