########## EJERCICIO 1 #################

rm(list = ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))


#Separando listas de medidas de protección, oficios u otros

listamp <- list()
contadormp  <- 0
listaof <- list()


for(vectores in listaDocumentos){
  if(vectores[1]=="mp"){
    listamp <- c(listamp,list(vectores[-1]))
    contadormp <- contadormp+1
    print(paste("Una MP Tiene",length(vectores[-1]),"Niñ@/s"))
  }else if(vectores[1]=="of"){
    listaof <- c(listaof,list(vectores[-1]))
  }else {"No cumple ni con oficio ni con medida de protección"
  }
}
# Entregando estadistica final

estadisticafinal <- list(c("Se cuenta con 1 MP de 1 Niñ@"),c("Se cuenta con 2 MP de 2 Niñ@s"),c("Se cuenta con 1 MP de 3 Niñ@s"))
print(estadisticafinal)



########## EJERCICIO 2 #################

rm(list = ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

#Separando listas de medidas de protección, oficios u otros

listamp <- list()
contadormp  <- 0
listaof <- list()



for(accion in listaDocumentos){
  if(accion[1]=="of"){
    listaof <- c(listaof,list(accion[-1]))
  }else if(accion[1]=="mp"){
    listamp <- c(listamp,list(accion[-1]))
  }else {"No cumple ni con oficio ni con medida de precaución"
  }
}
print(listaof)


# Agrupar según temáticas 

av01 <-list("av01")
av02 <-list("av02")
av03 <-list("av03")
av04 <-list("av04")
av05 <-list("av05")
av07 <-list("av07")
av08 <-list("av08")


for(x in listaof){
  if(x[1]=="av01"){
    av01<-c(av01,list(x[2]))
  }else if(x[1]=="av02"){
    av02<-c(av02,list(x[2]))
  }else if(x[1]=="av03"){
    av03<-c(av03,list(x[2]))
  }else if(x[1]=="av04"){
    av04<-c(av04,list(x[2]))
  }else if(x[1]=="av05"){
    av05<-c(av05,list(x[2]))
  }else if(x[1]=="av07"){
    av07<-c(av07,list(x[2]))
  }else if(x[1]=="av08"){
    av08<-c(av08,list(x[2]))
  }else{"No Cumple con ningún codigo"}
}

#entregando estadistica final

listafinal<-list(unlist(av01),unlist(av02),unlist(av03),unlist(av04),unlist(av05),unlist(av07),unlist(av08))
print(listafinal)



########## EJERCICIO 3 #################

rm(list = ls())

#El Juez dictamina que cualquier oficio que entre sus tematicas contenga Datos personales (Dape)
# será aprobadas, de lo contrario, serán reprobadas

rm(list = ls())

listaDocumentos <- list(c("mp","Juan","Christofer"),c("of","av01","ampr"),c("of","av01","ante"),
                        c("of","av08","arme"),c("of","av02","ante"),c("of","av07","ampr"),
                        c("of","av03","dape"),c("of","av01","meca"),c("of","av02","dape"),
                        c("mp","Antonia"),c("mp","Christian","Mario"),
                        c("mp","Jose","Pedro","Antonela"),c("of","av05","meca"),
                        c("of","av04","dape"),c("of","av02","arme"))

totalof <- 0
aprobados  <- 0
reprobados  <- 0
oficios <- list()

#Vaciando a una lista de solo oficios y contando cuantos son

for (x in listaDocumentos){
  if(x[1]=="of"){
    totalof <- totalof+1
    oficios <-c(oficios,list(x[-1]))
  }
}

#Actuando como juez

for(y in oficios){
  if(y[2]=="dape"){
    aprobados <- aprobados+1
  }else{
    reprobados <- reprobados+1
  }
}
print(paste("Llegaron ",totalof," of de los cuales: ",aprobados, "son aprobados y ",reprobados," son reprobados"))

