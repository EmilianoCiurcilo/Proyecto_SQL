# DEMTECH
## Venta de Hardware de PC

Esta Aplicacion llevara a cabo el control de los datos de nuestros clientes, proveedores, productos, sus categorias y marcas, su stock y un mayor control sobre nuestras ventas.
Cada Cliente tendra un numero asignado como ID para identificar sus datos con mayor facilidad, ademas les pediremos que ingresen sus datos personales como nombre, apellido y correo para facilitar el contacto con ellos y su domicilio para poder efectuar el envio del producto.
Cada Producto estara distribuido segun su categoria y Marca (Asignados por un ID) por ejemplo (Placa de video ASUS, Procesador AMD, Mouse RAZER, Teclado LOGITECH, Monitor SAMSUNG, etc.) y por su precio, segun sea de mayor o menor valor.
Cada producto tendra su descripcion detallando el mismo para facilitar la busqueda.
Cada uno de los productos tiene un stock unico y limitado.
Para controlar nuestro ingreso de productos tenemos una tabla de proveedores que almacena toda la informacion de cada proveedor. Su nombre, el contacto; segun de que marca sea, su numero de telefono y el email y direccion del deposito de cada empresa.
Tenemos una tabla de Facturas que esta nos servira para tener total control sobre nuestras ventas, esta tabla almacena informacion como el ID de la venta, la fecha de esa venta, el monto total y el metodo de pago.
Con esta Aplicacion resolvemos una problematica que es tener datos limpios, ordenados y estructurados en diferentes tablas. Esto nos ayuda a obtener datos precisos y mas rapido de lo normal.

## PROYECTO FINAL
> [!IMPORTANT]
> ### Guia de Instalacion

* Importar desde MySQL el archivo .sql de la carpeta INSTALACION.
* Importar desde MySQL o Copiar el ScriptSQL.sql de la carpeta INSTALACION.

> [!TIP]
> ### Guia de Creacion de Tablas

* Verificar que las tablas esten en el orden que fueron exportadas.

> [!TIP]
> ### Guia de Insercion e Importacion de Datos

1. Insertar datos en las tablas **MARCAS** y **PROVEEDORES** (Estan escritos en el SCRIPT solo hay que ejecutarlos).
2. Importar datos de los archivos .csv adjuntados en la carpeta IMPORTACION.
    1. Importar en la tabla **CATEGORIAS**.
    2. Importar en la tabla **PRODUCTOS**.
    3. Importar en la tabla **CLIENTES**.

> [!WARNING]
> Formatear correctamente los campos en las _Importaciones_. En **CATEGORIAS** el nombre, en **PRODUCTOS** el precio_compra y en **CLIENTES** el correo.

> [!TIP]
> ### Guia de Uso

#### VISTAS
* datos_envios: Muestra los datos necesarios para realizar un envio a su domicilio. (Nombre, Apellido, Domicilio. Datos obtenidos de la tabla *Clientes*)
* lista_productos: Muestra los datos simplificados de los productos para realizar una compra. (ID del producto, Nombre, Descripcion, Precio, Stock, Categoria. Datos obtenidos de las tablas *Productos* y *Categorias*)
* productos_bajo_stock: Muestra los productos que estan bajo de stock. En este caso los que esten por debajo de 3 unidades. (ID del producto, Categoria, Nombre, Stock. Datos obtenidos de las tablas *Productos* y *Categorias*)
* total_ventas_por_cliente: Muestra el historial de lo gastado por nuestros clientes. (ID del cliente, Nombre, Apellido, Total gastado. Datos obtenidos de las tablas *Productos*, *Categorias*, *Ventas* y *Ventas_productos*)

#### FUNCIONES
* calcular_total_venta: Calcula el total de una venta, multiplicando el precio de venta de un producto y su cantidad. (ID del producto, Precio de venta, Cantidad, ID de la venta. Datos obtenidos de las tablas *Productos* y *Ventas_productos*)
    > [!IMPORTANT]
    > - Para su funcionamiento se debe ingresar el ID de la venta de la tabla *Ventas_productos*.
* calcular_total_gastado_cliente: Calcula el total gastado por Cliente. (ID de la venta, ID del producto, ID del cliente, Cantidad, Precio de venta. Datos obtenidos de la tablas *Productos*, *Clientes*, *Ventas* y *Ventas_productos*)
    - Para su funcionamiento se debe ingresar el ID de un cliente.

#### STORED PROCEDURES
* insertar_venta: Inserta una venta que se le asigna a un Cliente en la tabla *Ventas*
    - Para su Funcionamiento se debe ingresar el ID del cliente al cual se le quiere asignar una venta y el valor total que debe pagar o Null en el caso que se quiera que lo calcule automaticamente.
    > [!IMPORTANT]
    > El primer Insert siempre tendra el id del cliente y un total de valor NULL ya que en esa fila se le esta asignando la venta. Al volver a ejecutar el Test podra ver que esta el ID del cliente con el total que debera abonar.
* insertar_venta_producto: Inserta una venta en la tabla *Ventas_productos*.
    > [!IMPORTANT]
    > Para que Funcione este SP debe haber minimo 1 registro en la tabla *Ventas*.
    - Para su funcionamiento se debe ingresar el siguiente ID de la venta que sigue en la tabla de **VENTAS** (**EJEMPLO:** Si se ejecuta el SP Ventas se hace un insert que AutoGenera el primer ID, el siguiente paso es ejecutar el SP de Ventas_productos con el ID que seguiria en la tabla ventas, en este caso seria '2', sino dara como resultado en 'total' = 'NULL'), el ID del producto vendido y la cantidad.
* insertar_factura: Inserta una Factura en la tabla *Facturas*.
    - Para su funcionamiento se debe ingresar el mismo ID que se utilizo en la tabla *Ventas_productos*, la fecha de emision y un metodo de pago.
* insertar_stock: Inserta Stock a un producto en la tabla *Stock*.
    - Para su funcionamiento de debe ingresar el ID del proveedor del cual compramos el producto, el ID del producto a cual se le quiere sumar el stock, la cantidad que se quiere sumar del producto, la fecha de ingreso y el ID de la marca que en este caso sera la misma que la del proveedor. 
    > [!TIP]
    > Utilizar el Test comentado u obtener los datos de la tabla *MARCAS*.
* insertar_producto: Inserta un nuevo producto en la tabla *Productos*.
    - Para su funcionamiento se debe ingresar el nombre del producto, su descripcion, el precio de compra, el stock inicial, el ID de su categoria y el ID de su marca.
    > [!TIP]
    > Utilizar el Test comentado u obtener los datos de las tablas *CATEGORIAS* y *MARCAS*.

#### TRIGGERS
* actualizar_stock_venta: Actualiza el Stock despues de una Venta. Al ejecutar una venta Actualiza la tabla *Productos* Restando "X" unidades segun la cantidad que se asigno en la venta. Este actualizara el campo Stock de la tabla *Productos*.
* actualizar_stock_ingreso: Actualiza el Stock despues de un ingreso en la tabla *Stock*. Al recibir un ingreso en la tabla *Stock* Aumentara "X" unidades segun la cantidad que se asigno. Este actualizara el campo Stock en la tabla *Productos*.

#### HERRAMIENTAS UTILIZADAS
- MYSQL: Codigo.
- DRAW.IO: DER.
- MOCKAROO: Generador de Datos.

## SEGUNDA ENTREGA

Para esta entrega del proyecto actualice algunas tablas, les agregue algunos campos y funciones. Realice importancion de datos mediante archivo csv, los dos adjuntos en el repositorio. (clientes.csv para la tabla clientes, productos.csv para la tabla productos, categorias para la tabla categorias.)
El Objetivo de la entrega es incorporar Vistas, Funciones, Stored Procedures y Triggers.

#### Comenzando por las vistas:
Incorpore 3 Vistas.

La primera es una Vista de Envios. Esta muestra el Nombre, Apellido y Direccion del cliente. La funcionalidad de esta vista sera entregarla a nuestra distribuidora para que al cliente le llegue su pedido como corresponde.

La segunda es una vista de productos de bajo stock. Cuando tengamos menos de 3 productos de stock esta vista nos mostrara el producto que estariamos necesitando para la proxima reposicion de stock de la empresa.

La tercera es una vista de total de ventas por cliente. Esta vista nos sera util para tener mayor control e informacion de que cliente nos compro un producto y cuanto abono.

#### Trabajando con las Funciones pude integrar 2:
La primer Funcion calcula el total de una venta, toma como parametros los datos de las tablas de ventas y de ventas_productos y los multiplica para tener una mayor precision en la suma total del precio de los productos. Solo debemos Pasarle como parametro en la ejecucion el ID de la venta que queremos sumar.

La segunda Funcion es un simple buscador de productos, pasandole el ID del producto debe arrojar el nombre de tal producto. (En el Script esta aclarado como deberia funcionar pero no pude resolverlo)

#### Pasando con los SP, pude incorporar 3 SP para esta entrega:
El primero sirve para insertar un nuevo producto a la tabla productos. Solo debemos pasarle como parametros el nombre, su descripcion, el precio al que compramos el producto osea precio_compra, el stock que disponemos y el id de la categoria que pertenece.

El segundo SP inserta los productos recien vendidos y su cantidad, para agregar los datos a la tabla debemos pasarle un id de venta, el id del producto y la cantidad.

El tercer SP inserta el proceso final de una venta, para ello debemos pasarle como datos el id del cliente y automaticamente nos generara un id de venta y nos dara el monto total que el cliente debe pagar.

#### Para finalizar integre un Trigger:
Este actualiza el stock automaticamente de la tabla productos despues de finalizar una venta. Este nos servira como auditoria para tener mayor precision y control en nuestro stock de productos.

## PRIMERA ENTREGA

### Listado de Tablas:

#### Tabla productos:
- Contiene la informacion de cada producto como su nombre, descripcion y precio.
- Atributos: id_producto, nombre, descripcion, precio.

#### Tabla cliente:
- Almacena la informacion de cada cliente como su nombre, apellido, correo y domicilio.
- Atributos: id_cliente, nombre, apellido, correo, domicilio.

#### Tabla categoria:
- Divide los productos segun su categoria para una mayor organizacion en la base de datos.
- Atributos: id_categoria, nombre.

#### Tabla ventas:
- Almacena toda la informacion de una venta como que producto se vendio a que cliente y en que fecha fue.
- Atributos: id_ventas, id_cliente, id_producto, fecha.