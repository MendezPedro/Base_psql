drop database post
--post
CREATE DATABASE Post;
\c Post;
create table post(id int, nombre varchar(20), fecha date, contenido varchar(50), descripcion varchar(50), primary key(id));
-- en la id se puede usar el "serial" para omitir el escribir el numero

insert into post(id, nombre, fecha, contenido, descripcion) values(1, 'Pamela', now(), 'El primer post de Pamela', 'Hola soy Pamela');

insert into post(id, nombre, fecha, contenido, descripcion) values(2, 'Pamela', now(), 'El segundo post de Pamela', 'Chao soy Pamela');

insert into post(id, nombre, fecha, contenido, descripcion) values(3, 'Carlos', now(), 'El primer post de Carlos', 'Hola soy Carlos');

alter table post
add titulo varchar(20);

update post set titulo = 'Titulo 1' where id = 1;
update post set titulo = 'Titulo 2' where id = 2;
update post set titulo = 'Titulo 3' where id = 3;

insert into post(id, nombre, fecha, contenido, descripcion, titulo) values(5, 'Pedro', now(), 'El primer post de Pedro', 'hola soy Pedro', 'Titulo 4');

insert into post(id, nombre, fecha, contenido, descripcion, titulo) values(5, 'Pedro', now(), 'El segundo post de Pedro', 'Chao soy Pedro', 'Titulo 5');

delete from post where nombre = 'Carlos';

insert into post(id, nombre, fecha, contenido, descripcion, titulo) values(6, 'Carlos', now(), 'El segundo post de Carlos', 'Volví', 'Titulo 6');