# Nombre: Jesus Angel Condor Torres
# Respuesta 1.a: El codigo muestra un vector en el cual cotiene numeros desde
# 5 al -11 con una razon de 0.3

a <- seq(from=5, to=-11, by= -0.3) # Asignamos "a" como un vector numerico con
a # la funcion seq (secuencia de numeros de 5 al -11 a razon de -0.3) y luego 
  # mostramos por consola el resultado. Una observacion de esto en 
  # el resultado es que el ultimo elemento de es -10.9 y no -11 debido a que la
  # la razon de decrecimiento es -0.3 

# Respuesta 1.b: El codigo muestra la secuencia que se da en a con orden invertido

rev(a) # Invierte la secuencia de "a", ahora iria de -11 a 5 con razon de 0.3
# Observamos por consola el resultado que va desde -10.9 a 5, ya se explico porque
# va desde -10.9 lineas arriba

# Respuesta 1.c: El codigo muestra de repetir el vector "-1 3 -5 7 -9" 2 veces,

b <- rep(c(-1,3,-5,7,-9), times=2) # Asigna a "b" como un vector donde se almacena
b # 2 veces el vector "-1 3 -5 7 -9 y luego lo mostramos por consola
b <- sort(b, decreasing = TRUE) # Asigna a "b" como la repeticion de cada elemento
b # del vector 2 veces poniendolo en orden decreciente

# Ahora repetiremos cada elemento 10 veces y lo guardaremos en un vector

b <- rep(c(-1,3,-5,7,-9), each=10) # Asignamos a "b" la repeticion de cada 
b # elemento 10 veces del vector -1 3 -5 7 -9 y luego mostramos por consola 
b <- sort(b, decreasing = TRUE) # Al vector b lo ordenamos en orden decreciente
b # Mostramos por consola el resultado

# Ahora repetiremos 2 veces el vector repitiendo 10 veces cada elemento

c <- rep(c(-1,3,-5,7,-9), each=10, times=2) # El vector repetido 10 veces cada 
c # elemento lo repetimos 2 veces y lo mostramos por consola el resultado
c <- sort(c, decreasing = TRUE) # El vector c lo ordenamos decrecientemente
c # Mostramos por consola el resultado

# Respuesta 1.d: El codigo muestra un vector en el que esta almacenado lo 
# siguiente: 
# * secuencia del 6 al 12 (numeros enteros)

d <- 6L:12L

# * repeticion triple del numero 5.3

e <- rep(5.3, 3) # Asignamos esta operacion a "e"

# Se le agregara el numero -3
# * Obtener 9 elementos desde el 102 hasta la longitud del vector c

n <- length(c) # Indica la longitud de c asignadola a n
f <- seq(102, n, length.out = 9) # Asignamos a f una secuencia de 9 numeros desde
f # el 102 hasta 100

# Por ultimo almacenamos todos los puntos anteriores en un ultimo vector

vfinal <- c(d,e,-3,f) # Concatenamos los anteriores resultados (d,e,-3,f) y lo 
vfinal # asignamos a vfinal para finalmente mostrar por consola el resultado

# *Ultimo punto nos pide la longitud  de vfinal
length(vfinal) # Obtenemos la longitud del vector vfinal
