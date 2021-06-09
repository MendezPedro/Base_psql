CREATE DATABASE Posts;

create table posts(id int, nombre varchar(20), fecha date, contenido varchar(50), descripcion varchar(50), primary key(id));


insert into post(id, nombre, fecha, contenido, descripcion) values(1, 'Pamela', now(), 'El primer post de Pamela', 'Hola soy Pamela');

insert into post(id, nombre, fecha, contenido, descripcion) values(2, 'Pamela', now(), 'El segundo post de Pamela', 'Chao soy Pamela');

insert into post(id, nombre, fecha, contenido, descripcion) values(3, 'Carlos', now(), 'El primer post de Carlos', 'Hola soy Carlos');

alter table post
add titulo varchar(20);

update post set titulo = 'Titulo 1' where id = 1;
update post set titulo = 'Titulo 2' where id = 2;
update post set titulo = 'Titulo 3' where id = 3;

insert into post(
id, nombre, fecha, contenido, descripcion, titulo)
values(5, 'Pedro', now(), 'El primer post de Pedro', 'hola soy Pedro', 'Titulo 4');

insert into post(
id, nombre, fecha, contenido, descripcion, titulo) values(5, 'Pedro', now(), 'El segundo post de Pedro', 'Chao soy Pedro', 'Titulo 5');

delete from post where nombre = 'Carlos';

insert into post(id, nombre, fecha, contenido, descripcion, titulo) values(6, 'Carlos', now(), 'El segundo post de Carlos', 'Volví', 'Titulo 6');

-- \i nombre_archivo.sql -- llamo al archivo dentro de la carpeta para ejecutarlo

-- segunda tarea
create table comentarios(
rodrigo(# id int, fecha date, hora time, contenido varchar(30), foreign key (id) references post(id));

insert into comentarios(id, fecha, hora, contenido)
values(1, now(), current_time, 'Comentario al 1er post Pamela');

insert into comentarios(id, fecha, hora, contenido)
values(2, now(), current_time, 'Comentario al 2 post de Pamela');

insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 1 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 2 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 3 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 4 Carlos');

insert into post (id, nombre, fecha, contenido, descripcion, titulo)
values(7, 'Margarita', now(), 'El primer post de Margarita', 'Hola soy Margarita', 'Titulo 7');

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 1 para Margarita');
insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 2 para Margarita');
insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 3 para Margarita');
insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 4 para Margarita');
insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 5 para Margarita');
