Algoritmo tarea_ejercicio_2
	
	
    // Un empleado recibe un salario base de $2000. Si tiene más de 5 años en la empresa y 
    // su desempeño es superior a 80%, recibe una bonificación del 10%. Si su desempeño es 
    // superior a 90% y además ha trabajado más de 50 horas esa semana, recibe una bonificación 
    // adicional del 5%. Si no cumple ninguna condición, no recibe bonificación.
	
	
    Definir sb Como Real //salario base
    Definir ae Como Real //años en la empresa
    Definir ht Como Real //horas trabajadas
    Definir sf Como Real //salario final
    Definir b1 Como Real //bonificación 1
    Definir b2 Como Real //bonificación 2
    Definir pd Como Real //porcentaje de desempeño
	
	
    sb = 2000 
	
	
    Escribir "Ingrese los años trabajados en la empresa"
    Leer ae
    Escribir "Ingrese las horas trabajadas esta semana"
    Leer ht
    Escribir "Ingrese el porcentaje de desempeño"
    Leer pd
	
	
    Si ae > 5 Y pd > 80 Entonces
        b1 = sb * 0.10 
		
	SiNo
		b1 = 0
    FinSi
	
    
    Si pd > 90 Y ht > 50 Entonces
        b2 = sb * 0.05 
	SiNo
		b2 = 0
    FinSi
	
    
    sf = sb + b1 + b2
	
   
    Escribir "El salario final es: $", sf, "USD."
	
	
FinAlgoritmo