Algoritmo Calificaciones
	Definir nota, suma, mayor, menor Como Real
	Definir aprobados Como Entero
	Definir alguienPerdio Como Logico
	
	suma <- 0
	aprobados <- 0 
	mayor <- 0
	menor <- 5
	alguienPerdio <- Falso
	
	Definir i Como Entero
	
	Para i <- 1 Hasta 5 Hacer
		Escribir "Nota del estudiante ", i, ":"
		Leer nota
		suma <- suma + nota
		
		Si nota >= 3 Entonces
			aprobados <- aprobados + 1
		FinSi
		
		Si nota > mayor Entonces
			mayor <- nota
		FinSi
		
		Si nota < menor Entonces 
			menor <- nota
		FinSi
		
		Si nota < 3 Entonces
			alguienPerdio <- Verdadero
		FinSi
		
	FinPara
	
	Escribir "Promedio: ", suma / 5
	Escribir "Aprobados: ", aprobados
	Escribir "Nota mas alta: ", mayor
	Escribir "Nota mas baja: ", menor
	
	Si alguienPerdio = Verdadero Entonces
		Escribir "Hay estudiantes en refuerzo"
	FinSi
	
	
FinAlgoritmo
	