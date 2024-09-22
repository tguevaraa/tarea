Algoritmo tarea_ejercicio_3
	
	//Una empresa de envíos cobra $10 por cada 5 kg de peso del paquete. Si la distancia es 
	//mayor a 500 km, hay un recargo del 15%. Si el envío es internacional, se añade un 
	//recargo del 20%. Si el cliente elige un servicio exprés y la distancia es mayor a 1000 km, 
	//el recargo aumenta en un 10% adicional. Además, si el peso del paquete es superior a 
	//50 kg, se cobra un recargo adicional del 5%.
	
	
	Definir pq Como Real //peso del paquete
	Definir dr Como Real //distacia recorrida
	Definir r Como Real //recargo
	Definir pesr Como Real //precio de envio sin recargo
	Definir pef Como Real //precio de envio final
	Definir B Como Real // bloques
	
	
	Escribir "Cuanto pesa su paquete?"
	Leer pq //peso del paquete
	Escribir "que distancia recorrera su paquete?"
	Leer dr //distacia recorrida
	Escribir "internacional o nacional?"
	leer tien1 //tipo de envio
	Escribir "express o regular?"
	leer tien2 //tipo de envio 2
	
	
	pesr = (10 / 5) * pq
	
	Si dr > 500 Entonces
		r = r + (pesr * 0.15)
	SiNo
		r = r + 0
	Fin Si
	
	Si tien1 == "internacional" Entonces
		r = r + (pesr * 0.20)
	SiNo
		r = r + 0 
	Fin Si
	
	Si tien2 == "express" Y dr > 1000 Entonces
		r = r + (pesr * 0.10)
	SiNo
		r = r + 0 
	Fin Si
	
	Si pq > 50 Entonces
		r = r + (pesr * 0.05)
	SiNo
		r = r + 0 
	Fin Si
	
	Pef = pesr + r
	
	Escribir "Su precio final a pagar es: $", pef
	
FinAlgoritmo
