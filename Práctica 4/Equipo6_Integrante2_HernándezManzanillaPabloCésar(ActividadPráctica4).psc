Proceso CalculadoraDistanciaOrdenamiento
	Definir opc Como Cadena
	Definir opc2 Como Cadena
	Definir Decision Como Cadena
	Definir DecisionOpc Como Cadena
	Definir p1, p2, p3 Como Real
	Repetir
		Escribir 'Este es un programa que integra las funciones de:'
		menu1()
		Escribir ''
		Escribir 'Seleccione una de las funciones (z,x,y) para continuar: '
		Leer opc
		Limpiar Pantalla
		Mientras  NO (opc=='z' O opc=='x' O opc=='y' O opc=='Z' O opc=='X' O opc=='Y') Hacer
			Escribir 'Función no reconocida. Vuelve a introducir la función deseada.'
			menu1()
			Leer opc
			Limpiar Pantalla
		FinMientras
		Según opc Hacer
			'z', 'Z':
				Escribir 'Selecciones una de las operaciones (a,b,c,d,e) para continuar: '
				menu2()
				Leer opc2
				Limpiar Pantalla
				Mientras  NO (opc2=='a' O opc2=='b' O opc2=='c' O opc2=='d' O opc2=='e' O opc2=='A' O opc2=='B' O opc2=='C' O opc2=='D' O opc2=='E') Hacer
					Escribir 'Operación no reconocida. Vuelva a intentarlo.'
					menu2()
					Leer opc2
					Limpiar Pantalla
				FinMientras
				Según opc2 Hacer
					'a', 'A':
						suma(n1,n2)
					'b', 'B':
						resta(n1,n2)
					'c', 'C':
						multiplicacion(n1,n2)
					'd', 'D':
						division(n1,n2)
					'e', 'E':
						potenciacion(n1,n2)
				FinSegún
				Escribir lista_de_expresiones
			'x', 'X':
				DistanciaDosPuntos(x1,x2,y1,y2)
			'y', 'Y':
				OrdenarTresNumerosMenorAMayor(n1,n2,n3)
		FinSegún
		Escribir '¿Desea volver al menú principal? [S/N]'
		Leer Decision
		Limpiar Pantalla
		Mientras  NO (Decision=='S' O Decision=='s' O Decision=='N' O Decision=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver al menú o Introduzca (N) para finalizar.'
			Leer Decision
			Limpiar Pantalla
		FinMientras
	Hasta Que Decision='N' O Decision='n'
FinProceso

SubAlgoritmo menu1
	Escribir '(z) Calculadora (Suma, Resta, Multiplicación, División y Potenciación)'
	Escribir '(x) Distancia entre dos puntos P1(x1,y1) y P2(x2,y2)'
	Escribir '(y) Ordenamiento de tres números distintos entre sí de menor a mayor'
FinSubAlgoritmo

SubAlgoritmo menu2
	Escribir '(a) Suma'
	Escribir '(b) Resta'
	Escribir '(c) Multiplicación'
	Escribir '(d) División'
	Escribir '(e) Potenciación'
FinSubAlgoritmo

SubAlgoritmo suma(n1,n2)
	Definir resultado Como Real
	Repetir
		Escribir 'Ingrese el PRIMER valor a sumar: '
		n1 <- validarn
		Escribir 'Ingrese el SEGUNDO valor a sumar: '
		n2 <- validarn
		resultado <- n1+n2
		Escribir 'Suma = ', resultado
		Escribir '¿Desea volver a realizar una Suma? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a realizar otra suma o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo resta(n1,n2)
	Definir resultado Como Real
	Repetir
		Escribir 'Ingrese el PRIMER valor a restar: '
		n1 <- validarn
		Escribir 'Ingrese el SEGUNDO valor a restar: '
		n2 <- validarn
		resultado <- n1-n2
		Escribir 'Resta = ', resultado
		Escribir '¿Desea volver a realizar una Resta? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a realizar otra resta o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo multiplicacion(n1,n2)
	Definir resultado Como Real
	Repetir
		Escribir 'Ingrese el PRIMER valor a multiplicar: '
		n1 <- validarn
		Escribir 'Ingrese el SEGUNDO valor a multiplicar: '
		n2 <- validarn
		resultado <- n1*n2
		Escribir 'Multiplicación = ', resultado
		Escribir '¿Desea volver a realizar una Multiplicación? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a realizar otra multiplicación o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo division(n1,n2)
	Definir resultado Como Real
	Definir DecisionOpc Como Cadena
	Repetir
		Escribir 'Ingrese el DIVIDENDO (numerador): '
		n1 <- validarn
		Escribir 'Ingrese el DIVISOR (denominador): '
		n2 <- validarn
		Si n2=0 Entonces
			Escribir 'Error: división entre cero. Vuelve a introducir el denominador de ', n1, ':'
			Mientras n2=0 Hacer
				n2 <- validarn
			FinMientras
		FinSi
		resultado <- n1/n2
		Escribir 'División = ', resultado
		Escribir '¿Desea volver a realizar una División? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a realizar otra división o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo potenciacion(n1,n2)
	Definir resultado Como Real
	Repetir
		Escribir 'Ingrese la base del exponente: '
		n1 <- validarn
		Escribir 'Ingrese el exponente de la base: '
		n2 <- validarn
		resultado <- n1^n2
		Escribir 'Exponenciación = ', resultado
		Escribir '¿Desea volver a realizar una Potenciación? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a realizar otra potenciación o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo DistanciaDosPuntos(x1,x2,y1,y2)
	Definir resultado Como Real
	Repetir
		Escribir 'Según las coordenadas P1(x1,y1) y P2(x2,y2)'
		Escribir 'Introduzca x1: '
		x1 <- validarn
		Escribir 'Introduzca y1: '
		y1 <- validarn
		Escribir 'Introduzca x2: '
		x2 <- validarn
		Escribir 'Introduzca y2: '
		y2 <- validarn
		resultado <- rc(((x2-x1)^2)+((y2-y1)^2))
		Escribir 'Distancia entre P1 y P2: ', resultado
		Escribir '¿Desea volver a calcular la distancia entre dos puntos? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a calcular la distancia entre dos puntos o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

SubAlgoritmo OrdenarTresNumerosMenorAMayor(n1,n2,n3)
	Repetir
		Escribir 'Introduzca el primer valor a ordenar: '
		n1 <- validarn
		Escribir 'Introduzca el segundo valor a ordenar: '
		n2 <- validarn
		Escribir 'Introduzca el tercer valor a ordenar: '
		n3 <- validarn
		Mientras n1==n2 O n1==n3 O n2==n3 Hacer
			Limpiar Pantalla
			Escribir 'Error: Introduzca números distintos.'
			Escribir 'Introduzca el primer valor a ordenar: '
			n1 <- validarn
			Escribir 'Introduzca el segundo valor a ordenar: '
			n2 <- validarn
			Escribir 'Introduzca el tercer valor a ordenar: '
			n3 <- validarn
		FinMientras
		Si n1>n2 Y n1>n3 Entonces
			p3 <- n1
			Si n2>n3 Entonces
				p2 <- n2
				p1 <- n3
				Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
			SiNo
				p2 <- n3
				p1 <- n2
				Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
			FinSi
		SiNo
			Si n2>n1 Y n2>n3 Entonces
				p3 <- n2
				Si n1>n3 Entonces
					p2 <- n1
					p1 <- n3
					Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
				SiNo
					p2 <- n3
					p1 <- n1
					Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
				FinSi
			SiNo
				Si n3>n1 Y n3>n2 Entonces
					p3 <- n3
					Si n1>n2 Entonces
						p2 <- n1
						p1 <- n2
						Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
					SiNo
						p2 <- n2
						p1 <- n1
						Escribir 'El orden ascendente es: ', p1, ',', p2, ',', p3
					FinSi
				FinSi
			FinSi
		FinSi
		Escribir '¿Desea volver a ordenar 3 números distintos de menor a mayor? [S/N]'
		Leer DecisionOpc
		Limpiar Pantalla
		Mientras  NO (DecisionOpc=='S' O DecisionOpc=='s' O DecisionOpc=='N' O DecisionOpc=='n') Hacer
			Escribir 'Opción no válida. Introduzca (S) para volver a ordenar 3 números distintos entre sí de menor a mayor o Introduzca (N) para finalizar.'
			Leer DecisionOpc
			Limpiar Pantalla
		FinMientras
	Hasta Que DecisionOpc='N' O DecisionOpc='n'
FinSubAlgoritmo

// validar que n1 y n2 sean numeros (neg, pos, decim) y no cadena de texto
SubAlgoritmo ValidarN1yN2 <- validarn
	Definir num Como Cadena
	Definir validarnum, validarmenos Como Lógico
	Repetir
		Leer num
		largo <- Longitud(num)
		validarnum <- Verdadero
		validarmenos <- Verdadero
		contpunto <- 0
		Para i<-0 Hasta largo-1 Con Paso 1 Hacer
			numunico <- Subcadena(num,i,i)
			Si numunico<>'0' Y numunico<>'1' Y numunico<>'2' Y numunico<>'3' Y numunico<>'4' Y numunico<>'5' Y numunico<>'6' Y numunico<>'7' Y numunico<>'8' Y numunico<>'9' Y numunico<>'.' Y numunico<>'-' Entonces
				validarnum <- Falso
			FinSi
			Si numunico='.' Entonces
				contpunto <- contpunto+1
			FinSi
			Si numunico='-' Entonces
				Si i=0 Entonces
					validarmenos <- Verdadero
				SiNo
					validarmenos <- Falso
				FinSi
			FinSi
		FinPara
		Si validarnum=Falso O (contpunto>1) O validarmenos=Falso Entonces
			Escribir 'No se ha ingresado un numero de forma correcta. Intentalo de nuevo.'
		FinSi
	Hasta Que validarnum=Verdadero Y (contpunto=0 O contpunto=1) Y validarmenos=Verdadero
	ValidarN1yN2 <- ConvertirANumero(num)
FinSubAlgoritmo
