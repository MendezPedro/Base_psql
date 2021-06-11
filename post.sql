\c postgres
--elimino data y tablas preexistentes
drop database posts;
--creo database posts
create database posts;
-- pon los datos en la base de datos
\c posts 
--creo tabla post
create table post(
    id SERIAL, 
    nombre varchar(20), 
    fecha date, 
    contenido varchar(50), 
    descripcion varchar(50), 
    primary key(id)
);
-- en la id se puede usar el "serial" para omitir el escribir el numero
select * from post; --consultamos como quedo la tabla


--inserto 3 post
insert into post(
nombre, fecha, contenido, descripcion) 
values('Pamela', now(), 'El primer post de Pamela', 'Hola soy Pamela');

insert into post(
nombre, fecha, contenido, descripcion) 
values('Pamela', now(), 'El segundo post de Pamela', 'Chao soy Pamela');

insert into post(
nombre, fecha, contenido, descripcion) 
values('Carlos', now(), 'El primer post de Carlos', 'Hola soy Carlos');



-- agrego la columna titulo
alter table post
add titulo varchar(20);

select * from post; --consultamos como quedo la tabla

--agrego titulos a los post ya ingresados
update post set titulo = 'Titulo 1' where id = 1;
update post set titulo = 'Titulo 2' where id = 2;
update post set titulo = 'Titulo 3' where id = 3;

-- agrego 2 post nuevos
insert into post(
nombre, fecha, contenido, descripcion, titulo) 
values('Pedro', now(), 'El primer post de Pedro', 'hola soy Pedro', 'Titulo 4');

insert into post(
nombre, fecha, contenido, descripcion, titulo) 
values('Pedro', now(), 'El segundo post de Pedro', 'Chao soy Pedro', 'Titulo 5');

select * from post; --consultamos como quedo la tabla

--elimino el post de carlos
delete from post where nombre = 'Carlos';

-- inserto un post de carlos
insert into post(
nombre, fecha, contenido, descripcion, titulo) 
values('Carlos', now(), 'El segundo post de Carlos', 'Volví', 'Titulo 6');

select * from post; --consultamos como quedo la tabla


create table comentarios(
    id SERIAL, 
    post_id int,
    fecha date, 
    hora time, 
    contenido varchar(30), 
    primary key(id),
    FOREIGN KEY (post_id) references post(id)
);

select * from comentarios; --consultamos como quedo la tabla

-- post de pamela
insert into comentarios(post_id, fecha, hora, contenido)
values(1, now(), current_time, 'Comentario 1er post Pamela');
insert into comentarios(post_id, fecha, hora, contenido)
values(2, now(), current_time, 'Comentario 2 Pamela');

--post de carlos
insert into comentarios(post_id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 1 Carlos');
insert into comentarios(post_id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 2 Carlos');
insert into comentarios(post_id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 3 Carlos');
insert into comentarios(post_id, fecha, hora, contenido)
values(6, now(), current_time, 'Comentario 4 Carlos');

-- post de margarita
insert into post(
id, nombre, fecha, contenido, descripcion,titulo) 
values ( 7 , 'Margarita' , now() , 'post de Margarita','margarita', ' titulo 7' );

select * from comentarios; --consultamos como quedo la tabla

insert into comentarios(post_id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 1 para Margarita');
insert into comentarios(post_id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 2 para Margarita');
insert into comentarios(post_id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 3 para Margarita');
insert into comentarios(post_id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 4 para Margarita');
insert into comentarios(post_id, fecha, hora, contenido)
values(7, now(), current_time, 'Comentario 5 para Margarita');

select * from post; --consultamos como quedo la tabla
select * from comentarios; --consultamos como quedo la tabla