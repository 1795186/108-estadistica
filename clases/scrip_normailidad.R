library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")





# normalidad --------------------------------------------------------------

head(conjunto)


# Aplicar prueba de shapiro.test para la ariable Altura -------------------

shapiro.test(conjunto$Altura)
            
ks.test(conjunto$Diametro, "pnorm",
        mean=mean(conjunto$Diametro,
                  sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)

