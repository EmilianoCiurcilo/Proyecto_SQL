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