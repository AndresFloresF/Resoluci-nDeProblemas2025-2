Funcion esEntero <- ValidarEntero(entrada)
    Definir i Como Entero
    esEntero <- Verdadero
    
    Si Longitud(entrada) = 0 Entonces
        Escribir "Error: No se ingres� ning�n valor. Intente nuevamente."
        esEntero <- Falso
    Sino
        Para i <- 0 Hasta Longitud(entrada) - 1 Hacer
            Si No (SubCadena(entrada, i, i) >= "0" Y SubCadena(entrada, i, i) <= "9") Entonces
                Escribir "Error: Solo se permiten n�meros enteros positivos. Intente nuevamente."
                esEntero <- Falso
            FinSi
        FinPara
    FinSi
FinFuncion


Proceso MenuPrincipal
    Definir opcion Como Caracter
    Definir salir Como Logico
    salir <- Falso
    Repetir
        Escribir "Bienvenido, este programa te puede ayudar a ordenar 3 n�meros de menor a mayor y obtener promedio, mediana y moda de n n�meros"
        Escribir "Men� Principal"
		Escribir "Seleccione una opci�n (a/b/c): "
        Escribir "a) Ordenar tres n�meros de menor a mayor"
        Escribir "b) Calcular promedio, moda y mediana"
        Escribir "c) Salir"
        Leer opcion
        
        Segun opcion Hacer
            Caso "a":
                OrdenarNumeros(1)
            Caso "b":
                CalcularEstadisticas(2)
            Caso "c":
                salir <- Verdadero
            De Otro Modo:
                Escribir "Error: Opci�n inv�lida. Intente nuevamente."
        FinSegun
        
        
        Si salir = Falso Entonces
            Repetir
                Escribir "�Desea volver al men� principal? (S/N): "
                Leer opcion
            Hasta Que opcion = "S" O opcion = "N" O opcion = "s" O opcion = "n"
			
            Si opcion = "N" O opcion = "n" Entonces
                salir <- Verdadero
            FinSi
        FinSi
    Hasta Que salir
    
    Escribir "Gracias por usar el programa. �Hasta luego!"
FinProceso


SubProceso OrdenarNumeros(1)
    Definir a, b, c, aux Como Entero
    Definir entrada Como Cadena
    
    Escribir "Ingrese el primer n�mero (solo enteros positivos):"
    Repetir
        Leer entrada
    Hasta Que ValidarEntero(entrada)
    a <- ConvertirANumero(entrada)
    
    Escribir "Ingrese el segundo n�mero (solo enteros positivos):"
    Repetir
        Leer entrada
    Hasta Que ValidarEntero(entrada)
    b <- ConvertirANumero(entrada)
    
    Escribir "Ingrese el tercer n�mero (solo enteros positivos):"
    Repetir
        Leer entrada
    Hasta Que ValidarEntero(entrada)
    c <- ConvertirANumero(entrada)
    
    Escribir "Los n�meros antes de ordenar son: ", a, ",", b, ",", c
    Repetir
        Si a > b Entonces
            aux <- a
            a <- b
            b <- aux
        FinSi
        Si b > c Entonces
            aux <- b
            b <- c
            c <- aux
        FinSi
    Hasta Que a < b Y b < c
    
    Escribir "Los n�meros ordenados son: ", a, ",", b, ",", c
FinSubProceso



SubProceso CalcularEstadisticas(2)
    Definir cantidad, i, j, aux Como Entero
    Definir suma, mediana Como Real
    Definir numeros Como Real
    Definir maxFrecuencia Como Entero
    Definir entrada Como Cadena
    Repetir
        Escribir "Ingrese la cantidad de n�meros (solo enteros positivos y distinto de 0):"
        Leer entrada
        Si ValidarEntero(entrada) Entonces
            cantidad <- ConvertirANumero(entrada)
            Si cantidad = 0 Entonces
                Escribir "Error: La cantidad de n�meros no puede ser 0. Intente nuevamente."
            FinSi
        FinSi
    Hasta Que ValidarEntero(entrada) Y cantidad > 0
    
    Dimension numeros[cantidad]
    suma <- 0
    
    Para i <- 0 Hasta cantidad - 1 Hacer
        Repetir
            Escribir "N�mero ", i + 1, " (solo n�meros enteros positivos):"
            Leer entrada
        Hasta Que ValidarEntero(entrada)
        
        numeros[i] <- ConvertirANumero(entrada)
        suma <- suma + numeros[i]
    FinPara
    
    suma <- suma / cantidad
    Escribir "El promedio es: ", suma
    
    
    Para i <- 0 Hasta cantidad - 2 Hacer
        Para j <- 0 Hasta cantidad - 2 - i Hacer
            Si numeros[j] > numeros[j + 1] Entonces
                aux <- numeros[j]
                numeros[j] <- numeros[j + 1]
                numeros[j + 1] <- aux
            FinSi
        FinPara
    FinPara
    
    
    Si cantidad MOD 2 = 1 Entonces
        mediana <- numeros[Trunc(cantidad / 2)]
    Sino
        mediana <- (numeros[Trunc(cantidad / 2)] + numeros[Trunc(cantidad / 2) - 1]) / 2
    FinSi
    Escribir "La mediana es: ", mediana
    
    
    maxFrecuencia <- 0
    Dimension frecuencia[cantidad]
    
    Para i <- 0 Hasta cantidad - 1 Hacer
        frecuencia[i] <- 0
    FinPara
    
    Para i <- 0 Hasta cantidad - 1 Hacer
        Para j <- 0 Hasta cantidad - 1 Hacer
            Si numeros[i] = numeros[j] Entonces
                frecuencia[i] <- frecuencia[i] + 1
            FinSi
        FinPara
        
        Si frecuencia[i] > maxFrecuencia Entonces
            maxFrecuencia <- frecuencia[i]
        FinSi
    FinPara
    
    Si maxFrecuencia = 1 Entonces
        Escribir "No hay moda"
    Sino
        Escribir "Las modas son:"
        Para i <- 0 Hasta cantidad - 1 Hacer
            Si frecuencia[i] = maxFrecuencia Entonces
                Escribir numeros[i]
            FinSi
        FinPara
        Escribir "Con una frecuencia de: ", maxFrecuencia
    FinSi
    
    Escribir "Ha finalizado, gracias por usar el programa."
FinSubProceso

    
    