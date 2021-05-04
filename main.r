"__Prtocolo:__

+ Daniel Felipe Villa Rengifo.

+ Lenguaje: R

+ Tema: Manejo de matrices en R

+ Fuentes:
  
  1. [TechVidvan](https://techvidvan.com/tutorials/r-matrix/)
  2. [TechVidvan](https://techvidvan.com/tutorials/r-matrix-functions/)
  3. [RDocumentation](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/matrix)"
  
## ------------------------------------------------------------------------------------------
# Definamos una matriz:
message("\n# Definamos una matriz:")

matriz <- matrix(1:9, nrow = 3, ncol = 3)
print(matriz)

## Veamos si es matriz:
message("\n## Veamos si es matriz:")
class(matriz)

## Veamos sus atributos:
message("\n## Veamos si es matriz:")
attributes(matriz)


## ------------------------------------------------------------------------------------------
# Creando Matrices con matrix():
message("\n# Creando Matrices con matrix():")

m <- matrix(1:4, nrow = 2, ncol = 2)
cat("m <- matrix(1:4, nrow = 3, ncol = 3)", "\n \nOUTPUT:")
print(m)

# El mismo resultado se obtiene proporcionando sólo una dimensión:
message("\n# El mismo resultado se obtiene proporcionando sólo una dimensión:")
cat("matrix(1:4, nrow = 3)", "\n \nOUTPUT:\n")
print(matrix(1:4, nrow = 2))





## ------------------------------------------------------------------------------------------
# Definimos una matriz con el argumento byrow:
message("\n# Definimos una matriz con el argumento byrow:")
## rellenar la matriz por filas:
message("\n## rellenar la matriz por filas:")
cat("\nmatrix(1:9, nrow = 3, byrow = TRUE)", "\n \nOUTPUT:\n")
print(matrix(1:9, nrow = 3, byrow = TRUE))


## ------------------------------------------------------------------------------------------
# Definimos una matriz donde tambien le definiremos los nombres:
message("\n# Definimos una matriz donde tambien le definiremos los nombres:")

# Nota: Se ve mejor organizado y su compresión tambien cuando se dejan espacios.

cat("\nUTILES ESCOLARES:\n")

x <- matrix(c("Cuardernos", "Lapiceros", "Colores",
              "Colbón", "Plumones", "Resaltadadores",
              "Reglas", "Engrapadora", "Notas Adeshivas"),
            nrow = 3,
            dimnames = list(c("1°", "2°", "3°"),
                            c("Necesarios", "Inecesarios", "Otros")))
print(x)





## ------------------------------------------------------------------------------------------
# Revisar los nombres de las columnas y filas:
message("\n# Revisar los nombres de las columnas y filas:")

# Nombres por columnas:
message("\n# Nombres por columnas:")
colnames(x)

# Nombres por filas:
message("\n# Nombres por filas:")
rownames(x)





## ------------------------------------------------------------------------------------------
# Matriz por columna:
message("\n# Matriz por columna:")

matriz_column <- cbind(1:3, 4:6)
cat("matriz_column <- cbind(1:3, 4:6)", "\n \nOUTPUT: \n")
print(matriz_column)

# Matriz por filas:
message("\n# Matriz por filas:")

matriz_row <- rbind(1:3, 4:6)
cat("matriz_row <- rbind(1:3, 4:6)", "\n \nOUTPUT: \n")
print(matriz_row)



## ------------------------------------------------------------------------------------------
# Definimus un vector cualesquiera:
message("\n# Definimus un vector cualesquiera:")


v <- c(1, 2, 3, 4, ".", ".", ".", "...", "n")
cat("v <- ", v, sep = "  ")

# Verifiquemos su clase como vector:
message("\n# Verifiquemos su clase como vector:")
cat("class(v) = ", class(v))


## Ahora lo definiremos como una matriz:
message("\n## Ahora lo definiremos como una matriz:")
dim(v) <- c(3,3)
cat("\nDefinimos nuestra matriz apartir de nuestro vector c(filas, columnas):" ,"\ndim(v) <- c(3,3)\n")

# Verifiquemos su clase como matriz:
message("\n# Verifiquemos su clase como matriz:")
cat("class(v) = ", class(v))


## ------------------------------------------------------------------------------------------
# Definimos una matriz:
message("\n# Definimos una matriz:")

x <- matrix(1:16, nrow = 4)
print(x)

# seleccione las filas 1 y 2 y las columnas 2 y 3:
message("\n# seleccione las filas 1 y 2 y las columnas 2 y 3:")

cat("\nx[c(1,2),c(2,3)] = \n")
print(x[c(1,2),c(2,3)])

# Dejando el campo de la columna en blanco se seleccionarán columnas completas:
message("\n# Dejando el campo de la columna en blanco se seleccionarán columnas completas:")

cat("\nx[c(3,2),] = \n")
print(x[c(3,2),])

# Si se deja el campo de la fila y la columna en blanco, se seleccionará toda la matriz:
message("\n# Si se deja el campo de la fila y la columna en blanco, se seleccionará toda la matriz:")

cat("\nx[,] = \n ")
print(x[,])


# seleccionar todas las filas excepto la primera:
message("\n# seleccionar todas las filas excepto la primera:")

cat("\nx[-1,] = \n")
print(x[-1,])


## ------------------------------------------------------------------------------------------
# Retornar de la matriz solamente la primera fila:
message("\n# Retornar de la matriz solamente la primera fila:")
cat("\nx[1,]\n")
print(x[1,])
cat("La matriz retorna un vector (clase del vector)=>", class(x[1,]))


## ------------------------------------------------------------------------------------------
 # ahora el resultado es una matriz 1X3 en lugar de un vector:
message("\n# ahora el resultado es una matriz 1X3 en lugar de un vector:")
cat("x[1,,drop=FALSE]", "\n  \nOUTPUT\n")
print(x[1,,drop=FALSE])

# Verifiquemos su clase:
message("\n# Verifiquemos su clase:")
class(x[1,,drop=FALSE])





## ------------------------------------------------------------------------------------------
# Definimos la matriz:
message("\n# Definimos la matriz:")
x <- matrix(-8:7, nrow = 4)
print(x)

# indexar con vectores:
message("\n# indexar con vectores:")

cat("\nx[1:4]\n")
print(x[1:4])

# indexar con vectores:
message("\n# indexar con vectores:")

cat("\nx[c(4,7,10,13)]", "\nLa diagonal de x\n \n")
print(x[c(4,7,10,13)])






## ------------------------------------------------------------------------------------------
# Definimos la matriz:
message("\n# Definimos la matriz:")


print(x)
# Indexar con valores logicos:
message("\n# Indexar con valores logicos:")

cat("\nx[c(TRUE, TRUE, FALSE), c(TRUE, FALSE, TRUE)]\n \n")
print(x[c(TRUE, TRUE, FALSE), c(TRUE, FALSE, TRUE)])


# el vector lógico de 2 elementos se recicla a vector de 3 elementos
message("\n# el vector lógico de 2 elementos se recicla a vector de 3 elementos")

cat("\nx[c(TRUE,FALSE),c(2,3)]\n \n")
print(x[c(TRUE,FALSE),c(2,3)])



## ------------------------------------------------------------------------------------------
# Produciendo reciclaje:
message("\n# Produciendo reciclaje:")
cat("\n la matriz x se trata como un vector formado por el apilamiento de columnas de la matriz una tras otra, es decir, (-8,-6,-4,-2,0,2,4,6).\n\nEl vector lógico de indexación también se recicla y, por lo tanto, se seleccionan elementos alternativos.\n")

cat("\nx[c(TRUE, FALSE)]\n \n")
print(x[c(TRUE, FALSE)])


# Otras formas de utlizar logical:
cat("\n# Otras formas de utlizar logical:\n")
## seleccionar los elementos menores que 5:
cat("\n## seleccionar los elementos menores que 5:\n")

cat("\nx[x<5]\n")

print(x[x<5])


# Numeros pares dentro de la matriz:
cat("# Numeros pares dentro de la matriz:")

cat("\nx[x%%2 == 0]\n")
print(x[x%%2 == 0])


## ------------------------------------------------------------------------------------------
# Reciclando  la matriz utiles:
message("\n# Reciclando  la matriz utiles:")

x <- matrix(c("Cuardernos", "Lapiceros", "Colores",
              "Colbón", "Plumones", "Resaltadadores",
              "Reglas", "Engrapadora", "Notas Adeshivas"),
            nrow = 3,
            dimnames = list(c("1°", "2°", "3°"),
                            c("Necesarios", "Inecesarios", "Otros")))

print(x)
# Imprimamos según un caracter:
message("\n# Imprimamos según un caracter:")
cat("\nx[,\"Otros\"]\n")

print(x[,"Otros"])

cat("\nPodemos intentar tambien con:\n")
cat("\nx[TRUE, c(\"Necesarios\", \"Inecesarios\")]\n")
print(x[TRUE, c("Necesarios", "Inecesarios")])

cat("\nx[c(\"1°\",\"3°\"),2:3]\n")
print(x[c("1°","3°"),2:3])



## ------------------------------------------------------------------------------------------
# Definimos la matriz:
message("\n# Definimos la matriz:")
x <- matrix(-8:7, nrow = 4)
print(x)

# # modificar un solo elemento:
cat("\n# modificar un solo elemento\n")

cat("\nx[2,2] <- 10\n")

print(x)

# modificar elementos mayores que 4:
cat("\n# modificar elementos mayores que 4:\n")
cat("\nx[x>4] <- 0\n")



## ------------------------------------------------------------------------------------------
# Matriz original:
print("# Matriz original:")
print(x)
# traspuesta de la matriz:
print("# traspuesta de la matriz:")
print(t(x))


## ------------------------------------------------------------------------------------------
# añadir:
cat("añadir columna")
cat("\ncbind(x, c(1, 2, 3))\n")
print(cbind(x, c(1, 2)))


cat("añadir fila")
cat("\nrbind(x,c(1,2,3))\n")
print(rbind(x,c(1,4)))

# Remover la ultima columna:
cat("\n# Remover la ultima columna:\n")
cat("\n x <- x[1:2,] \n")

print(x <- x[1:2,])



## ------------------------------------------------------------------------------------------
# Definimos la matriz:
message("\n# Definimos la matriz:")
x <- matrix(1:6, nrow = 2, ncol = 3)
print(x)

## cambiar a matriz 3X2:
cat("\n ### cambiar a matriz 3X2: \n")
cat("dim(x) <- c(3,2)\n")
dim(x) <- c(3,2)
print(x)



