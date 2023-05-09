create function regresa_mensaje(cade varchar(50))
returns varchar(100) deterministic
return concat("Hola",cade);