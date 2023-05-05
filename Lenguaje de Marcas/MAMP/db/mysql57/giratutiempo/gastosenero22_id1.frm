TYPE=VIEW
query=select sum(`giratutiempo`.`kakebo`.`gasto`) AS `Total` from `giratutiempo`.`kakebo` where (`giratutiempo`.`kakebo`.`idUsuario` = 1)
md5=f61b9c5b197d6543c15f0cdfcc770caa
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2023-01-19 10:17:55
create-version=1
source=SELECT SUM(gasto) FROM `Kakebo` WHERE idUsuario = 1
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select sum(`giratutiempo`.`kakebo`.`gasto`) AS `Total` from `giratutiempo`.`kakebo` where (`giratutiempo`.`kakebo`.`idUsuario` = 1)
