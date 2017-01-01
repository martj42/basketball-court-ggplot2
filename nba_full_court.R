library('ggplot2')
library('ggthemes')

ggplot(data=data.frame(x=1,y=1),aes(x,y))+
  ###floor:
  geom_rect(aes(xmin = -0.5, xmax = 15.74, ymin = -14.825, ymax = 14.825),fill = "darkgoldenrod", alpha = 0.7) +
  geom_rect(aes(xmin = 5.18, xmax = 10.06, ymin = 8.555, ymax = 14.325),fill = "red2", alpha = 0.85) +
  geom_rect(aes(xmin = 5.18, xmax = 10.06, ymin = -14.325, ymax = -8.555),fill = "red2", alpha = 0.85) +
  ###court:
  geom_path(data=data.frame(x=c(0,0,15.24,15.24,0),y=c(-14.325,14.325,14.325,-14.325,-14.325)), colour = "white")+
  ###centre line:
  geom_path(data=data.frame(x=c(0,15.24),y=c(0,0)), colour = "white")+
  ###centre circle:
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=c(sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-609.6:(-1)/1000,1:609.6/1000)+7.62,y=c(sqrt(.6096^2-c(-609.6:(-1)/1000,1:609.6/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=-c(sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-609.6:(-1)/1000,1:609.6/1000)+7.62,y=-c(sqrt(.6096^2-c(-609.6:(-1)/1000,1:609.6/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###three point arc:
  geom_path(data=data.frame(x=c(-6702:(-1)/1000,1:6702/1000)+7.62,y=c(12.725-sqrt(7.24^2-c(-6702:(-1)/1000,1:6702/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-6702:(-1)/1000,1:6702/1000)+7.62,y=c(sqrt(7.24^2-c(-6702:(-1)/1000,1:6702/1000)^2))-12.725),aes(x=x,y=y), colour = "white")+
  ###three point lines:
  geom_path(data=data.frame(x=c(0.92,0.92),y=c(14.325,9.98)), colour = "white")+
  geom_path(data=data.frame(x=c(14.32,14.32),y=c(14.325,9.98)), colour = "white")+
  geom_path(data=data.frame(x=c(0.92,0.92),y=-c(14.325,9.98)), colour = "white")+
  geom_path(data=data.frame(x=c(14.32,14.32),y=-c(14.325,9.98)), colour = "white")+
  ###backboard:
  geom_path(data=data.frame(x=c(6.705,8.535),y=c(13.125,13.125)), colour = "white")+
  geom_path(data=data.frame(x=c(6.705,8.535),y=-c(13.125,13.125)), colour = "white")+
  ###basket:
  geom_path(data=data.frame(x=7.62+c(-225:(-1)/1000,1:225/1000),y=c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))+12.725),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.62+c(-225:(-1)/1000,1:225/1000),y=-c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))+12.725),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.62+c(-225:(-1)/1000,1:225/1000),y=c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))-12.725),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.62+c(-225:(-1)/1000,1:225/1000),y=-c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))-12.725),aes(x=x,y=y), colour = "white")+
  ###6-yard box:
  geom_path(data=data.frame(x=c(5.18,5.18,10.06,10.06),y=c(14.325,8.555,8.555,14.325)), colour = "white")+
  geom_path(data=data.frame(x=c(5.7912,5.7912),y=c(14.325,8.555)), colour = "white")+
  geom_path(data=data.frame(x=c(9.4488,9.4488),y=c(14.325,8.555)), colour = "white")+
  geom_path(data=data.frame(x=c(5.18,5.18,10.06,10.06),y=-c(14.325,8.555,8.555,14.325)), colour = "white")+
  geom_path(data=data.frame(x=c(5.7912,5.7912),y=-c(14.325,8.555)), colour = "white")+
  geom_path(data=data.frame(x=c(9.4488,9.4488),y=-c(14.325,8.555)), colour = "white")+
  ###free throw arc:
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=c(8.555-sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=c(sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))+8.555),aes(x=x,y=y), colour = "white", linetype = "dashed")+
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=-c(8.555-sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1830:(-1)/1000,1:1830/1000)+7.62,y=-c(sqrt(1.83^2-c(-1830:(-1)/1000,1:1830/1000)^2))-8.555),aes(x=x,y=y), colour = "white", linetype = "dashed")+
  ###no-charge arc:
  geom_path(data=data.frame(x=c(-1220:(-1)/1000,1:1220/1000)+7.62,y=c(-sqrt(1.22^2-c(-1220:(-1)/1000,1:1220/1000)^2))+12.725),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1220:(-1)/1000,1:1220/1000)+7.62,y=-c(-sqrt(1.22^2-c(-1220:(-1)/1000,1:1220/1000)^2))-12.725),aes(x=x,y=y), colour = "white")+
  ###fix aspect ratio to 1:1:
  coord_fixed() +
  ###remove all non-geom elements:
  theme_solid()
