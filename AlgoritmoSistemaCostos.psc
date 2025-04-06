Algoritmo SistemaCostosJoyeria
	//Definición constantes
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
	
	//Definición constantes
	Definir nombreJoya, codigodcto, CUPON1 Como cadena 
	Definir precioUnitario, cantidad, subtotal, descuento, totalIva, total, totalconEnvio, totalFinal Como Real
	
	//Solicitar datos al usuario
	Escribir "Ingrese nombre de la joya que desea comprar: "
	Leer nombreJoya
	Escribir "Ingrese el valor de la joya que desea comprar: "
	Leer precioUnitario
	Escribir "Favor ingrese cantidad del producto a comprar: "
	Leer cantidad
	Escribir "Favor ingrese si posee un código de descuento: "
	Leer codigodcto
	
	//Calcular el subtotal de la compra y establecer código aplicable
	subtotal <- precioUnitario * cantidad
	CUPON1 <- "REGALO"
	
	//Proceso de aplicación de descuento por codigodcto
	Si codigodcto = CUPON1 Entonces
		Escribir "Felicidades! Código válido por 20% de descuento"
		Leer codigodcto
	SiNo
		Escribir "Cupón no aplicable"
	FinSi
FinAlgoritmo
