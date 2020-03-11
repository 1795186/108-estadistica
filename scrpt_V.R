#script
#clase 11.03.2020
#matricula 1795186




# Importar datos  ---------------------------------------------------------

vivero <- read.csv("vivero.csv", header =T)

summary(vivero_csv)

boxplot(vivero_csv$IE ~ vivero_csv$Tratamiento, col="blue",
        xlab = "Tratamiento", ylab = "IE")


# prueba de t -------------------------------------------------------------

t.test(vivero_csv$IE ~ vivero_csv$Tratamiento, var.equal=T)

