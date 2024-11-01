DEMTECH
Venta de Hardware de PC

Esta Aplicacion llevara a cabo el control de datos de nuestros clientes y de la venta de nuestros productos.
Cada Cliente tendra un numero asignado como ID para identificar sus datos con mayor facilidad, ademas les pediremos que ingresen sus datos personales como nombre, apellido y correo para facilitar el contacto con ellos y su domicilio para poder efectuar el envio del producto.
Cada Producto estara distribuido segun su categoria, por ejemplo (Placa de video, Procesador, Mouse, Teclado, Monitor, etc.) y
por su precio, segun sea de mayor o menor valor.
Cada producto tendra su descripcion detallando el mismo para facilitar la busqueda.


PRIMERA ENTREGA

Listado de Tablas:

Tabla productos:
. Contiene la informacion de cada producto como su nombre, descripcion y precio.
. Atributos: id_producto, nombre, descripcion, precio.

Tabla cliente:
. Almacena la informacion de cada cliente como su nombre, apellido, correo y domicilio.
. Atributos: id_cliente, nombre, apellido, correo, domicilio.

Tabla categoria:
. Divide los productos segun su categoria para una mayor organizacion en la base de datos.
. Atributos: id_categoria, nombre.

Tabla ventas:
. Almacena toda la informacion de una venta como que producto se vendio a que cliente y en que fecha fue.
. Atributos: id_ventas, id_cliente, id_producto, fecha.


SEGUNDA ENTREGA

Para esta entrega del proyecto actualice algunas tablas, les agregue algunos campos y funciones. Realice importancion de datos mediante archivo csv, los dos adjuntos en el repositorio. (clientes.csv para la tabla clientes, productos.csv para la tabla productos, categorias para la tabla categorias.)
El Objetivo de la entrega es incorporar Vistas, Funciones, Stored Procedures y Triggers.

Comenzando por las vistas:
Incorpore 3 Vistas.

La primera es una Vista de Envios. Esta muestra el Nombre, Apellido y Direccion del cliente. La funcionalidad de esta vista sera entregarla a nuestra distribuidora para que al cliente le llegue su pedido como corresponde.

La segunda es una vista de productos de bajo stock. Cuando tengamos menos de 3 productos de stock esta vista nos mostrara el producto que estariamos necesitando para la proxima reposicion de stock de la empresa.

La tercera es una vista de total de ventas por cliente. Esta vista nos sera util para tener mayor control e informacion de que cliente nos compro un producto y cuanto abono.

Trabajando con las Funciones pude integrar 2:
La primer Funcion calcula el total de una venta, toma como parametros los datos de las tablas de ventas y de ventas_productos y los multiplica para tener una mayor precision en la suma total del precio de los productos. Solo debemos Pasarle como parametro en la ejecucion el ID de la venta que queremos sumar.

La segunda Funcion es un simple buscador de productos, pasandole el ID del producto debe arrojar el nombre de tal producto. (En el Script esta aclarado como deberia funcionar pero no pude resolverlo)

Pasando con los SP, pude incorporar 3 SP para esta entrega:
El primero sirve para insertar un nuevo producto a la tabla productos. Solo debemos pasarle como parametros el nombre, su descripcion, el precio al que compramos el producto osea precio_compra, el stock que disponemos y el id de la categoria que pertenece.

El segundo SP inserta los productos recien vendidos y su cantidad, para agregar los datos a la tabla debemos pasarle un id de venta, el id del producto y la cantidad.

El tercer SP inserta el proceso final de una venta, para ello debemos pasarle como datos el id del cliente y automaticamente nos generara un id de venta y nos dara el monto total que el cliente debe pagar.

Para finalizar integre un Trigger que actualiza el stock automaticamente de la tabla productos despues de finalizar una venta. Este nos servira como auditoria para tener mayor precision y control en nuestro stock de productos.