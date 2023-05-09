delimiter //
create procedure cantidad_actor(in cant int)
begin
	select count(*) into cant from actor;
end//
delimiter ;