####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Yunuén Hernández Álvarez (UAEH)


# MATRIZ DE CORRELACION


### correl1
# install.packages("psych")
library(psych)
library(readr)

choose.files()
correl <- read_csv("C:\\Users\\yunh_\\Desktop\\DOCTORADO\\4to. SEMESTRE\\ANÁLISIS DE DATOS\\Tareas\\Laboratorios\\Lab 52 - Correlación\\INPUT\\para r final.csv")
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


