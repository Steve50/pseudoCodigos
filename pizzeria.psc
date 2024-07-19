Algoritmo pizzeria
	Escribir 'Carrito de compras'
	Repetir
		Escribir '¿Deseas agregar algo al carrito?'
		add <- ''
		Leer add
		Si add='si' Entonces
			Escribir "***************************************"
			Escribir '           Pizza basica = 1'
			Escribir '    Pizza con dos ingredientes = 2'
			Escribir '    Pizza con tres ingredientes = 3'
			Escribir '         Refresco chico = 4'
			Escribir '        Refresco grande = 5'
			Escribir "***************************************"
			Repetir
				Escribir '¿Desea Agregar una pizza?'
				addPizza <- ''
				Leer addPizza
				Si addPizza=='si' Entonces
					Escribir 'Selecciona el tamaño de la pizza'
					Leer pizza
					precio <- 0
					Según pizza Hacer
						1:
							precio <- precio+5
							Escribir 'Pizza basica ', precio, ' USD'
						2:
							precio <- precio+10
							Escribir 'Pizza con 2 ingredientes ', precio, ' USD'
						3:
							precio <- precio+12
							Escribir 'Pizza con 3 ingredientes ', precio, ' USD'
						De Otro Modo:
							Escribir 'Gracias por su preferencia!!!'
					FinSegún
				SiNo
					precio <- precio
					subtotalP <- subtotalP+precio
				FinSi
			Hasta Que addPizza='no'
			Repetir
				Escribir '¿Desea agregar un refresco?'
				addRefr <- ''
				Leer addRefr
				Escribir 'Selecciona el tamaño del refresco:'
				Si addRefr=='si' Entonces
					Leer refre
					precioR <- 0
					Según refre Hacer
						4:
							precioR <- precioR+2
							Escribir 'Refresco chico ', precioR, ' USD'
						5:
							precioR <- precioR+3
							Escribir 'Refresco grande ', precioR, ' USD'
						De Otro Modo:
							Escribir 'Gracias por su preferencia!!!'
					FinSegún
				SiNo
					precioR <- precioR
					subtotalR <- subtotalR+precioR
				FinSi
			Hasta Que addRefr='no'
			Si subtotalP==5 Y subtotalR==2 Entonces
				subtotalT <- subtotalP+subtotalR
				descE <- .10
				descText <- "10%"
				desc <- subtotalT*descE
				total <- subtotalT-desc
			SiNo
				Si subtotalP==10 Y subtotalR==2 Entonces
					subtotalT <- subtotalP+subtotalR
					descE <- .15
					descText <- "15%"
					desc <- subtotalT*descE
					total <- subtotalT-desc
				SiNo
					Si subtotalP==12 Y subtotalR==3 Entonces
						subtotalT <- subtotalP+subtotalR
						descE <- .20
						descText <- "20%"
						desc <- subtotalT*(.20)
						total <- subtotalT-desc
					SiNo
						total <- subtotalP+subtotalR
					FinSi
				FinSi
			FinSi
		SiNo
			Escribir 'El subtotal es de: ', subtotalT, ' USD'
			Escribir 'El descuento es de: ', descText
			Escribir 'Su total es de: ', total, ' USD'
			Escribir 'Gracias por su preferencia!!!'
		FinSi
	Hasta Que add='no'
FinAlgoritmo
