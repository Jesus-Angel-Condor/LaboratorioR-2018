# Nombre: Jesus Angel Condor Torres
# Respuesta 8.a: El codigo muestra la creacion de una data frame con la 
# composicion de una cadena de caracteres y dos factores

dframe <- data.frame(Persona = c("Stan","Francine","Steve","Roger","Hayley",
                     "Klaus"),Sexo = factor(c("M","F","M","M","F","M"), 
                     levels = c("F","M")),Puntuacion = factor(c("Alto","Medio",
                     "Bajo","Alto","Medio","Medio"),levels = c("Alto","Medio",
                                                               "Bajo")))
# Lineas arriba creamos nuestra dataframe con una cadena (Presona) y dos factores
# Sexo y Puntuacion con sus respectivos niveles
dframe # Mostramos por consola el dataframe "dframe"

# Respuesta  8.b: El codigo muestra como le agregamos una columna a dframe llamada
# Edad
dframe$Edad <- c(41,41,15,1600,21,60) # Agregamos una nueva columna a dframe 
                                      # llamada edad
dframe # Mostramos por consola el resultado

# Respuesta 8.c: El codigo muestra la reordenacion de las columnas de dframe 
# tomando como ejemplo el dataframe misdatos

misdatos <- data.frame(person = c("Peter","Lois","Meg","Chris","Stewie"),
                       edad <- c(42,40,17,14,1), sexo <- factor(c("M","F","F",
                                                                      "M","M")))
# Las lineas de arriba es la asignacion del dataframe misdatos con las columnas
# Persona, edad y sexo donde la asignacion de edad y sexo esta con el simbolo "<-"
misdatos # Mostramos por consola el dataframe misdatos
misdatos <- data.frame(person = c("Peter","Lois","Meg","Chris","Stewie"),
                       edad = c(42,40,17,14,1), sexo = factor(c("M","F","F",
                                                                  "M","M")))
# Lineas arriba reasignamos nuevamente el dataframe misdatos con la diferencia en
# la asignacion de edad y sexo ahora sera con el simbolo "=" y ya no con "<-"
misdatos # Mostramos por consola el dataframe misdatos
# Ahora reordenaremos las columnas de dframe en base a misdatos por el cual ahora
# las columnas de dframe sera en este orden: Persona Edad Sexo Puntuacion
m <- dframe[,1] # Asignamos a m la columna 1
n <- dframe[,2] # Asignamos a n la columna 2
o <- dframe[,3] # Asignamos a o la columna 3
p <- dframe[,4] # Asignamos a p la columna 4
dframe <- data.frame(Persona = m, Edad = p, Sexo = o, Puntuacion = p) # Volvemos 
dframe # asignar dframe en base a m, n, o, p, haciendo las permutaciones en la 
       # columna en base a la estructura de misdatos y finalmente mostramos por
       # consola el resultado

# Respuesta 8.d: El codigo muestra una agregacion de columna a misdatos y luego 
# la eliminamos esa columna y lo asignamos en misdatos2

misdatos$edad.mon <- misdatos$edad*12 # Agrega la columna edad.mon al dataframe 
                                      # misdatos 
misdatos # Mostramos por consola el resultado obtenido linea arriba
misdatos2 <- subset(misdatos,select = - edad.mon) # Asignamos a misdatos2 el data
# frame misdatos con la eliminacion de la columna edad.mon
misdatos2 # Mostramos por consola el dataframe misdatos2 

# Respuesta 8.e: El codigo muestra la combinacion de dframe con misdatos2

misdatosframe <- merge(dframe,misdatos2) # combinas los 2 dataframes
misdatosframe # Muestra por consola el dataframe misdatosframe
