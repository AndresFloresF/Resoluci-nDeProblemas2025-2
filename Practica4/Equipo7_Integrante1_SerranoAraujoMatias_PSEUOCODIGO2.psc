subproceso matriz(col)
	Dimensionar A(3,col)
	s <- 0
	can <- 0
	max <- 0
	Para j<-0 Hasta col-1 Con Paso 1 Hacer
		Escribir 'Ingrese elemento: ', j+1
		Leer A[1,j]
		s <- s+A[1,j]
	FinPara
	Para q<-0 Hasta col-1 Con Paso 1 Hacer
		Para p<-0 Hasta col-1 Con Paso 1 Hacer
			Si A[1,q]=A[1,p] Entonces
				can <- can+1
			FinSi
		FinPara
		A[2,q]<-can
		Si can>max Entonces
			moda <- A[1,q]
			max <- can
		FinSi
		can <- 0
	FinPara
	prom <- s/col
	Para i<-0 Hasta col-1 Con Paso 1 Hacer
		Si A[2,i] = max Entonces
			Existe <- Falso
			Para W<-0 Hasta conmod Hacer
				Si A[0,W] = A[1,i] Entonces
					Existe <- Verdadero
				FinSi
			FinPara
			Si Existe=Falso Entonces
				A[0,conmod]=A[1,i]
				conmod=conmod+1
			Fin Si
		FinSi
	FinPara
	Escribir 'El promedio es: ', prom
	
	Escribir "La(s) moda(s) es/son: "
	Para i<-0 Hasta conmod-1 Con Paso 1 Hacer
		Escribir A[0,i], " "
	FinPara

Fin subProceso
Proceso Mediamoda
	Definir eleccion,decision Como caracter
	Definir s, can, moda, a2, max, col, prom, j, num, A, p, q, i,W,conmod Como Real
	Definir x1, x2, y1, y2 Como Real
	Definir Distancia Como Real
	Definir elec,existe como Logico
	Escribir 'este programa te permitir� realizar diversas operaciones'
	Mientras (eleccion<>('C')) Hacer
		Escribir 'A. Media y moda ', 'B. Distancia entre dos puntos ', 'C.Salir'
		Escribir 'Elige una opci�n:'
		Leer eleccion
		Seg�n eleccion Hacer
	'A'o'Media y moda'o'a':
		Escribir 'Este programa te ayuda a calcular la media y la moda de cualquier cantidad de n�meros'
		Mientras (decision<>('No')) Hacer
		Escribir '�Cu�l es la cantidad de n�meros que desea ingresar?'
		Leer col
		matriz(col)
		elec=falso
		Mientras (elec=falso) Hacer
		Escribir '�Desea repetir la operaci�n?'
		Escribir 'S�/No'
		leer decision
		Segun decision Hacer
			'si' o 's�'o'Si'o'S�':
				elec=verdadero
			'no'o'No':
				Escribir 'Regresar� a la selecci�n de operaciones'
				elec=verdadero
				decision='No'
			De Otro Modo:
				Escribir 'El valor no es valido, ingrese otro valor'
		Fin Segun
		finmientras
	finmientras
	
'B'o'Distancia entre dos puntos'o'b':
	Escribir 'Este programa te ayuda a calcular la distancia entre 2 puntos dados por coordenadas en X y Y'
	Mientras (decision<>('No')) Hacer
		Escribir 'Ingrese la coordenada x1:'
		Leer x1
		Escribir 'Ingrese la coordenada x2:'
		Leer x2
		Escribir 'Ingrese la coordenada y1:'
		Leer y1
		Escribir 'Ingrese la coordenada y2:'
		Leer y2
		Distancia <- Raiz((x2-x1)^2+(y2-y1)^2)
		Escribir 'La distancia entre los dos puntos es: ', Distancia
		elec=falso
		Mientras (elec=falso) Hacer
			Escribir '�Desea repetir la operaci�n?'
			Escribir 'S�/No'
			leer decision
			Segun decision Hacer
				'si' o 's�'o'Si'o'S�':
					elec=verdadero
				'no'o'No':
					Escribir 'Regresar� a la selecci�n de operaciones'
					elec=verdadero
					decision='No'
				De Otro Modo:
					Escribir 'El valor no es valido, ingrese otro valor'
			Fin Segun
		finmientras
	finmientras
	'C'o'Salir'o'c':
		Escribir 'el programa terminar�...'
		eleccion="C"
	De Otro Modo:
		Escribir 'El valor no es valido, ingrese otro valor'
FinSeg�n
FinMientras
FinProceso