

```r
# Salvador Garcia Martinez 
# Matricula: 1795186
# fecha : 29.01.2020 

 # operadores basicos  ---------------------------------------------------


 2+2
```

```
## [1] 4
```

```r
 a<- 2
a+5 
```

```
## [1] 7
```

```r
a+a^2
```

```
## [1] 6
```

```r
log(a)
```

```
## [1] 0.6931472
```

```r
# ingresar codigo de datos ------------------------------------------------

peso <- c(70, 62, 52, 90, 38, 52, 50, 56, 70, 65, 76, 70, 72)

peso
```

```
##  [1] 70 62 52 90 38 52 50 56 70 65 76 70 72
```

```r
# numero de observaciones (length) ----------------------------------------
 length(peso) 
```

```
## [1] 13
```

```r
# calcular la media del peso: sumatoroa de las observaciones  -------------

# y dividirlos entre el numero de individuos muestreados ------------------

sum(peso)/length(peso) 
```

```
## [1] 63.30769
```

```r
peso.media <- sum(peso)/length(peso)

mean(peso)
```

```
## [1] 63.30769
```

```r
median(peso)
```

```
## [1] 65
```

```r
sd(peso)
```

```
## [1] 13.58544
```

```r
var(peso)
```

```
## [1] 184.5641
```

```r
fivenum(peso)
```

```
## [1] 38 52 65 70 90
```

```r
range(peso)
```

```
## [1] 38 90
```

```r
# graficas ----------------------------------------------------------------

boxplot(peso)
```

![](scrip_1_files/figure-latex/unnamed-chunk-1-1.pdf)<!-- --> 

```r
boxplot(peso, col = "green", ylab= "peso (kg)" ,
        main="peso alumnos tomado el 29.01.2020")
```

![](scrip_1_files/figure-latex/unnamed-chunk-1-2.pdf)<!-- --> 

```r
# descriptivas ------------------------------------------------------------
```


---
title: "scrip_1.R"
author: "Usuario"
date: "2020-01-29"
---

