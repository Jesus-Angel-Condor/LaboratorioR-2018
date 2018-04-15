# Nombre: Jesus Angel Condor Torres
# Respuesta 7.a: El codigo muestra el resultado de elevar los elementos del vector
# f1 a la potencia 75.

f1 <- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968,8133)# Iniciamos el
f1 # vector f1 y despues lo mostramos por consola
potencia <- f1 ^ 75 # Elevamos el vector f1 a la potencia 75
potencia # Mostramos por consola el resultado de haber elevado a la potencia 75
n <- potencia < Inf & potencia > -Inf # Le damos un valor logico a n para poder 
n                             # para poder mostrar los elementos que no son Inf
potencia[n != FALSE]# Mostramos por consola los elementos de potencia que no son
                    # Inf
m <- potencia > -Inf# Asignamos a m un valor logico para poder mostrar por consola
m                   # los elementos de potencia con valores excluyendo -Inf
potencia[m == TRUE] # Mostramos por consola los valores excluyendo -Inf

# Respuesta 7.b: El codigo muestra las operaciones sobre una matriz llamada 
# varMatriz

varMatriz <- matrix(c(77875.40,-35466.25,-39803.81,27551.45,-73333.85,55976.34,
                      23764.30,36599.69,76694.82,-36478.88,-70585.69,47032.00),
                    nrow = 3, ncol = 4) # Iniciamos nuestra matriz en varMatrizl
varMatriz # Mostramos por consola varMatriz
result <- varMatriz ^ 65 # Elevamos la matriz varMatriz a la potencia 65 y lo 
result # asignamos a result, luego observamos por consola el resultado
result1 <- result / Inf # Dividimos la matriz result entre Inf y lo asignamos a
result1 #result1
# Observamos que los indices donde los valores de la matriz es NaN son:
# [1,1] [2,2] [3,2] [3,3] [2,4]

# Siguente item
result <- varMatriz ^ 67 # Elevamos varMatriz a la potencia 67
result # Mostramos por consola el resultado de la potencia
result <- result + Inf # Añadimos Inf a la matriz elevado a la potencia 67
result # Mostramos por consola el resultado final
w <- as.vector(result) # Para localizar los elementos lo convertimos en un vector
z <- w == Inf # Asignamos a z un valor logico para localizar los valores Inf
w[z == TRUE] # Observamos por consola el resultado

# Siguiente item 
result1 <- varMatriz ^ 67 # elevamos varMatriz a la potencia 67 
result1 # Mostramos por consola el la matriz elevada a la potencia 67
x <- as.vector(result1)  # Convertimos la matriz en un vector para la localizacion
n <- x > -Inf # de elementos y luego asignamos a n un valor logico
x[n == TRUE] # Observamos por consola los elementos que no son -Inf

# Siguiente item
result1 # Del item anterior varMatriz ^ 67 y despues convertir la matriz a un 
        # vector x
m <- x < Inf # Asignamos a m un valor logico para localizar los elementos que no
x[m == TRUE] # Inf y luego lo mostramos por consola

# Respuesta 7.c: Nos pide contestar las siguientes preguntas sobre que eslo que 
# hace cada funcion, veamos:

f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA) # Asignamos nuestro vector f2
f2 # Observamos por consola el vector f2
length(f2) # Obtenemos el valor de la longitud que es igual a 8 ya que no 
           # considera a NULL como valor de un elemento en el vector. La 
           # afirmacion es verdadera
which(x = is.na(x = f2)) # Obtenemos el valor de 4 y 8, esto debido a que la 
                         # funcion which nos indica los indices del vector y 
                         # mediante la condicion is.na(x=f2) indicamos cual 
                         # o cuales indices tienen elementos no disponibles o
                         # indeterminados. La afirmacion es falsa
is.null(x = f2) # Obtenemos como resultado FALSE ya que en vector f2 no hay 
                # valores nulos ya que al definirse el vector solo tomo elementos
                # tuviera valor o que no sean nulos. La afirmacion es falsa