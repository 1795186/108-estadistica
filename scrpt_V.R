#Salvador García 
#clase 11.03.2020
#matricula 1795186




# Importar datos  ---------------------------------------------------------
vivero <- read.csv("vivero.csv", header =T)

summary(vivero)

boxplot(vivero$IE ~ vivero$Tratamiento, col="blue",
        xlab = "Tratamiento", ylab = "IE")


# prueba de t -------------------------------------------------------------

t.test(vivero$IE ~ vivero$Tratamiento, var.equal=T)

