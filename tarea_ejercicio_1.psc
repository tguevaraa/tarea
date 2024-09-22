Algoritmo tarea_ejercicio_1
	//Cálculo de precio final con múltiples descuentos y recargos Una tienda vende productos con precios variables. 
	//Si el cliente tiene membresía Premium y su compra supera los $1000, recibe un descuento del 15%. Si el cliente no 
	//tiene membresía y paga con tarjeta de débito, recibe un descuento del 5%. Si la compra es superior a $2000, 
	//se aplica un recargo del 2%. Si la compra se realiza en viernes, se aplica un descuento adicional del 3%
	
	Definir mc Como Real //monto de compra
	Definir d Como Real //descuento
	Definir tp Como Real //total a pagar
	Definir r Como Real //recargo
	
	Escribir "que dia de la semana es?"
	leer ds //dia de la semana
	Escribir "ingrese la catgoria del cliente"
	Leer cc //ingreso d cadena / string
	Escribir "ingrese el monto de compra"
	Leer mc //monto de compra
	escribir "metodo de pago"
	leer mp //metodo de pago
	
	
	
	si cc == "premium" Entonces
		si mc > 1000 Entonces
			d = mc * 0.15
		SiNo
				d = 0 
			FinSi
	SiNo
	    si cc == "regular" Entonces
			si mp == "tarjeta de debito" Entonces
				d = mc * 0.05
				Si mc > 2000 Entonces
					r = mc * 0.02
				SiNo
					r = 0
				Fin Si
			SiNo
				d = 0	
				FinSi
			SiNo
				d = 0
			FinSi
		finsi	
		si ds == "viernes" Entonces
			d = mc * 0.03
		SiNo
			d = 0		
		FinSi
		
		
tp = mc - d + r

Escribir "el total a pagar es: $", tp
	
FinAlgoritmo
