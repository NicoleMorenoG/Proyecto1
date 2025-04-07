Algoritmo SistemaCostosJoyeria
    //Entrada Definici�n constantes
    Definir DCTO_CUPON, DCTO_CANTIDAD, IVA, PESOUNIDADPRODUCTO, ENVIONORTE, ENVIOCENTRO, ENVIOSUR como Real
    DCTO_CUPON <- 0.20
    DCTO_CANTIDAD <- 0.10
    IVA <- 0.19 //Impuesto
    PESOUNIDADPRODUCTO <- 300 //300 pesos por cada producto comprado se suman al valor base de env�o
    ENVIONORTE <- 5400 //Valores base de env�o
    ENVIOCENTRO <- 2900
    ENVIOSUR <- 4300
	
    //Definici�n variables
    Definir nombreJoya, codigodcto, CUPON1, destino Como cadena
    Definir precioUnitario, cantidad, subtotal, descuentoCupon, descuentoCantidad, totalDescuento, subtotalConDescuento, totalIva, costoEnvio, totalFinal Como Real
    Definir calculodestino Como cadena
    Dimension calculodestino[3]
    calculodestino[1] <- "NORTE" //En mi configuracion de PSeInt parte en 1
    calculodestino[2] <- "CENTRO"
    calculodestino[3] <- "SUR"
    costoEnvio <- 0 //Inicia el contador en 0
    Definir destinoValido Como Logico //Este variable, es por si no se ingresa un destino valido.
	
    destinoValido <- Falso //Parte asumiento que es falso para que despu�s el bucle funcione hasta que sea verdadero
	
    //Solicitar datos al usuario
    Escribir "Ingrese nombre de la joya que desea comprar: "
    Leer nombreJoya
    Escribir "Ingrese el valor sin IVA de la joya que desea comprar: "
    Leer precioUnitario
    Escribir "Favor ingrese cantidad del producto a comprar: "
    Leer cantidad
    Escribir "Ingresar zona destino para el env�o del pedido en may�sculas (NORTE, CENTRO o SUR): "
    Leer destino
	
    // Validar el destino ingresado, para poder calcular el valor del costo de env�o.
    Mientras No destinoValido Hacer
        Para i <- 1 Hasta 3 Hacer
            Si calculodestino[i] = destino Entonces
                destinoValido <- Verdadero
                Segun destino Hacer
                    Caso "NORTE":
                        costoEnvio <- ENVIONORTE + cantidad * PESOUNIDADPRODUCTO
                    Caso "CENTRO":
                        costoEnvio <- ENVIOCENTRO + cantidad * PESOUNIDADPRODUCTO
                    Caso "SUR":
                        costoEnvio <- ENVIOSUR + cantidad * PESOUNIDADPRODUCTO
                FinSegun
            FinSi
        FinPara
        Si No destinoValido Entonces
            Escribir "Destino de env�o inv�lido. Por favor, ingrese NORTE, CENTRO o SUR."
            Escribir "Ingresar zona destino para el env�o del pedido en may�sculas (NORTE, CENTRO o SUR): "
            Leer destino // Volvemos a pedir el destino ya que se ingres� mal (as� evitamos que luego haya errores de c�lculo por destino inv�lido)
        FinSi
    FinMientras
	
    Escribir "Favor ingrese c�digo de descuento (si no lo tiene, dejar en blanco): "
    Leer codigodcto
	
	Escribir ".................................."
	
    //Calcular el subtotal de la compra. Luego definir palabra secreta cup�n.
    subtotal <- precioUnitario * cantidad
    CUPON1 <- "REGALO"
    descuentoCupon <- 0 // Inicializamos en 0
	
    //Proceso de aplicaci�n de descuento por codigodcto
    Si codigodcto = CUPON1 Entonces
        descuentoCupon <- subtotal * DCTO_CUPON
        Escribir "Felicidades! C�digo v�lido por 20% de descuento equivalente a $" descuentoCupon
    SiNo
        Escribir "Cup�n no aplicable"
    FinSi
	
    //Proceso descuento por cantidad, se aplica 10% despu�s que haya sido aplicado el descuento (en caso de haber).
    descuentoCantidad <- 0 // Inicializamos en 0
    Si cantidad >= 2 Entonces
        descuentoCantidad <- (subtotal - descuentoCupon) * DCTO_CANTIDAD
        Escribir "Descuento por cantidad es de $" descuentoCantidad
    SiNo
        Escribir "No hay descuentos aplicables por cantidad"
    FinSi
	
    // Calcular el subtotal con ambos descuentos
    subtotalConDescuento <- subtotal - descuentoCupon - descuentoCantidad
	
    // Calcular el IVA sobre el subtotal con descuentos
    totalIva <- subtotalConDescuento * IVA
	
    // Calcular el total final sumando el subtotal con IVA y el costo de env�o
    totalFinal <- subtotalConDescuento + totalIva + costoEnvio
	
    Escribir "El IVA por tus productos es de: $" totalIva
	Escribir "El costo de env�o a " destino " es de: $" costoEnvio
	Escribir ".................................."
    Escribir "TOTAL FINAL A PAGAR POR TU COMPRA ES DE ------> $" totalFinal
	Escribir ".................................."
	Escribir "MUCHAS GRACIAS POR TU COMPRA!!"

FinAlgoritmo