getData = read.csv("taipei_store.csv")

WH = 30
Ax_y = WH/2


Icons <- iconList(
  star = makeIcon(iconUrl ="star.png",
                  iconWidth = WH, iconHeight = WH,
                  iconAnchorX = Ax_y, iconAnchorY = Ax_y),
  cosmed = makeIcon(iconUrl ="cosmed.png",
                    iconWidth = WH, iconHeight = WH,
                    iconAnchorX = Ax_y, iconAnchorY = Ax_y),
  post = makeIcon(iconUrl ="post.png",
                  iconWidth = WH, iconHeight = WH,
                  iconAnchorX = Ax_y, iconAnchorY = Ax_y),
  mrt = makeIcon(iconUrl ="mrt.png",
                  iconWidth = WH, iconHeight = WH,
                  iconAnchorX = Ax_y, iconAnchorY = Ax_y),
  cafe8mrt = makeIcon(iconUrl ="cafe8mrt.png",
                 iconWidth = WH, iconHeight = WH,
                 iconAnchorX = Ax_y, iconAnchorY = Ax_y)
)