SubProceso valor <- CalcularPorcentaje(base, porcentaje)
	valor <- base  * porcentaje / 100	
FinSubProceso

SubProceso subtotal <- leerPedido
	Definir precio, cantidad Como Real
	subtotal <- 0
	Escribir "Precio de Bandeja:"
	Leer precio
	Escribir "Cantidad:"
	Leer cantidad
	subtotal <- subtotal + precio * cantidad
	Escribir  "Precio de Ajiaco:"
	leer precio
	Escribir "Cantidad:"
	leer cantidad
	subtotal <- subtotal + precio * cantidad
FinSubProceso

SubProceso imprimirFactura (subtotal, impuesto, propina)
	Definir total Como Real
	total <- subtotal + impuesto + propina
	Escribir  "  FACTURA  "
	Escribir "Subtotal: $", subtotal
	Escribir "Impuesto (8%): $", impuesto
	Escribir "Propina (10%): $", propina
	Escribir "Total: $", total
FinSubProceso


Algoritmo FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real
	subtotal <- leerPedido
	impuesto <- CalcularPorcentaje(subtotal, 8)
	propina <- CalcularPorcentaje(subtotal, 10)
	ImprimirFactura(subtotal, impuesto, propina)
	
FinAlgoritmo
	