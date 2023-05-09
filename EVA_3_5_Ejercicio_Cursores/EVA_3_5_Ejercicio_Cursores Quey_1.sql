delimiter //
create function generar_rfc(apellido_pat varchar(50), apellido_mat varchar(50), nombre varchar(50), fecha_nac date)
returns varchar(20) deterministic 
begin
	declare let_nom varchar(1);
    declare let_ap varchar(2);
    declare let_am varchar(1);
    declare annio int;
    declare mes int;
    declare dia int;
    declare clave varchar(20);
    set let_nom = substring(nombre, 1, 1);
    set let_aP = substring(ap_pat, 1, 1);
	if ap_mat = '' then
		set let_am = 'X';
	else
		set let_am = substring(ap_mat, 1, 1);
	end if;
    set annio = year(fecha_nac);
    set mes = month(fecha_nac);
    set dia = day(fecha_nac);
    set clave = concat(let_ap, let_am, let_nom, annio, mes, dia);
    return clave;
end //
delimiter ;