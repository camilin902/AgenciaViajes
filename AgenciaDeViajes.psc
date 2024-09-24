Proceso AgenciaDeViajes
	
    Definir destino, dias Como Entero
    Definir continuar Como Caracter
    Definir costoDiario, costoTotal, descuento Como Real
	
    continuar = "si"
	
    Mientras continuar = "si" Hacer
        // Menú de destinos
        Escribir "Bienvenido a la Agencia de Viajes"
        Escribir "Seleccione su destino:"
        Escribir "1. Playa ($500.000 por día)"
        Escribir "2. Montaña ($400.000 por día)"
        Escribir "3. Ciudad ($300.000 por día)"
        Leer destino
		
        // Asignar costo diario según destino
        Segun destino Hacer
            Caso 1:
                costoDiario = 500000
                Escribir "Destino seleccionado: Playa"
            Caso 2:
                costoDiario = 400000
                Escribir "Destino seleccionado: Montaña"
            Caso 3:
                costoDiario = 300000
                Escribir "Destino seleccionado: Ciudad"
            De Otro Modo:
                Escribir "Opción inválida, por favor elija un destino válido."
                
        FinSegun
		
        // Ingreso de días de estancia
        Escribir "Ingrese la cantidad de días de estancia:"
        Leer dias
		
        // Validar que los días sean mayores que 0
        Si dias <= 0 Entonces
            Escribir "La cantidad de días debe ser mayor que 0."
            
        FinSi
		
        // Calcular el costo total del viaje
        costoTotal = costoDiario * dias
		
        // Aplicar descuentos según la cantidad de días
        Si dias >= 7 Entonces
            descuento = 0.15
            Escribir "Se ha aplicado un descuento del 15% por estancia prolongada."
        Sino
            Si dias >= 3 Entonces
                descuento = 0.10
                Escribir "Se ha aplicado un descuento del 10%."
            Sino
                descuento = 0
                Escribir "No se ha aplicado ningún descuento."
            FinSi
        FinSi
		
        // Calcular el costo final con descuento
        costoTotal = costoTotal * (1 - descuento)
		
        // Mostrar el costo total al usuario
        Escribir "El costo total de su viaje es: $", costoTotal
		
        // Preguntar si desea realizar otra reserva
        Escribir "¿Desea realizar otra reserva? (si/no):"
        Leer continuar
		
        // Convertir respuesta a minúsculas para evitar problemas
        continuar = Minusculas(continuar)
		
    FinMientras
	
    Escribir "Gracias por usar la Agencia de Viajes. ¡Que tenga un buen día!"

FinProceso