####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunu�n Hern�ndez �lvarez (UAEH)


# MATRIZ DE CORRELACION


### correl1
# install.packages("psych")
library(psych)
library(readr)

choose.files()
correl <- read_csv("C:\\Users\\yunh_\\Desktop\\DOCTORADO\\4to. SEMESTRE\\AN�LISIS DE DATOS\\Tareas\\Laboratorios\\Lab 52 - Correlaci�n\\INPUT\\para r final.csv")
View(correl)

attach(correl)
names(correl)
pairs(correl)
pairs.panels(correl)

### correl2

# Calculamos la correlacion 
complex_corr <- cor(correl, method="pearson")
complex_corr

# Redondeamos
complex_corr = round(complex_corr, digits=2)
complex_corr

# matriz de correlacion
# install.packages("ggcorrplot")
library(ggcorrplot)
library(ggplot2)

MC <- ggcorrplot(complex_corr, method ="circle", type= "lower", lab=TRUE) +
  ggtitle("MATRIZ DE CORRELACION") +
  theme_minimal()

MC


