CREATE DATABASE dbAgenda20231;

GO
USE dbAgenda20231;
GO


create table tuser (
	idUser char(36) not null,
	firstName varchar(70) not null,
	surName varchar(70) not null,
	email varchar(100) not null,
	password varchar(700) not null,
	registerDate datetime not null,
	updateDate datetime not null,
	primary key(idUser)
);


create table tcity (
	idCity char(36) not null,
	name varchar(100) not null,
	registerDate datetime not null,
	updateDate datetime not null,
	primary key(idCity)
);


create table tperson (
	idPerson char(36) not null,
	idUser char(36) not null,
	idCity char(36) not null,
	firstName varchar(70) not null,
	surName varchar(40) not null,
	phone varchar(20) not null,
	email varchar(100) null,
	registerDate datetime not null,
	updateDate datetime not null,

	foreign key (idUser) references tuser(idUser),
	foreign key(idCity) references tcity(idCity)

);


INSERT INTO tcity (idCity, name, registerDate, updateDate)
	VALUES ('34704fa8-e3f8-497f-8f74-42fa6557ca91', 'Abancay', GETDATE(), GETDATE()),
		   ('c6ea98e7-5577-432a-9969-4e757e55e706', 'Cusco', GETDATE(), GETDATE()),
		   ('c22af75a-2aea-47f2-af8b-f5115ab62caf','Arequipa', GETDATE(), GETDATE());

SELECT * FROM tcity --MOSTRAR
DELETE FROM tcity; --BORRAR


SELECT * FROM tuser
SELECT * FROM tperson