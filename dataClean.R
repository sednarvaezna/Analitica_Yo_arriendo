folder <- "BD_INMUIEBLES/"      


file_list <- list.files(path=folder, pattern="*.csv") 

x<-read.csv(paste(folder, file_list[1], sep=''), encoding = "UTF-8")


for (i in 2:length(file_list)){
  
  x<-rbind(x,read.csv(paste(folder, file_list[i], sep=''), encoding = "UTF-8"))
}

y<-x
y$Fecha.Adquisición<-NULL
y$Telefono1<-NULL
y$Telefono2<-NULL
y$Publicación<-NULL
y$Descripción<-NULL
y$Link<-NULL
y$Pauta<-NULL
y$Dirección<-NULL
headers<-names(y)


for (i in 1:length(y)){
  
  y[i][y[i] == ""] <- NA
  
}
y <- na.omit(y)

write.csv(x,file="dataInmueblesFecha(15-07-2019--14-10-2019).csv", fileEncoding = "UTF-8")








