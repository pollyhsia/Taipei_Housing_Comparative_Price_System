library(leaflet)

output$showMap <- renderLeaflet({
  showTableId = which(getData$tag %in% input$mapcheck) #%in% 陣列--選項是否在list裡
  
  addresspoint<-address_output(input$address)
  lng = getData[showTableId,2]
  lat = getData[showTableId,3]
  
  mylng=as.numeric(addresspoint$lng)
  mylat=as.numeric(addresspoint$lat)
  
  markers = leaflet() %>%   #生出leaflet
    addTiles() %>%          #生出街道
    setView(mylng,
            mylat, zoom = input$Zoom) %>%  #決定地圖中心點
    addMarkers( lng, lat, icon = Icons[input$mapcheck]) %>%  
    addMarkers( mylng, mylat)%>% 
  addCircles(lng = mylng,
             lat = mylat,
             weight = 1,
             radius = input$radius
  )
  markers
  
  #addresspoint<-address_output(input$address)
  #setView(as.numeric(addresspoint$lng),as.numeric(addresspoint$lat),zoom=13)
  
  
  
})