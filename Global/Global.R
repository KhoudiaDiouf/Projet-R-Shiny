# Importe les données 

print("data charged")
data <- read.csv("/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-Shiny/Global/homeless_victim.csv", header = TRUE)
print("data load")

titre_appli = " Homeless Victim in LA"

variables_data = names(data)