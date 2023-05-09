delimiter //
create procedure agregar_actor_2(in actorid int, in fname varchar(50), in lname varchar (50))
begin 
	declare actorid int;
    select ultimo_actor() into actorid;
    set actorid = actorid + 1;
    
	insert into actor(actor_id, first_name, last_name)
    value(actorid, fname, lname);
end//
delimiter ;