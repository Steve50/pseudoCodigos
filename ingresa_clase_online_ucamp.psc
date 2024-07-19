Algoritmo ingresa_clase_online_ucamp
	Escribir 'Tienes luz?'
	luz <- ''
	Leer luz
	Si luz=='si' Entonces
		Repetir
			Escribir 'Tienes un equipo?'
			equi <- ''
			Leer equi
			Si equi=='si' Entonces
				Repetir
					Escribir 'Enciende el equipo?'
					start <- ''
					Leer start
					Escribir 'Tienes internet'
					inter <- ''
					Leer inter
					Si inter=='si' Entonces
						Repetir
							Escribir 'Ya tienes los accesos?'
							access <- ''
							Leer access
							Si access=="si" Entonces
								Escribir "Ingresa a la plataforma TEAMS"
							SiNo
								Escribir 'Ponte en contacto con Exito Estudiantil'
							FinSi
						Hasta Que access=='si'
						Repetir
							Escribir 'Ya es hora?'
							hour <- ''
							Leer hour
							Escribir 'Conectate'
						Hasta Que hour=='si'
					SiNo
						Repetir
							Escribir 'El problema es local?'
							prob <- ''
							Leer prob
							Repetir
								Escribir 'Esta conectado el modem?'
								conected <- ''
								Leer conected
								Si conected=='si' Entonces
									Escribir 'Llama al tecnico'
								SiNo
									Escribir 'Conectalo'
								FinSi
							Hasta Que conected=='si'
						Hasta Que prob=='no'
					FinSi
				Hasta Que start=='si'
			SiNo
				Escribir 'puedes conseguir uno'
			FinSi
		Hasta Que equi=='si'
	SiNo
		Escribir 'Puedes ver la grabacion en cuanto llegue la luz'
	FinSi
FinAlgoritmo
