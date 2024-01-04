# Chargement du fichier global.R et packages
source("/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-Shiny/Global/global.R")
source("/Users/khoudiadiouf/Desktop/ProjetR-Shiny/Projet-R-Shiny/Packages.R/Packages.R")

ui <- fluidPage(
  titlePanel("Homeless Victim in LA"), 
  sidebarLayout(
    sidebarPanel(
      h3("Age Victim"),
      sliderInput("slider_input_1", "Choisissez une Tranche d'age:",
                  min = min(data$Vict.Age), max = max(data$Vict.Age), value = c(min(data$Vict.Age), max(data$Vict.Age))),
      actionButton("search_button", "Rechercher")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(icon = icon("house"),"Acceuil",
                 br(),
                 br(),
                 
                 #Descrition du page d'accueil
                 
                p("Bienvenue sur l'application 'Homeless Victim in LA'. 
                  Notre plateforme interactive offre une exploration approfondie des incidents impliquant 
                  des victimes sans-abri à Los Angeles. En se concentrant sur la tranche d'âge des victimes, 
                  nous vous proposons des visualisations interactives pour comprendre les tendances liées 
                  aux crimes, aux saisons, aux lieux, et à d'autres aspects importants."),
                
                 fluidRow(
                   column(12, plotOutput("season_plot")),
                   column(12, plotOutput("city_plot")),
                   column(12, plotOutput("sex_plot"))
                 )
        ),
        tabPanel(icon = icon("map-pin"), "Lieux Crime",
                 br(),
                 br(),
                 
                 #Descrition de l'onglet "Lieux crime"
                 
                 p("Explorez la carte interactive des lieux de crime pour obtenir des informations géographiques 
                 détaillées sur les incidents impliquant des victimes sans-abri. 
                 Cette section vous permet de visualiser les emplacements exacts 
                 des incidents en fonction de la tranche d'âge sélectionnée."),
                 
                 leafletOutput("crime_map")
        )
    
      )
    )
  )
)

server <- function(input, output, session) {
  observeEvent(input$search_button, {
    selected_age <- input$slider_input_1
    filtered_data <- subset(data, Vict.Age %in% selected_age)
    
    # Création du diagramme à barres par ville
    output$city_plot <- renderPlot({
      ggplot(filtered_data, aes(x = AREA.NAME)) +
        geom_bar(fill = "darkseagreen", color = "black") +
        labs(title = "Nombre de victimes Sans-abri par Ville",
             x = "Ville",
             y = "Nombre de victimes") +
        theme_minimal()
    })
    
    # Création du diagramme à barres pour les saisons
    output$season_plot <- renderPlot({
      filtered_data$DATE.OCC <- as.POSIXct(filtered_data$DATE.OCC, format="%m/%d/%Y %I:%M:%S %p")
      filtered_data$Mois <- as.numeric(format(filtered_data$DATE.OCC, "%m"))
      filtered_data$Saison <- cut(filtered_data$Mois, breaks = c(0, 3, 6, 9, 12), labels = c("Hiver", "Printemps", "Été", "Automne"))
      
      ggplot(filtered_data, aes(x = factor(filtered_data$Mois, labels = month.name), fill = Saison)) +
        geom_bar(position = "dodge", stat="count") +
        labs(title = "Répartition des victimes par Saison",
             x = "Mois",
             y = "Nombre de victime") +
        scale_fill_manual(values = c("Hiver" = "cornflowerblue", "Printemps" = "aquamarine4", "Été" = "firebrick3", "Automne" = "orange")) +
        theme_minimal()
    })
    
    # Création du diagramme à barres pour le sexe
    output$sex_plot <- renderPlot({
      ggplot(filtered_data, aes(x = Vict.Sex)) +
        geom_bar(fill = "slategray1", color = "black") +
        labs(title = "Répartition des victimes par Sexe",
             x = "Sexe",
             y = "Nombre de victimes") +
        theme_minimal()
    })
    
    # Création de la carte des lieux de crime avec vue initiale sur l'Amérique du Nord
    output$crime_map <- renderLeaflet({
      leaflet(data = filtered_data) %>%
        setView(lng = -95.7129, lat = 37.0902, zoom = 4) %>%
        addTiles() %>%
        addMarkers(
          lat = ~LAT,
          lng = ~LON,
          popup = ~paste("Sexe:", filtered_data$Vict.Sex)
        )
    })
  })
}

shinyApp(ui = ui, server = server)
