-- 1.Пусть в таблице users поля created_at и updated_at оказались незаполненными. 
-- Заполните их текущими датой и временем.

CREATE DATABASE users;
USE users;
    create table users(
    id int,
    name varchar(255),
    birthday_at VARCHAR(255),
    created_at VARCHAR(255),
    updated_at VARCHAR(255)
 );

INSERT INTO users (created_at, updated_at) VALUES (NOW(), NOW());


 --  2. Таблица users была неудачно спроектирована. 
 -- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались 
-- значения в формате 20.10.2017 8:10. Необходимо преобразовать поля к типу DATETIME, 
-- сохранив введённые ранее значения.

Сперва надо привести данные в формат DATETIME из строки:
 UPDATE users SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'); 
 UPDATE users SET updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %H:%i');
 
 Теперь надо поменять атрибут VARCHAR на DATETIME: 
 ALTER TABLE users MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP; 
 ALTER TABLE users MODIFY updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

 
 