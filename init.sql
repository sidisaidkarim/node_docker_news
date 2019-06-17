
create database IF NOT EXISTS news;
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root';
-- drop table news.article;

CREATE TABLE IF NOT EXISTS news.article (
id int(11) unsigned NOT NULL AUTO_INCREMENT,
title varchar(150) NOT NULL,
body text NOT NULL,
image varchar(200),
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



delete from news.article;
insert into news.article (title,body,create_at,updated_at)
values ('Javascript','JavaScript est un langage de programmation de scripts principalement employé dans les pages web interactives mais aussi pour les serveurs avec l`utilisation (par exemple) de Node.js. C`est un langage orienté objet à prototype, c`est-à-dire que les bases du langage et ses principales interfaces sont fournies par des objets qui ne sont pas des instances de classes, mais qui sont chacun équipés de constructeurs permettant de créer leurs propriétés, et notamment une propriété de prototypage qui permet d`en créer des objets héritiers personnalisés. En outre, les fonctions sont des objets de première classe. Le langage supporte le paradigme objet, impératif et fonctionnel. JavaScript est le langage possédant le plus large écosystème grâce à son gestionnaire de dépendances npm, avec environ 500 000 paquets en août 20174.
JavaScript a été créé en 1995 par Brendan Eich. Il a été standardisé sous le nom d`ECMAScript en juin 1997 par Ecma International dans le standard ECMA-262. Le standard ECMA-262 en est actuellement à sa 8e édition. JavaScript n`est depuis qu`une implémentation d`ECMAScript, celle mise en œuvre par la fondation Mozilla. L`implémentation d`ECMAScript par Microsoft (dans Internet Explorer jusqu`à sa version 9) se nomme JScript, tandis que celle d`Adobe Systems se nomme ActionScript.',now(),now()),
('Python','Python est un langage de programmation interprété, multi-paradigme et multiplateformes. Il favorise la programmation impérative structurée, fonctionnelle et orientée objet. Il est doté d`un typage dynamique fort, d`une gestion automatique de la mémoire par ramasse-miettes et d`un système de gestion d`exceptions ; il est ainsi similaire à Perl, Ruby, Scheme, Smalltalk et Tcl.
Le langage Python est placé sous une licence libre proche de la licence BSD8 et fonctionne sur la plupart des plates-formes informatiques, des smartphones aux ordinateurs centraux, de Windows à Unix avec notamment GNU/Linux en passant par macOS, ou encore Android, iOS, et peut aussi être traduit en Java ou .NET. Il est conçu pour optimiser la productivité des programmeurs en offrant des outils de haut niveau et une syntaxe simple à utiliser.
Il est également apprécié par certains pédagogues qui y trouvent un langage où la syntaxe, clairement séparée des mécanismes de bas niveau, permet une initiation aisée aux concepts de base de la programmation',now(),now()),
('Java','Java est un langage de programmation orienté objet créé par James Gosling et Patrick Naughton, employés de Sun Microsystems, avec le soutien de Bill Joy (cofondateur de Sun Microsystems en 1982), présenté officiellement le 23 mai 1995 au SunWorld.
La société Sun a été ensuite rachetée en 2009 par la société Oracle qui détient et maintient désormais Java.
La particularité et l`objectif central de Java est que les logiciels écrits dans ce langage doivent être très facilement portables sur plusieurs systèmes d’exploitation tels que Unix, Windows, Mac OS ou GNU/Linux, avec peu ou pas de modifications, mais qui ont l`inconvénient d`être plus lourd à l`exécution (en mémoire et en temps processeur) à cause de sa machine virtuelle. Pour cela, divers plateformes et frameworks associés visent à guider, sinon garantir, cette portabilité des applications développées en Java.',now(),now()),
('HTML/CSS','HTML5 (HyperText Markup Language 5) est la dernière révision majeure du HTML (format de données conçu pour représenter les pages web). Cette version a été finalisée le 28 octobre 2014. HTML5 spécifie deux syntaxes d`un modèle abstrait défini en termes de DOM : HTML5 et XHTML5. Le langage comprend également une couche application avec de nombreuses API, ainsi qu`un algorithme afin de pouvoir traiter les documents à la syntaxe non conforme. Le travail a été repris par le W3C en mars 2007 après avoir été lancé 
par le WHATWG. Les deux organisations travaillent en parallèle sur le même document afin de maintenir une version unique de la technologie. Le W3C clôt les ajouts de fonctionnalités le 22 mai 2011, annonçant une finalisation de la spécification en 20141, et encourage les développeurs Web à utiliser HTML 5 dès ce moment. Fin 2016, la version 5.1 est officiellement publiée et présente plusieurs nouveautés 
qui doivent faciliter le travail des développeurs d`applications Web',now(),now()),
('C#/C++','C++ est un langage de programmation compilé permettant la programmation sous de multiples paradigmes (comme la programmation procédurale, orientée objet ou générique). Ses bonnes performances, et sa compatibilité avec le C en font un des langages de programmation les plus utilisés dans les applications où la performance est critique.
Créé initialement par Bjarne Stroustrup dans les années 1980, le langage C++ est aujourd`hui normalisé par l`ISO. Sa première normalisation date de 1998 (ISO/CEI 14882:1998), ensuite amendée par l`erratum technique de 2003 (ISO/CEI 14882:2003). Une importante mise à jour a été ratifiée et publiée par l`ISO en septembre 2011 sous le nom de ISO/IEC 14882:2011, ou C++112. Depuis, des mises à jour sont publiées régulièrement : 
en 2014 (ISO/CEI 14882:2014, ou C++14) puis en 2017 (ISO/CEI 14882:2017, ou C++17).',now(),now());

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
