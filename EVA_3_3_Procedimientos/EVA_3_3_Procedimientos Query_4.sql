delimiter //
create procedure agregar_actor(in actorid int, in fname varchar(50), in lname varchar (50))
begin 
	insert into actor(actor_id, first_name, last_name)
    value(actorid, fname, lname);
end//
delimiter ;