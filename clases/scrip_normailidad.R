library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")





# normalidad --------------------------------------------------------------

head(conjunto)


# Aplicar prueba de shapiro.test para la ariable Altura -------------------

shapiro.test(conjunto$Altura)

shapiro.test(conjunto$Diametro)
hist(conjunto$Diametro)



boxplot(conjunto$Diametro ~ conjunto$Especie, col="red")
boxplot(conjunto$Altura ~ conjunto$Especie, col="blue")
boxplot(conjunto$Vecinos ~ conjunto$Especie, col="grey")
frecu<-table(conjunto$Clase)
prop.table(frecu)
hist(frecu)
boxplot(conjunto$Clase ~ conjunto$Especie, col="yellow")
# prueba homogeniedad} ----------------------------------------------------

var(conjunto$Diametro)
var(conjunto$Altura)





# datos de Ebanos ---------------------------------------------------------

ebano <- read.csv("clases/ebanos.cSV", header = T)

hist(ebano$diametro)
hist(ebano$altura)

boxplot(ebano$diametro)
fivenum(ebano$diametro)


# ¿cuantos individuos tienen  un Diam menoir al 1er quartil? --------------


sum(ebano$diametro <=15.55)


# ¿cuantos individuos tienen  un Diam menoir al 3er quartil? --------------

sum(ebano$diametro <= 34.25)


# ¿cuantos individuos tienen  un Diam mayor al 1er quartil? ---------------

# pero menor o igual al 2do quartil? --------------------------------------

sum(ebano$diametro >=15.55 & ebano$diametro <= 25.90)

sum(ebano$diametro <=25.9)




# ¿cuantos individuos tienen  un Diam menoir al 1er quartil? --------------

  # pero menor o igual al 3er quartil? --------------------------------------

sum(ebano$diametro >=10 & ebano$diametro <=15.55)




            
ks.test(conjunto$Diametro, "pnorm",
        mean=mean(conjunto$Diametro,
                  sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)

