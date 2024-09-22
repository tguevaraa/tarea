Algoritmo tarea_ejercicio_2
	
	
    // Un empleado recibe un salario base de $2000. Si tiene m�s de 5 a�os en la empresa y 
    // su desempe�o es superior a 80%, recibe una bonificaci�n del 10%. Si su desempe�o es 
    // superior a 90% y adem�s ha trabajado m�s de 50 horas esa semana, recibe una bonificaci�n 
    // adicional del 5%. Si no cumple ninguna condici�n, no recibe bonificaci�n.
	
	
    Definir sb Como Real //salario base
    Definir ae Como Real //a�os en la empresa
    Definir ht Como Real //horas trabajadas
    Definir sf Como Real //salario final
    Definir b1 Como Real //bonificaci�n 1
    Definir b2 Como Real //bonificaci�n 2
    Definir pd Como Real //porcentaje de desempe�o
	
	
    sb = 2000 
	
	
    Escribir "Ingrese los a�os trabajados en la empresa"
    Leer ae
    Escribir "Ingrese las horas trabajadas esta semana"
    Leer ht
    Escribir "Ingrese el porcentaje de desempe�o"
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