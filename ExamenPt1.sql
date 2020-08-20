CREATE TABLE Pluma (IdPluma int primary key, Nombre varchar(50))
CREATE TABLE Pluma_Estilo (IdPluma int , IdTipo int, color varchar(50))
CREATE TABLE Estilo (IdTipo int primary key, Categoria varchar(50))


INSERT INTO Pluma
VALUES (1, 'BIC'), (2, 'Pentel')

INSERT INTO Pluma_Estilo
VALUES (1,1, 'Azul'), (2,2,'Negro')

INSERT INTO Estilo
VALUES (1, 'Gel'), (2, 'Fuente')

ALTER TABLE Pluma_Estilo
WITH CHECK ADD CONSTRAINT IdPluma_FK
FOREIGN KEY (IdPluma)
REFERENCES Pluma (IdPluma)

ALTER TABLE Pluma_Estilo
WITH CHECK ADD CONSTRAINT IdTipo_FK
FOREIGN KEY (IdTipo)
REFERENCES Estilo (IdTipo)

select *
from Pluma_Estilo

select color 
from Pluma_Estilo

UNION

select nombre
from pluma


	CREATE PROCEDURE PlumaNueva(@IdPluma int , @Nombre varchar(50)) AS
	BEGIN
		INSERT INTO Pluma(IdPluma,Nombre) VALUES(@IdPluma, @Nombre)
	END;

    EXECUTE PlumaNueva 3, Amazon

select * from Pluma