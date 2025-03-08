Algoritmo PRACTICA4
	
	definir p como real 
	
	
	Definir nN1, nN2, nN3                  como real
	
	Definir N1 Como Real
	Definir N2 Como Real
	Definir N3 Como Real
	
	Definir Media, moda Como Real
	
	
	
	Repetir
		Escribir ""
		Escribir ""
		Escribir " SELECCIONE LA OPERACIÓN QUE DESEA REALIZAR    "
		Escribir ""
		Escribir ""
		Escribir "1) ORDENAR 3 NÚMEROS REALES DE MENOR A MAYOR   "
		Escribir ""
		Escribir ""
		Escribir "2) CALCULAR LA MODA Y LA MEDIA DE 3 NUMEROS     "
		Escribir ""
		Escribir ""
		Escribir "3) SALIR DEL PROGRAMA" 
		Escribir ""
		Escribir ""
		Escribir "DIGITE EL NÚMERO CORRESPONDIENTE PARA REALIZAR LA OPERACIÓN."
		Escribir ""
		Escribir ""
	
		leer p
		
		
		si p = 1 Entonces
			
			Escribir "ESTE PROGRAMA ORDENA 3 NUMEROS DE MENOR A MAYOR"
			
			
			
			Escribir "DIGITE EL PRIMER TÉRMINO N1"
			Leer nN1;
			
			
			Repetir 
				Escribir "DIGITE EL SEGUNDO TÉRMINO N2"
				Leer nN2;
				
				
				Si nN2 = nN1 Entonces
					Escribir  "DIGITE UN VALOR DISTINTO DEL PRIMERO"
				FinSi
				
			Hasta Que nN2 <> nN1 
			
			Repetir
				Escribir "DIGITE EL TERCER TÉRMINO N3"
				Leer nN3;
				
				
				Si nN3= nN2 Entonces
					Escribir "DÍGITE UN VALOR PARA N3 DIFERENTE DE N2"
				FinSi
				
				
				Si nN3 = nN1 Entonces
					Escribir "DIGITE UN VALOR PARA N3 DIFERENTE DE N1"
				FinSi
				
				
			Hasta Que nN3 <> nN2 y nN3 <> nN1
			
			
			
			Si nN1 < nN2 Entonces
				
				
				si nN2<nN3 Entonces
					Escribir "EL ORDEN DE MENOR A MAYOR ES"
					Escribir  nN1," < ",nN2, " < ", nN3
					
					
				sino 
					si nN1<nN3 Entonces
						Escribir "EL ORDEN DE MENOR A MAYOR ES"
						Escribir nN1, " < ", nN3, " < ",nN2
						
					sino 
						Escribir "EL ORDEN DE MENOR A MAYOR ES"
						Escribir nN3, " < ", nN1, " < ", nN2
					FinSi
					
					
				FinSi
				
				
			sino 
				
				si nN1 < nN3 Entonces
					Escribir "EL ORDEN DE MENOR A MAYOR ES "
					Escribir nN2, " < ",nN1," < ", nN3
					
					
					
				sino 
					
					si nN2<nN3 Entonces
						Escribir "EL ORDEN DE MENOR A MAYOR ES"
						Escribir nN2, " < ", nN3, " < ", nN1
						
					sino 
						Escribir "EL ORDEN DE MENOR A MAYOR ES"
						Escribir nN3, " < ", nN2, " < ", nN1
						
						
					FinSi
					
					
					
				FinSi
				
				
				
				
			FinSi
		FinSi
		
		
		si p = 2 Entonces
			
			
			
			

			
			
			Repetir
				
				Repetir
					
					Escribir 'Ingresa el primer número en un rango del 1 al 10: '
					Leer N1
					
					Si N1 < 1 o N1 > 10 Entonces
						Escribir 'Número invalido. Coloque un primer número valido entre el rango 1 a 10'
					FinSi
					
					Si ((N1 - (trunc(N1)))) <> 0
						Escribir 'Número invalido. Coloque un primer número entero: '
					FinSi
					
				Hasta Que ((N1 - (trunc(N1)))) = 0
				
			Hasta Que N1 >= 1 y N1 <= 10
			
			Repetir
				
				Repetir
					
					Escribir 'Ingresa el segundo número en un rango del 1 al 10: '
					Leer N2
					
					Si N2 < 1 o N2 > 10 Entonces
						Escribir 'Número invalido. Coloque un segundo número valido entre el rango 1 a 10'
					FinSi
					
					Si ((N2 - (trunc(N2)))) <> 0
						Escribir 'Número invalido. Coloque un segundo número entero: '
					FinSi
					
				Hasta Que ((N2 - (trunc(N2)))) = 0
				
			Hasta Que N2 >= 1 y N2 <= 10
			
			Repetir
				
				Repetir
					
					Escribir 'Ingresa el tercer número en un rango del 1 al 10: '
					Leer N3
					
					Si N3 < 1 o N3 > 10 Entonces
						Escribir 'Número invalido. Coloque un tercer número valido entre el rango 1 a 10'
					FinSi
					
					Si ((N3 - (trunc(N3))) / N3) <> 0
						Escribir 'Número invalido. Coloque un tercer número entero: '
					FinSi
					
				Hasta Que ((N3 - (trunc(N3))) / N3) = 0
				
			Hasta Que N3 >= 1 y N3 <= 10
			
			Si N1 = N2 Entonces
				Escribir 'La moda es: ', N1
			SiNo
				Si N2 = N3 Entonces
					Escribir 'La moda es: ', N3
				SiNo
					Si N1 = N3 Entonces
						Escribir 'La moda es: ', N3
					FinSi
				FinSi
				Si N1 <> N2 Y N2 <> N3 Y N3 <> N1 Entonces
					Escribir 'La moda es inexistente ya que no se repite ningun número'
				FinSi
			FinSi
			
			Media = ((N1 + N2 + N3)/3)
			
			Escribir 'La media es: ', Media
			
			
			
			
			
			
			
			
			
			
			
			
			
		FinSi
		
		
		si p = 3
			entonces 
			Escribir "SE ACABÓ EL PROGRAMA."
		FinSi
		
		
	Hasta QUE  p = 3;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
