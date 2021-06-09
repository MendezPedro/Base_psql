DROP DATABASE Post
-- Post
CREATE DATABASE Post;
\c Post

    create table post(
        id int,
        nombre varchar(20),
        fecha date,
        contenido varchar(50),
        descripcion varchar(50),
    primary key (id));


insert into post(
id, nombre, fecha, contenido, descripcion)
values(1, 'Pamela', now(), 'El primer post de Pamela', 'Hola soy Pamela');

insert into post(
id, nombre, fecha, contenido, descripcion)
values(2, 'Pamela', now(), 'El segundo post de Pamela', 'Chao soy Pamela');

insert into post(
id, nombre, fecha, contenido, descripcion)
values(3, 'Carlos', now(), 'El primer post de Carlos', 'Hola soy Carlos');
rodrigo=# alter table post
rodrigo-# add titulo varchar(20);

update post set titulo = 'Titulo 1' where id = 1;
update post set titulo = 'Titulo 2' where id = 2;
update post set titulo = 'Titulo 3' where id = 3;

insert into post(
id, nombre, fecha, contenido, descripcion) values ( 4 , 'Pedro' , now() , 'El promer post de pedro', );

update post set titulo = 'titulo 4' where id = 4;

insert into post(
id, nombre, fecha, contenido, descripcion) values ( 5 , 'Pedro' , now() , 'El segundo post de pedro', ' titulo 5 ' );

delete from post where nombre = 'Carlos';

insert into post(id, nombre, fecha, contenido, descripcion, titulo)
rodrigo-# values(6, 'Carlos', now(), 'El segundo post de Carlos', 'Volví', 'Titulo 6');


--Comentarios

create table comentarios(
rodrigo(# id int, fecha date, hora time, contenido varchar(30), foreign key (id) references post(id));

insert into comentarios(id, fecha, hora, contenido)
values(1, now(), current_time, 'Comentario 1er post Pamela');

insert into comentarios(id, fecha, hora, contenido)
values(2, now(), current_time, 'Comentario 2 Pamela');

insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 1 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 2 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 3 Carlos');
insert into comentarios(id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 4 Carlos');


insert into post(
id, nombre, fecha, contenido, descripcion) values ( 7 , 'Margarita' , now() , 'post de Margarita', ' titulo 7' );

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 1 margarita');

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 2 margarita');

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 3 margarita');

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 4 margarita');

insert into comentarios(id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 5 margarita');