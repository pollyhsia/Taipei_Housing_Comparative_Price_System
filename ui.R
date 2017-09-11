
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(leaflet)

shinyUI(fluidPage(
  
  
  # Application title
  titlePanel("Taipei Housing Comparative Price System"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      wellPanel(
        selectInput("section", 
                    label = h4("Select District:"), 
                    choices = list("中正區(Jhongjheng District)" = "d20","大同區(Datong District)" = "d21",
                                   "中山區(Jhongshan District)"="d22","松山區(Songshan District)" = "d23",
                                   "大安區(Da-an District)" = "d24","萬華區(Wanhua District)"="d25",
                                   "信義區(Sinyi District)" = "d26","士林區(Shihlin District)"="d27",
                                   "北投區(Beitou District)"="d28","內湖區(Neihu District)" = "d29",
                                   "南港區(Nangang District)"="d210","文山區(Wunshan District)"="d211"),
                    selected = "d24"
        ),
        
        textInput("address", label = h4("Enter address:"), 
                  value = "羅斯福路四段一號"),
        
        
        
        numericInput("area", 
                     label = h4("Enter square feet:"), 
                     value = 30),
        
        selectInput("kind", label = h4("Enter house type:"), 
                    choices = list("獨立套房(Independent suite)" = "d41",
                                   "分租套房(Flat share with individual bathroom)" = "d42",
                                   "雅房(Flat share without individual bathroom)" = "d43",
                                   "整層住家(Apartment)" = "d40"), 
                    selected = "d40"),
        
        
        # checkboxGroupInput("top", 
        #                    label = h4("請勾選"), 
        #                    choices = ("????????????" = "d5")
        #                    ),
        
        checkboxGroupInput("top",
                           label = h4("Select house condition:"),
                           choices = list("頂樓加蓋(Rooftop add-on)" = "d5",
                                          "家俱(Furniture)" = "d6",
                                          "電視(Television)" = "d7",  
                                          "冰箱(Refrigerator)" = "d8",
                                          "洗衣機(Washing machine)" = "d9"
                           )
        )),
      
      wellPanel(
        checkboxGroupInput("mapcheck", 
                           "Select landmarks:", 
                           choices = list("星巴克(Starbucks)" = "star", 
                                          "康是美(Cosmed)" = "cosmed",
                                          "郵局(Post office)" = "post",
                                          "捷運站(Metro exit)"="mrt"),
                           selected = "star"
        ),
        sliderInput("Zoom",
                    "Zoom In / Zoom Out:",
                    min = 10,
                    max = 18,
                    value = 16),
        sliderInput("radius",label = "Select a radius (meter):",
                    min=100,max=1000,value=500,step=25)
      )
      
      
    ), 
    
    
    
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("rentprice",h1 ),
      tableOutput("distance"),
      tableOutput("quantile"),
      plotOutput("qrplot"),
      leafletOutput("showMap")
    )
    
  ) 
  
  
))
