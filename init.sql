create database IF NOT EXISTS news;
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root';

CREATE TABLE IF NOT EXISTS news.article (
id int(11) unsigned NOT NULL AUTO_INCREMENT,
title varchar(150) NOT NULL,
body text NOT NULL,
create_at date,
updated_at date,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS news.users (
id int(11) unsigned NOT NULL AUTO_INCREMENT,
name varchar(50) NOT NULL,
email varchar(50) NOT NULL,
password varchar(255) NOT NULL,
is_super_user tinyint(1) NOT NULL DEFAULT 0,
active tinyint(1) NOT NULL DEFAULT 1,
PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- javascritp   http://www.purelogics.net/blog/wp-content/uploads/2019/01/javascript.png

-- python       https://babulnokrek.com/wp-content/uploads/2018/11/Python.png

-- java            https://images.techhive.com/images/article/2013/02/oracle_java-100026145-orig.jpg
-- html/css        https://www.seoclerk.com/pics/514545-1UKNne1487866218.jpg

-- c++         https://hackr.io/blog/wp-content/uploads/2018/07/c-uses-and-applications@2x-1280x800.png

alter table news.article add column image varchar(200);

update news.article set image = 'http://www.purelogics.net/blog/wp-content/uploads/2019/01/javascript.png'
where title = 'Javascript';
update news.article set image = 'https://babulnokrek.com/wp-content/uploads/2018/11/Python.png'
where title = 'Python';
update news.article set image = 'https://images.techhive.com/images/article/2013/02/oracle_java-100026145-orig.jpg'
where title = 'Java';
update news.article set image = 'https://www.seoclerk.com/pics/514545-1UKNne1487866218.jpg'
where title = 'HTML/CSS';

update news.article set image = 'https://hackr.io/blog/wp-content/uploads/2018/07/c-uses-and-applications@2x-1280x800.png'
where title = 'C#/C++';

-- insert into news.article (title,body,create_at,updated_at)
-- values ('Javascript','Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
-- Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
-- when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
-- It has survived not only five centuries, but also the leap into electronic typesetting, 
-- remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
-- containing Lorem Ipsum passages, and more recently with desktop
-- publishing software like Aldus PageMaker including versions of Lorem Ipsum',now(),now()),
-- ('Python','Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
-- Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
-- when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
-- It has survived not only five centuries, but also the leap into electronic typesetting, 
-- remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
-- containing Lorem Ipsum passages, and more recently with desktop
-- publishing software like Aldus PageMaker including versions of Lorem Ipsum',now(),now()),
-- ('Java','Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
-- Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
-- when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
-- It has survived not only five centuries, but also the leap into electronic typesetting, 
-- remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
-- containing Lorem Ipsum passages, and more recently with desktop
-- publishing software like Aldus PageMaker including versions of Lorem Ipsum',now(),now()),
-- ('HTML/CSS','Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
-- Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
-- when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
-- It has survived not only five centuries, but also the leap into electronic typesetting, 
-- remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
-- containing Lorem Ipsum passages, and more recently with desktop
-- publishing software like Aldus PageMaker including versions of Lorem Ipsum',now(),now()),
-- ('C#/C++','Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
-- Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, 
-- when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
-- It has survived not only five centuries, but also the leap into electronic typesetting, 
-- remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets 
-- containing Lorem Ipsum passages, and more recently with desktop
-- publishing software like Aldus PageMaker including versions of Lorem Ipsum',now(),now());
