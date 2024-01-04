

# Importation des données 

print("data charged")
data <- read.csv("/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-Shiny/DATA/Crime_Data.csv", header = TRUE)
print("data load")

titre_appli = " Homeless Victim in LA"

variables_data = names(data)

# Filtrage des données pour les victimes sans-abri
data <- data %>%
  select(DR_NO, DATE.OCC, Date.Rptd, AREA.NAME, AREA, Rpt.Dist.No, Part.1.2, Crm.Cd, Crm.Cd.Desc, Mocodes, Vict.Age, Vict.Sex,
         Premis.Cd, Premis.Desc, Weapon.Desc, Status.Desc, Crm.Cd.1, LOCATION, Cross.Street, LAT, LON) %>%
  separate_rows(Mocodes, sep = " ") %>%
  filter(Mocodes == 1218)

