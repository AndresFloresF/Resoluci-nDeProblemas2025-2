Proceso CalculadoraCorregido2
	Definir n1, n2 Como Real
	Definir opc Como Cadena
	Definir Decision Como Caracter
	
	Repetir
		Escribir 'Esta es una calculadora capaz de operar �nicamente dos valores. Se puede hacer sumas, restas, multiplicaciones, divisiones y exponenciaciones.'
		Escribir ''
		
		// Usuario ingresa los valores a operar
		Escribir 'Ingrese el primer valor a operar (numerador en divisi�n o base en exponenciaci�n):'
		n1 <- validarn
		Escribir 'Ingrese el segundo valor a operar (denominador en divisi�n o exponente en exponenciaci�n):'
		n2 <- validarn
		Limpiar Pantalla
		// Usuario indica la operacion a realizar
		Escribir 'Lista de operaciones: suma(a); resta(b); multiplicaci�n(c); divisi�n(d); exponenciaci�n(e)'
		Escribir 'Indique la operaci�n a realizar con la letra correspondiente:'
		Leer opc
		Limpiar Pantalla
		Mientras  NO (opc=='a' O opc=='b' O opc=='c' O opc=='d' O opc=='e') Hacer
			Escribir 'Operaci�n no reconocida. Vuelva a indicar que operaci�n quiere realizar.'
			Escribir 'Lista de operaciones: suma(a); resta(b); multiplicaci�n(c); divisi�n(d); exponenciaci�n(e)'
			Leer opc
		FinMientras
		// Proteccion division entre 0
		Si n2=0 Y opc='d' Entonces
			Escribir 'Error: divisi�n entre cero. Vuelve a introducir el denominador de ', n1, ':'
			Mientras n2=0 Y opc='d' Hacer
				n2 <- validarn
			FinMientras
		FinSi
		
		
		
		// Se operan los numeros ingresados por el usuario. {Si{ puede no ser necesario por el {mientras{ que est� antes
Seg�n opc Hacer
'a':
	suma(n1,n2)
'b':
	resta(n1,n2)
'c':
	multiplicacion(n1,n2)
'd':
	division(n1,n2)
'e':
	potenciacion(n1,n2)
FinSeg�n



Escribir 'Desea Volver a realizar otra operacion? [S/N]'
Leer Decision
Limpiar Pantalla
Mientras  NO (Decision=='S' O Decision=='s' O Decision=='N' O Decision=='n') Hacer
	Escribir 'Opci�n no v�lida. Introduzca (S) para volver realizar una operaci�n o Introduzca (N) para finalizar.'
	Leer Decision
FinMientras
Hasta Que Decision='N' o Decision='n'
FinProceso





SubProceso suma(n1, n2)
    Definir resultado Como Real
    resultado = n1 + n2
    Escribir 'Suma= ', resultado
FinSubProceso


SubProceso resta(n1, n2)
    Definir resultado Como Real
    resultado = n1 - n2
    Escribir 'Resta= ', resultado
FinSubProceso


SubProceso multiplicacion(n1, n2)
    Definir resultado Como Real
    resultado = n1 * n2
    Escribir 'Multiplicaci�n= ', resultado
FinSubProceso


SubProceso division(n1, n2)
    Definir resultado Como Real
    resultado = n1 / n2
    Escribir 'Divisi�n= ', resultado
FinSubProceso


SubProceso potenciacion(n1, n2)
    Definir resultado Como Real
    resultado = n1 ^ n2
    Escribir 'Potenciaci�n= ', resultado
FinSubProceso



// validar que n1 y n2 sean numeros (neg, pos, decim) y no cadena de texto
SubAlgoritmo ValidarN1yN2 <- validarn
	Definir num Como Cadena
	Definir validarnum, validarmenos Como L�gico
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