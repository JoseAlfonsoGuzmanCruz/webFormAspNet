using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _02_Crud_webForm_AspNet_4_7_PaginaMaestra.leer_para_entender_la_base_de_datos
{
    public class Class1
    {

		//en el servidor sqlServer crea la base de datos y su respectiva tabla con procedimientos almacenados
		/*
		create database crud_web_form

use crud_web_form

create table usuario(
	id_usuario int identity(1,1),
	nombre varchar(50),
	edad int,
	correo varchar(60),
	fecha_nacimiento date
	);
--cargar informacion en Index
create procedure sp_load
	as begin
	select* from usuario
end

--crud: create, read, update, delete

create procedure sp_create
	@nombre varchar(50),
	@edad int,
	@correo varchar(60),
	@fecha date
	as begin
	insert into usuario values(@nombre, @edad, @correo, @fecha)
end

create procedure sp_read
@id int
as begin
select* from usuario where id_usuario=@id
end

create procedure sp_update
	@id int,
	@nombre varchar(50),
	@edad int,
	@correo varchar(60),
	@fecha date
	as begin
	update usuario set nombre=@nombre, edad=@edad, correo=@correo, fecha_nacimiento=@fecha
	where id_usuario=@id
	end

drop procedure sp_update

	create procedure sp_delete
	@id int
	as begin
	delete from usuario where id_usuario = @id
	end


--solucionando el update, solo es una prueba no tienen nada que ver con el CRUD
--me confundi con el nombre de la base de datos creada en el servidor 
--(solucion) borre el procedimiento almacenado, asigne el nombre correcto y ejecute el procedimiento de nuevo
insert into usuario(nombre, edad, correo, fecha_nacimiento) values('karla',25,'karla12bf@gmail.com','12-08-1996')
select* from usuario

update usuario set nombre='karlaUpdate', edad=27, correo='karla12Update@gmail.com', fecha_nacimiento='12-08-1994' where id_usuario = 11;
		*/

	}
}