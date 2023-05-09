delimiter //
create procedure ultimo_actor()
returns int deterministic reads sql data
begin
	decalre actorid int;
    select max(actor_id) into actorid from actor;
    return actorid;
end//
delimiter ;