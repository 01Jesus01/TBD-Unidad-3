delimiter //
create procedure actualizar_rfc()
begin
	declare ap varchar(50);
    declare am varchar(50);
    declare f_nac date;
    declare mi_rfc varchar(20);
    declare datos_personas cursor for
		select id, nombre, apellido_pat, apellido_mat, fecha_nac from personas;
	declare continue handler for NOT FOUND set terminar = true;
    open datos_personas;
    datos: loop
		fetch datos_personas into clave, nom, ap, am, f_nac;
        select generar_rfc(nom, ap, am, f_nac) into mi_rfc;
        update personas
        set clave_rfc = mi_rfc
        where id = clave;
        if terminar = true then
			leave datos;
		end if;
	end loop datos;
    close datos_personas;
end //
delimiter ;