Proceso AgenciaDeViajes
	
    Definir destino, dias Como Entero
    Definir continuar Como Caracter
    Definir costoDiario, costoTotal, descuento Como Real
	
    continuar = "si"
	
    Mientras continuar = "si" Hacer
        // Men� de destinos
        Escribir "Bienvenido a la Agencia de Viajes"
        Escribir "Seleccione su destino:"
        Escribir "1. Playa ($500.000 por d�a)"
        Escribir "2. Monta�a ($400.000 por d�a)"
        Escribir "3. Ciudad ($300.000 por d�a)"
        Leer destino
		
        // Asignar costo diario seg�n destino
        Segun destino Hacer
            Caso 1:
                costoDiario = 500000
                Escribir "Destino seleccionado: Playa"
            Caso 2:
                costoDiario = 400000
                Escribir "Destino seleccionado: Monta�a"
            Caso 3:
                costoDiario = 300000
                Escribir "Destino seleccionado: Ciudad"
            De Otro Modo:
                Escribir "Opci�n inv�lida, por favor elija un destino v�lido."
                
        FinSegun
		
        // Ingreso de d�as de estancia
        Escribir "Ingrese la cantidad de d�as de estancia:"
        Leer dias
		
        // Validar que los d�as sean mayores que 0
        Si dias <= 0 Entonces
            Escribir "La cantidad de d�as debe ser mayor que 0."
            
        FinSi
		
        // Calcular el costo total del viaje
        costoTotal = costoDiario * dias
		
        // Aplicar descuentos seg�n la cantidad de d�as
        Si dias >= 7 Entonces
            descuento = 0.15
            Escribir "Se ha aplicado un descuento del 15% por estancia prolongada."
        Sino
            Si dias >= 3 Entonces
                descuento = 0.10
                Escribir "Se ha aplicado un descuento del 10%."
            Sino
                descuento = 0
                Escribir "No se ha aplicado ning�n descuento."
            FinSi
        FinSi
		
        // Calcular el costo final con descuento
        costoTotal = costoTotal * (1 - descuento)
		
        // Mostrar el costo total al usuario
        Escribir "El costo total de su viaje es: $", costoTotal
		
        // Preguntar si desea realizar otra reserva
        Escribir "�Desea realizar otra reserva? (si/no):"
        Leer continuar
		
        // Convertir respuesta a min�sculas para evitar problemas
        continuar = Minusculas(continuar)
		
    FinMientras
	
    Escribir "Gracias por usar la Agencia de Viajes. �Que tenga un buen d�a!"

FinProceso