Algoritmo ValidarPIN
	Definir pin, intentos Como Entero
	Definir acceso Como logicos
	
	intentos <- 0
	acceso <- Falso
	
	Repetir
		Escribir "Ingresa tu PIN:"
		Leer Pin
		intentos <- intentos + 1
		Si pin = 2580 Entonces
			acceso <- Verdadero
		FinSi
	Hasta Que  acceso = Verdadero O intentos = 3
	
	Si acceso = Verdadero Entonces
		Escribir "Acceso concedido"
	SiNo
		Escribir "Cuenta bloqueada"
	FinSi
	
FinAlgoritmo
	