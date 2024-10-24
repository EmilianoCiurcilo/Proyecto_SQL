DEMTECH
Venta de Hardware de PC

Esta Aplicacion llevara a cabo el control de datos de nuestros clientes y de la venta de nuestros productos.
Cada Cliente tendra un numero asignado como ID para identificar sus datos con mayor facilidad, ademas les pediremos que ingresen sus datos personales como nombre, apellido y correo para facilitar el contacto con ellos y su domicilio para poder efectuar el envio del producto.
Cada Producto estara distribuido segun su categoria, por ejemplo (Placa de video, Procesador, Mouse, Teclado, Monitor, etc.) y
por su precio, segun sea de mayor o menor valor.
Cada producto tendra su descripcion detallando el mismo para facilitar la busqueda.

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

Para esta entrega del proyecto actualice algunas tablas, les agregue algunos campos y funciones. Realice importancion de datos mediante archivo csv, los dos adjuntos en el repositorio.
El Objetivo de la entrega es incorporar Vistas, Funciones, Stored Procedures y Triggers.

Comenzando por las vistas:
Incorpore 3 Vistas.

La primera es una Vista de Envios. Esta muestra el Nombre, Apellido y Direccion del cliente. La funcionalidad de esta vista sera entregarla al nuestra distribuidora para que al cliente le llegue su pedido como corresponde.

La segunda es una vista de productos de bajo stock. Cuando tengamos menos de 3 productos de stock esta vista nos mostrara el producto que estariamos necesitando para el proximo ingreso a la empresa.

La tercera es una vista de total de ventas por cliente. Esta vista nos sera util para saber quienes son nuestros clientes mas fieles y proximamente otorgarles descuentos.

En las Funciones solo pude integrar una funcion, esta calcula el total de una venta, ingresando el id de la venta, esta automaticamente calculara el total del producto multiplicada su cantidad. (Tuve un problema con las tablas y para que funcione hay que hardcodear un solo valor en la tabla ventas_productos)

Pasando con los SP, pude incorporar dos SP para esta entrega.
El primero sirve para insertar un nuevo producto a la tabla productos. (Aca tambien tuve un problema ya que id_categoria no es AI y hay que hardcodearlo, no se porque no me toma el valor de la tabla categorias)

El segundo SP inserta una nueva venta, pasandole el id del cliente y el monto de lo que gasto, ademas genera un nuevo id de venta que me servira mas adelante para hacer una tabla de facturas.

Finalizando integre un Trigger que actualiza el stock automaticamente de la tabla venta_productos.