Proceso Mediamoda
	Definir eleccion como caracter
	Definir s, can, moda, a2, max, col, prom, j, num, A, p, q Como Real
	Definir x1, x2, y1, y2 Como Real
	Definir Distancia Como Real
	Escribir "este programa te permitirá realizar diversas operaciones"
	Mientras (elección<>"C") Hacer
		escribir"A. Media y moda de cualquier cantidad de números ", "B. Distancia entre 2 puntos ","C.Salir "
		Escribir "Elige una opción:"
		Leer eleccion
		Segun eleccion Hacer
		"A":
	Escribir '¿Cuál es la cantidad de números que desea ingresar?'
	Leer col
	Dimensionar A(2,col)
	s <- 0
	can = 0
	max = 0
	Para j<-0 Hasta col-1 Con Paso 1 Hacer
		Escribir 'Ingrese elemento: ', j+1
		Leer A[0,j]
		s <- s+A[0,j]
	FinPara
	Para q<-0 Hasta col-1 Con Paso 1 Hacer
		Para p<-0 Hasta col-1 Con Paso 1 Hacer
			Si A(1,q)=A(1,p) Entonces
				can = can+1
			FinSi
		FinPara
		A(1,q)=can
		Si can>max Entonces
			moda = A(0,q)
			max = can
		FinSi
		can = 0
	FinPara
	prom = s/col
	Escribir 'El promedio es: ', prom
	Escribir 'la moda es:', moda
"B":
	
	Escribir "Este programa te ayuda a calcular la distancia entre 2 puntos dados por coordenadas en X y Y"
	Escribir "Ingrese la coordenada x1:"
	Leer x1
	Escribir "Ingrese la coordenada x2:"
	Leer x2
	Escribir "Ingrese la coordenada y1:"
	Leer y1
	Escribir "Ingrese la coordenada y2:"
	Leer y2
	Distancia <- Raiz ((x2 - x1)^2 + (y2 - y1)^2)
	Escribir "La distancia entre los dos puntos es: ", Distancia 
	Escribir "El programa ha terminado"
"C":	
	Escribir "el programa terminará..."
De Otro Modo:
	Escribir "El valor no es valido, ingrese otro valor"
Fin Segun

Fin Mientras
FinProceso
