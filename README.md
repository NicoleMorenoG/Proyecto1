# Proyecto1

Algoritmo de Sistema de Costos Para Joyería 

Este código es un proyecto que se hizo para un Bootcamp de Desarrollo Web.
Como primer módulo estudiamos pseudocódigo con PSeInt.

En este código, puedes encontrar un sistema de Costos para un negocio, en este caso usé como ejemplo una joyería.
Sus funciones son:

-Aplicar dos tipos de descuentos, por código y por cantidad.
-Calcular impuestos sobre los productos (En este caso 19%, tomando como ejemplo la legislación chilena).
-Calcular costos de envío según destinos, cantidad y peso (En este caso usamos 3 destinos, peso fijo por unidad de prenda y cantidad dada por el cliente).
-Finalmente da el total a pagar tomando todo lo anterior en cuenta.

Para esto solicitamos al usuario:
-Nombre del producto
-Precio unitario (sin impuestos)
-Cantidad
-Destino escogido
-Se le solicita ingresar el código de descuento en caso de tenerlo

Para el código de descuento se usó una palabra secreta, en este caso usamos la palabra "REGALO", pero se puede reemplazar por otra en el mismo código. Este código aplica un 20% de descuento. La idea es que también eso se puede ir modificando en el código, para que no sea siempre el mismo.
El descuento por cantidad es de 10% desde 2 o más productos. Decidí que en caso que se combine con descuento de cupón, primero se aplicará el cupón y luego de tener el primer descuento aplicado, sobre ese monto se aplicará el segundo descuento. Teniendo la lógica de descuento sobre descuento, y no que se sumen paralelamente al monto inicial (Ya que en este caso sería más confuso y mayor el descuento, por lo que sería pérdida para la tienda).

En cuanto a la definición del costo de envío, se tomó un valor fijo por destino, en este caso: NORTE, CENTRO y SUR. (Pensando en Chile que tiene su zona norte, chile central y chile austral. Usé valores reales que tienen esos destinos para paquetes de tamaño pequeño como serían los de una joyería, basada en mi experiencia con mi empresa del mismo rubro). Y asigné un valor por peso por unidad de producto (tomando en cuenta un promedio de peso de diferentes productos de joyería y sus dimensiones). Así según la cantidad, la multiplicará por ese valor y sumará un monto al costo base. Como las joyas son elementos pequeños y caben muchos en una misma caja pequeña, el monto asignado a cada producto fue bajo.

Para poder hacer el cálculo del costo de envío hice un arreglo unidimensional, el cuál con un bucle debe ir revisando si el destino ingresado, corresponde a alguna de las palabras asignadas a cada caso. Y cada caso o destino, tiene una palabra (Cadena) asignada, con un valor base y cálculo asignado.

Como mencionaba más arriba, me gustaría destacar que en este código se puede trabajar cambiando fácilmente sus costantes paa adaptarlo ante posibles cambios de valores de envíos, agregar o cambiar destinos, cambiar el % de impuestos para adaptarlo a otros escenarios políticos/económicos, etc.

Finalmente puedo decir que a través de este ejercicio, he podido comprender los fundamentos de la lógica de programación y su aplicación en un escenario de negocio real.

Nicole Moreno.
@NicoleMorenoG
