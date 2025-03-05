SubProceso OrdenarNumeros
	definir oq Como Caracter
	
	Definir a, b, c Como Entero
	Definir p1, p2, p3 Como Entero
	
	a <- 0
	b <- 0
	c <- 0
	Mientras oq <> "1" Hacer
	escribir ""
	escribir ""
	escribir ""
	Escribir "Este programa ordena 3 números enteros positivos de menor a mayor"
	
	Repetir
		Escribir "Ingrese el primer número: "
		Leer a
		Si a <= 0 Entonces
			Escribir "Error, por favor ingrese otro número"
		FinSi
	Hasta Que a > 0
	
	Repetir
		Escribir "Ingrese el segundo número: "
		Leer b
		Si b <= 0 Entonces
			Escribir "Error, por favor ingrese otro número"
		FinSi
	Hasta Que b > 0
	
	Repetir
		Escribir "Ingrese el tercer número: "
		Leer c
		Si c <= 0 Entonces
			Escribir "Error, por favor ingrese otro número"
		FinSi
	Hasta Que c > 0
	
	Si a > b Y a > c Entonces
		p1 <- a
		Si c > b Entonces
			p2 <- c
			p3 <- b
		Sino
			p2 <- b
			p3 <- c
		FinSi
	Sino
		Si b > a Y b > c Entonces
			p1 <- b
			Si c > a Entonces
				p2 <- c
				p3 <- a
			Sino
				p2 <- a
				p3 <- c
			FinSi
		Sino
			p1 <- c
			Si b > a Entonces
				p2 <- b
				p3 <- a
			Sino
				p2 <- a
				p3 <- b
			FinSi
		FinSi
	FinSi
	
	Escribir "El orden de los números es: ", p3, " , ", p2, " , ", p1, " Fin del programa de ordenar 3 números."
	Escribir "Si desea salir del programa digite 1, si desea ordenar números de nuevo digite 0"
	Leer oq 	
	FinMientras

FinSubProceso



SubProceso CalcularDistancia
	definir eq Como Caracter
	Definir x1, x2, y1, y2 Como real
	Definir sumx, sumy, elevx, elevy, sumt, restotal Como Real
	
	x1 <- 0
	y1 <- 0
	x2 <- 0
	y2 <- 0
	Mientras eq <> "1" Hacer
		
	
	escribir ""
	escribir ""
	escribir ""
	Escribir "Este programa calcula la distancia entre dos puntos cuando el usuario le da las coordenadas positivas"
	
	Repetir
		Escribir "Ingrese el valor de x1: "
		Leer x1
		Si x1 <= 0 Entonces
			Escribir "Error, el número debe de ser mayor que cero"
		FinSi
	Hasta Que x1 > 0
	
	Repetir
		Escribir "Ingrese el valor de y1: "
		Leer y1
		Si y1 <= 0 Entonces
			Escribir "Error, el número debe de ser mayor que cero"
		FinSi
	Hasta Que y1 > 0
	
	Repetir
		Escribir "Ingrese el valor de x2: "
		Leer x2
		Si x2 <= 0 Entonces
			Escribir "Error, el número debe de ser mayor que cero"
		FinSi
	Hasta Que x2 > 0
	
	Repetir
		Escribir "Ingrese el valor de y2: "
		Leer y2
		Si y2 <= 0 Entonces
			Escribir "Error, el número debe de ser mayor que cero"
		FinSi
	Hasta Que y2 > 0
	
	sumx <- x2 - x1
	sumy <- y2 - y1
	elevx <- sumx^2
	elevy <- sumy^2
	sumt <- elevy + elevx
	restotal <- RAIZ(sumt)
	
	Escribir "La distancia entre los puntos: (", x1, ",", y1, ") y (", x2, ",", y2, ") es: ", restotal
	Escribir " Fin del programa de distancia entre dos puntos."
	Escribir "Si desea salir del programa digite 1, si desea ordenar números de nuevo digite 0"
	Leer eq
	FinMientras
FinsubProceso


SubProceso calculadora
	Definir n1,n2,rr Como Real
	Definir num,i,j Como Entero
	Definir c Como Cadena
	definir vector1,vector2,vector3,vector4 como real
	dimension vector1[100],vector2[100],vector3[100],vector4[100]
	escribir ""
	escribir ""
	escribir ""
	Escribir "Bienvenido a la calculadora..."
	opsi<- 0
	n1<-0
	n2<-0
	r<-0
	Mientras c <> "SALIR" Hacer
		
		Escribir "Escriba lo que desea hacer en MAYUSCULAS."
		Escribir "SALIR" 
		Escribir ""
		Escribir "SUMA" 
		Escribir ""
		Escribir "RESTA" 
		Escribir ""
		Escribir "MULTIPLICACION" 
		Escribir ""
		Escribir "DIVISION"
		Escribir ""
		Escribir "EXPONENCIAL"
		Escribir ""
		
		Leer c
		Segun c Hacer
			caso "SALIR":
			caso "SUMA":
				Escribir "Ingrese cuantos números quiere sumar:"
				leer num
				Para i <- 1 Hasta num Con Paso 1 Hacer
					Escribir i, ":"
					leer vector1[i]
				Fin Para
				
				Para j<-1 Hasta num Con Paso 1 Hacer
					r <- r + vector1[j]
				Fin Para
				Escribir "El resultado es: "
				Escribir r
				num<-0
				i<-1
				j<-1
				r<-0
				
			caso "RESTA":
				Escribir "Ingrese cuantos números quiere restar:"
				leer num
				Para i<-1 Hasta num Con Paso 1 Hacer
					Escribir i
					Escribir ":"
					leer vector2[i]
				Fin Para
				r <- vector2[1]
				rr <- r
				Para j<-2 Hasta num Con Paso 1 Hacer
					rr <- rr - vector2[j]
				Fin Para
				Escribir "El resultado es: "
				Escribir rr
				num<-0
				i<-1
				j<-1
				r<-0
				rr<-0
			caso "MULTIPLICACION":
				r<-1
				Escribir "Ingrese cuantos números quiere multiplicar:"
				leer num
				Para i<-1 Hasta num Con Paso 1 Hacer
					Escribir i
					Escribir ":"
					leer vector3[i]
				Fin Para
				Para j<-1 Hasta num Con Paso 1 Hacer
					r <- r * vector3[j]
				Fin Para
				Escribir "El resultado es: "
				Escribir r
				num<-0
				i<-1
				j<-1
				r<-0
				
			caso "DIVISION":
				Escribir "Ingrese cuantos números quiere dividir:"
				leer num
				Para i<-1 Hasta num Con Paso 1 Hacer
					Escribir i
					Escribir ":"
					leer vector4[i]
				Fin Para
				r <- vector4[1]
				rr <- r
				Para j<-2 Hasta num Con Paso 1 Hacer
					rr <- rr / vector4[j]
				Fin Para
				Escribir "El resultado es: "
				Escribir rr
				num<-0
				i<-1
				j<-1
				r<-0
				rr<-0
			caso "EXPONENCIAL":
				Escribir "Solo se puede elevar una vez, un numero n a la m."
				Escribir "Ingrese el numero que quiere elevar: "
				leer n1
				Escribir "Ingrese el numero de la potencia: "
				leer n2
				r <- n1^n2
				Escribir "El resultado es: "
				Escribir r
				n1<- 0
				n2<-0
				r<-0
			De Otro Modo: 
				Escribir "Error, Reiniciando el programa"
				
		Fin Segun
		
	Fin Mientras
	Escribir "Gracias por usar la calculadora","Fin del programa de la calculadora"
		
FinSubProceso


Proceso Union_de_programas
	definir opciones Como Caracter
	escribir "Bienvenido a la biblioteca de programas del grupo 2002"
	
	Mientras opciones <> "salir" Hacer
	escribir ""
	escribir ""
	escribir ""
	escribir "Para escoger un programa escriba el nombre como aparece en la lista y precione enter."
	Escribir "Aviso: Lo que aparece abajo del nombre es una breve descripción de lo que hace el programa."
	escribir "A la hora de escoger lo que quiere que haga el programa, escriba solo lo que esta dentro del paréntesis a un lado de dicha opción."
	Escribir ""
	Escribir "Lista de Programas:"
	Escribir "1- Calculadora (calc)"
	escribir "Este programa es una calculadora que puede hacer, sumas, restas, división, multiplicación y potenciación."
	Escribir ""
	Escribir "2- Distancia entre puntos (dist)"
	escribir "Este programa calcula la distancia entre dos puntos."
	Escribir ""
	Escribir "3- Ordenar números (orden)"
	escribir "Este programa ordena 3 números en orden ascendente."
	Escribir ""
	Escribir "4-salir"
	leer opciones
	
	Segun opciones Hacer
		caso "calc":
			calculadora()
		caso "dist":
			CalcularDistancia()
		caso "orden":
			OrdenarNumeros()
		caso "salir":
			Escribir "Gracias por usar el programa, Fin del programa"
		De Otro Modo:
			escribir "Error, Intente de nuevo"
	Fin Segun
	
	Fin Mientras
	
	
	
	
	
FinProceso





