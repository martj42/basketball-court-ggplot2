library('ggplot2')
library('ggthemes')

ggplot(data=data.frame(x=1,y=1),aes(x,y))+
  ###floor:
  geom_rect(aes(xmin = -0.5, xmax = 15.5, ymin = -14.5, ymax = 14.5),fill = "darkgoldenrod", alpha = 0.7) +
  geom_rect(aes(xmin = 5.05, xmax = 9.95, ymin = 8.2, ymax = 14),fill = "black", alpha = 0.85) +
  geom_rect(aes(xmin = 5.05, xmax = 9.95, ymin = -14, ymax = -8.2),fill = "black", alpha = 0.85) +
  ###court:
  geom_path(data=data.frame(x=c(0,0,15,15,0),y=c(-14,14,14,-14,-14)), colour = "white")+
  ###centre circle:
  geom_path(data=data.frame(x=c(-1800:(-1)/1000,1:1800/1000)+7.5,y=c(sqrt(1.8^2-c(-1800:(-1)/1000,1:1800/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1800:(-1)/1000,1:1800/1000)+7.5,y=c(-sqrt(1.8^2-c(-1800:(-1)/1000,1:1800/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###centre line:
  geom_path(data=data.frame(x=c(-0.15,15.15),y=c(0,0)), colour = "white")+
  ###three point arcs:
  geom_path(data=data.frame(x=c(-6600:(-1)/1000,1:6600/1000)+7.5,y=c(12.425-sqrt(6.75^2-c(-6600:(-1)/1000,1:6600/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-6600:(-1)/1000,1:6600/1000)+7.5,y=c(-12.425+sqrt(6.75^2-c(-6600:(-1)/1000,1:6600/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###three point lines:
  geom_path(data=data.frame(x=c(0.9,0.9),y=c(14,11)), colour = "white")+
  geom_path(data=data.frame(x=c(14.1,14.1),y=c(14,11)), colour = "white")+
  geom_path(data=data.frame(x=c(0.9,0.9),y=c(-14,-11)), colour = "white")+
  geom_path(data=data.frame(x=c(14.1,14.1),y=c(-14,-11)), colour = "white")+
  ###backboards:
  geom_path(data=data.frame(x=c(6.6,8.4),y=c(12.8,12.8)), colour = "white")+
  geom_path(data=data.frame(x=c(7.5,7.5),y=c(12.8,12.65)), colour = "white")+
  geom_path(data=data.frame(x=c(6.6,8.4),y=-c(12.8,12.8)), colour = "white")+
  geom_path(data=data.frame(x=c(7.5,7.5),y=-c(12.8,12.65)), colour = "white")+
  ###baskets:
  geom_path(data=data.frame(x=7.5+c(-225:(-1)/1000,1:225/1000),y=c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))+12.425),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.5+c(-225:(-1)/1000,1:225/1000),y=-c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))+12.425),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.5+c(-225:(-1)/1000,1:225/1000),y=c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))-12.425),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=7.5+c(-225:(-1)/1000,1:225/1000),y=-c(sqrt(0.225^2-c(-225:(-1)/1000,1:225/1000)^2))-12.425),aes(x=x,y=y), colour = "white")+
  ###lane box:
  geom_path(data=data.frame(x=c(5.05,5.05,9.95,9.95),y=c(14,8.2,8.2,14)), colour = "white")+
  geom_path(data=data.frame(x=c(5.05,5.05,9.95,9.95),y=-c(14,8.2,8.2,14)), colour = "white")+
  ###free throw arc:
  geom_path(data=data.frame(x=c(-1800:(-1)/1000,1:1800/1000)+7.5,y=c(8.2-sqrt(1.8^2-c(-1800:(-1)/1000,1:1800/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-1800:(-1)/1000,1:1800/1000)+7.5,y=-c(8.2-sqrt(1.8^2-c(-1800:(-1)/1000,1:1800/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###no-charge arc:
  geom_path(data=data.frame(x=c(-1250:(-1)/1000,1:1250/1000)+7.5,y=c(-sqrt(1.25^2-c(-1250:(-1)/1000,1:1250/1000)^2))+12.425),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(6.25,6.25),y=c(12.8,12.425)), colour = "white")+
  geom_path(data=data.frame(x=c(8.75,8.75),y=c(12.8,12.425)), colour = "white")+
  geom_path(data=data.frame(x=c(-1250:(-1)/1000,1:1250/1000)+7.5,y=c(sqrt(1.25^2-c(-1250:(-1)/1000,1:1250/1000)^2))-12.425),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(6.25,6.25),y=-c(12.8,12.425)), colour = "white")+
  geom_path(data=data.frame(x=c(8.75,8.75),y=-c(12.8,12.425)), colour = "white")+
  ###fix aspect ratio to 1:1:
  coord_fixed() +
  ###remove all non-geom elements:
  theme_solid()
