Proceso calculadora
	Definir n1,n2,rr Como Real
	Definir num,i,j Como Entero
	Definir c Como Cadena
	definir vector1,vector2,vector3,vector4 como real
	dimension vector1[100],vector2[100],vector3[100],vector4[100]
	
	Escribir "Bienvenido a la calculadora..."
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
				Escribir "Ingrese cuantos numeros quiere sumar:"
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
				Escribir "Ingrese cuantos numeros quiere restar:"
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
				Escribir "Ingrese cuantos numeros quiere multiplicar:"
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
				Escribir "Ingrese cuantos numeros quiere dividir:"
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
	Escribir "Gracias por usar la calculadora"
FinProceso
