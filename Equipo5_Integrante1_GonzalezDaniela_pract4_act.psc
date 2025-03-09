Proceso sin_titulo
	Escribir 'Bienvenido al programa CHICOS COOL'
	Repetir
		Escribir 'MENU DE OPCIONES'
		Escribir '1=distancia entre dos puntos'
		Escribir '2=ordenar una lista de 3 numeros de mayor a menor'
		Escribir '3=salir'
		Escribir 'seleccione una opcion'
		Leer n
		
		
			Segun n Hacer
				1://distancia
					Definir x1, y1, x2, y2, d Como Real
					Escribir 'Programa para calcular la distancia entre dos puntos'
					Escribir 'ingrese x1'
					Leer x1
					Escribir 'ingrese y1'
					Leer y1
					Escribir 'ingrese x2'
					Leer x2
					Escribir 'ingrese y2'
					Leer y2
					d<-raiz(((x2-x1)^2)+((y2-y1)^2))
					
					Escribir 'la distancia entre los puntos es: '
					Escribir d
				2://lista
					definir a,b,c Como Real
					Escribir 'programa para ordenar 3 números de mayor a menor'
					Escribir 'ingrese el primer número'
					Leer a
					Escribir 'ingrese el segundo número'
					Leer b
					Escribir 'ingrese el tercer número'
					Leer c
					Si a>b Entonces
						Si b>c Entonces
							Escribir a,", " b,", " c
							
						SiNo
							Si a>c Entonces
								Escribir a,", " c,", " b
							SiNo
								Escribir c,", " a,", " b
							Fin Si
						Fin Si
					SiNo
						Si a>c Entonces
							Escribir b,", " a,", " c
						SiNo
							Si c>b Entonces
								Escribir c,", " b,", " a
							SiNo
								Escribir b,", " c,", " a
							Fin Si
						Fin Si
					Fin Si
					
				3://salir
			Fin Segun
			Escribir 'seleccione una tecla para continuar'
			Esperar Tecla
	
		
	Hasta Que n=3
FinProceso
