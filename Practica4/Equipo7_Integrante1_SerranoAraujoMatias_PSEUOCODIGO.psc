Algoritmo sin_titulo
	Escribir 'Este algoritmo es para calcular la distancia entre 2 puntos o para ordenar en ascendente 3 numeros enteros' 
	Definir eleccion como real
	Definir repeticion como caracter 
	repeticion <- 'SI'
	Repetir  
		Escribir 'Selecciona escribiendo el número de la opción que deseen ejecutar'
		Escribir '1. Calcular la distancia entre 2 puntos'
		Escribir '2. Ordenar de forma ascendente 3 numeros entero'
		Escribir '3. Cerrar el programa'
		Leer eleccion
		
		Mientras eleccion <>1 y eleccion <>2 y eleccion <>3 Hacer 
			escribir 'Solo puedes escribir 1, 2 o 3. Intentalo de nuevo.'
			leer eleccion 
		FinMientras
		Segun eleccion Hacer
			1:
				Calcular_Distancia
			2:
				Ordenar_Tres_Números
			3:
				Escribir 'Fin del programa :)'
				repeticion <- 'NO'
		Fin Segun
		
		Si eleccion <> 3 Entonces
		  Escribir '¿Deseas volver a ejecutar el programa? (Si/No)'
		  Leer repeticion
		 repeticion <- Mayusculas(repeticion)
		
		  Mientras repeticion <> 'SI' Y repeticion <> 'NO' Hacer
			Escribir 'Por favor, introduce si o no.'
			Leer repeticion 
		  FinMientras
		Fin Si 
	Hasta Que repeticion = 'NO'
FinAlgoritmo

	SubProceso Calcular_Distancia 
		definir P1_X, P1_Y, P2_X, P2_Y como real
		escribir  'Ingresa el valor de P1_X'
		Leer P1_X
		Mientras P1_X-trunc(P1_X) <> 0 Hacer
			Escribir 'Favor de introducir el primer valor ENTERO'
			Leer P1_X
		Fin Mientras
		Escribir 'Ingresa el valor de P1_Y'
		leer P1_Y
		Mientras P1_Y-trunc(P1_Y) <> 0 Hacer
			Escribir 'Favor de introducir el primer valor ENTERO'
			Leer P1_Y
		Fin Mientras
		Escribir 'Ingresa el valor de P2_X'
		leer P2_X
		Mientras P2_X-trunc(P2_X) <> 0 Hacer
			Escribir 'Favor de introducir el primer valor ENTERO'
			Leer P2_X
		Fin Mientras
		Escribir 'Ingresa el valor de P2_Y'
		leer P2_Y
		Mientras P2_Y-trunc(P2_Y) <> 0 Hacer
			Escribir 'Favor de introducir el primer valor ENTERO'
			Leer P2_Y
		Fin Mientras
		distancia <- raiz((P1_X-P2_X)^2+(P1_Y-P2_Y)^2)
		Escribir 'La distancia entre los dos puntos es de: ', distancia
		
		
FinSubProceso 

SubProceso Ordenar_Tres_Números
	Escribir 'Prorama el cual organizará tres numeros enteros de menor a mayor'
	Definir n1, n2, n3, temp como real
	Escribir 'Favor de introducir el primer valor entero'
	leer n1
	Mientras n1-trunc(n1) <> 0 Hacer
		Escribir 'Favor de introducir el primer valor ENTERO'
		Leer n1
	Fin Mientras
	Escribir 'Favor de introducir el segundo valor entero'
	leer n2
	Mientras n2-trunc(n2) <> 0 Hacer
		Escribir 'Favor de introducir el segundo valor ENTERO y diferente al primero'
		Leer n2
	Fin Mientras
	Escribir 'Favor de introducir el tercer valor entero'
	leer n3
	Mientras n3-trunc(n3) <> 0 Hacer
		Escribir 'Favor de introducir el tercer valor ENTERO y diferente a los dos primeros'
		Leer n3
	Fin Mientras
	Si n1 > n2 Entonces
		temp = n1
		n1 = n2
		n2 = temp
	FinSi
	Si n1 > n3 Entonces
		temp = n1
		n1 = n3
		n3 = temp
	FinSi
	Si n2 > n3 Entonces
		temp = n2
		n2 = n3
		n3 = temp
	FinSi
	Escribir 'los numeros expresados organizados de menor a mayor son: ', n1 ,', ', n2 ,' ,', n3,', Fin del programa.'
	
FinSubProceso



