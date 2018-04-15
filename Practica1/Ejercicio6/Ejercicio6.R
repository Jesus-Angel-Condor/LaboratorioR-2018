# Nombre: Jesus Angel Condor Torres
# Respuesta 6.a: El codigo muestra la creacion de un archivo en formato tabla 
# llamada q5.txt y luego leer el archivo asigandolo  al objeto q5.dframe, para
# esto usamos el dataframe quakes

df <- quakes # Asignamos el dataframe quakes en df
df # Observamos por consola el dataframe df
m <- df$mag # Asignamos a m la columna mag
a <- m >= 5 # Asignamos "a" un valor logico
df1 <- df[a, ] # Asignamos a df1 los valores de la columna mag >= 5
write.table(df1,"q5.txt") # Creamos nuestro archivo q5.txt
q5.dframe <- read.table("q5.txt") # Creamos nuestro archivo q5.dframe a partir de 
q5.dframe # del archivo q5.txt y luego lo leemos con el archivo q5.dframe

# Respuesta 6.b: El codigo muestra una grafica y ciertas operaciones sobre esa 
# grafica y sus etiquetas en el grafico en base al dataframe Duncan que se 
# encuentra en el paquete car

install.packages("car")
library(car)
m <- Duncan
n <- Duncan$prestige
a <- n > 80
cota <- m[a,]
cota
cota1 <- m[!a,]
cota1
plot.new()
plot.window(range(Duncan$education), range(Duncan$income))
box()
axis(1)
axis(2)
help("points")
points(cota$education,cota$income, col = "black", pch =19)
points(cota1$education, cota1$income)
mtext("Educacion", side = 1, line = 3)
mtext("Ingresos", side = 2, line = 3)
mtext("Grafica de los Ingresos\ncomo una funcion de la Educacion", 
      side = 3,line = 1, font = 2, col = "blue")

# Para el segundo item agregaremos una leyenda y lo guardaremos en un archivo de
# extension .png de 500 x 500 pixeles
legend("topleft", 
        legend = c("prestigio > 80", "prestigio <= 80"),
        pch = c(19,1), pt.bg = c("black","white"))

# Para guardar el grafico en .png
png("Ejercicio6.png", width = 500, height = 500, units = "px")

library(car)
m <- Duncan
n <- Duncan$prestige
a <- n > 80
cota <- m[a,]
cota1 <- m[!a,]
plot.new()
plot.window(range(Duncan$education), range(Duncan$income))
box()
axis(1)
axis(2)
help("points")
points(cota$education,cota$income, col = "black", pch =19)
points(cota1$education, cota1$income)
mtext("Educacion", side = 1, line = 3)
mtext("Ingresos", side = 2, line = 3)
mtext("Grafica de los Ingresos\ncomo una funcion de la Educacion", 
      side = 3,line = 1, font = 2, col = "blue")

# Para el segundo item agregaremos una leyenda y lo guardaremos en un archivo de
# extension .png de 500 x 500 pixeles
legend("topleft", 
       legend = c("prestigio > 80", "prestigio <= 80"),
       pch = c(19,1), pt.bg = c("black","white"))

dev.off()

# Respuesta 6.c: El codigo muestra la creacion de un archivo Ejercicio_df.txt en 
# base a una lista llamada exer, la cual contiene los dataframe quakes, q5.dframe 
# y Duncan, luego leeremos el archivo Ejercicio_df.txt a traves de un objeto 
# llamado lista.de.dataframe

quakes # Los dataframe quakes y q5.dframe se utilizaran en junto con el dataframe
q5.dframe # Duncan y uniremos estos tres ultimos en una lista llamada exer
library(car) # Iniciamos el paquete car para llamar el dataframe Duncan
exer <- list(df = quakes,df1 = q5.dframe,df2 = Duncan)# Iniciamos la lista exer
exer # Mostramos por consola la lista exer 
m <- merge(exer$df,exer$df1) # Concatenamos los dataframe qakes y q5.dframe y lo 
n <- merge(m,exer$df2) # asignamos a m, luego concatenamos m y Duncan y lo  
write.table(n,"Ejercicio_df.txt") # asignamos a n, finalmente guardamos esto en
lista.de.dataframes <- read.table("Ejercicio_df.txt")# un archivo llamado
lista.de.dataframes # Ejercicio_df.txt, finalmente leemos el archivo 
                    # Ejercicio_df.txt por medio de la funcion read.table y lo
                    # asignamos a lista.data.frames para despues mostrarlo por
                    # consola.