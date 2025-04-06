Algoritmo SistemaCostosJoyeria
	//Definici�n constantes
	Definir DCTO_CUPON, DCTO10, DCTO20, DCTO30, IVA, PESOPAQUETE, ENVIONORTE, ENVIOCENTRAL, ENVIOAUSTRAL como Real
	DCTO_CUPON <- 0.20;
	DCTO10 <- 0.10
	DCTO20 <- 0.20
	DCTO30 <- 0.30
	IVA <- 0.19
	PESOPAQUETE <- 20
	ENVIONORTE <- 5400
	ENVIOCENTRAL <- 2900
	ENVIOAUSTRAL <- 4300
	
	//Definici�n constantes
	Definir nombreJoya, codigodcto, CUPON1 Como cadena 
	Definir precioUnitario, cantidad, subtotal, descuento, totalIva, total, totalconEnvio, totalFinal Como Real
	
	//Solicitar datos al usuario
	Escribir "Ingrese nombre de la joya que desea comprar: "
	Leer nombreJoya
	Escribir "Ingrese el valor de la joya que desea comprar: "
	Leer precioUnitario
	Escribir "Favor ingrese cantidad del producto a comprar: "
	Leer cantidad
	Escribir "Favor ingrese si posee un c�digo de descuento: "
	Leer codigodcto
	
	//Calcular el subtotal de la compra y establecer c�digo aplicable
	subtotal <- precioUnitario * cantidad
	CUPON1 <- "REGALO"
	
	//Proceso de aplicaci�n de descuento por codigodcto
	Si codigodcto = CUPON1 Entonces
		Escribir "Felicidades! C�digo v�lido por 20% de descuento"
		Leer codigodcto
	SiNo
		Escribir "Cup�n no aplicable"
	FinSi
FinAlgoritmo
