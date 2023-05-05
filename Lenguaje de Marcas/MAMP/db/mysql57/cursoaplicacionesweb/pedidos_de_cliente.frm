TYPE=VIEW
query=select `cursoaplicacionesweb`.`usuarios`.`nombre` AS `Nombredel usuario`,`cursoaplicacionesweb`.`usuarios`.`apellidos` AS `Apellidos del usuario`,`cursoaplicacionesweb`.`usuarios`.`email` AS `Email del usuario`,`cursoaplicacionesweb`.`pedidos`.`cantidad` AS `Cantidad de producto pedido`,`cursoaplicacionesweb`.`gestion`.`nombre` AS `Producto comprado`,`cursoaplicacionesweb`.`gestion`.`precio` AS `Precio del producto por unidad`,(`cursoaplicacionesweb`.`pedidos`.`cantidad` * `cursoaplicacionesweb`.`gestion`.`precio`) AS `Subtotal` from ((`cursoaplicacionesweb`.`pedidos` left join `cursoaplicacionesweb`.`usuarios` on((`cursoaplicacionesweb`.`pedidos`.`idusuario` = `cursoaplicacionesweb`.`usuarios`.`Identificador`))) left join `cursoaplicacionesweb`.`gestion` on((`cursoaplicacionesweb`.`pedidos`.`idproducto` = `cursoaplicacionesweb`.`gestion`.`Identificador`)))
md5=8107c20f7002ac9881087315c89544a2
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2022-09-28 10:54:34
create-version=1
source=SELECT\n\nusuarios.nombre AS "Nombredel usuario",\nusuarios.apellidos AS "Apellidos del usuario",\nusuarios.email AS "Email del usuario",\n\npedidos.cantidad AS "Cantidad de producto pedido",\ngestion.nombre AS "Producto comprado",\ngestion.precio AS "Precio del producto por unidad",\n\npedidos.cantidad*gestion.precio AS "Subtotal"\n\nFROM pedidos\nLEFT JOIN usuarios\nON pedidos.idusuario = usuarios.Identificador\n\nLEFT JOIN gestion\nON pedidos.idproducto = gestion.Identificador
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cursoaplicacionesweb`.`usuarios`.`nombre` AS `Nombredel usuario`,`cursoaplicacionesweb`.`usuarios`.`apellidos` AS `Apellidos del usuario`,`cursoaplicacionesweb`.`usuarios`.`email` AS `Email del usuario`,`cursoaplicacionesweb`.`pedidos`.`cantidad` AS `Cantidad de producto pedido`,`cursoaplicacionesweb`.`gestion`.`nombre` AS `Producto comprado`,`cursoaplicacionesweb`.`gestion`.`precio` AS `Precio del producto por unidad`,(`cursoaplicacionesweb`.`pedidos`.`cantidad` * `cursoaplicacionesweb`.`gestion`.`precio`) AS `Subtotal` from ((`cursoaplicacionesweb`.`pedidos` left join `cursoaplicacionesweb`.`usuarios` on((`cursoaplicacionesweb`.`pedidos`.`idusuario` = `cursoaplicacionesweb`.`usuarios`.`Identificador`))) left join `cursoaplicacionesweb`.`gestion` on((`cursoaplicacionesweb`.`pedidos`.`idproducto` = `cursoaplicacionesweb`.`gestion`.`Identificador`)))
