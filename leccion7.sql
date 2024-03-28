CREATE TABLE Edificios (
    Nombre_Del_Edificio TEXT PRIMARY KEY,
    Capacidad INTEGER
);


INSERT INTO Edificios (Nombre_Del_Edificio, Capacidad) VALUES ('1e', 24);
INSERT INTO Edificios (Nombre_Del_Edificio, Capacidad) VALUES ('1s', 32);
INSERT INTO Edificios (Nombre_Del_Edificio, Capacidad) VALUES ('2e', 16);
INSERT INTO Edificios (Nombre_Del_Edificio, Capacidad) VALUES ('2w', 20);

CREATE TABLE Empleados (
    Role TEXT,
    Nombre TEXT,
    Edificio TEXT,
    Años_empleado INTEGER
);


INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Becky A.', '1e', 4);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Dan B.', '1e', 2);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Sharon F.', '1e', 6);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Dan M.', '1e', 4);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Ingeniero', 'Malcom S.', '1e', 1);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'tylar s.', '2w', 2);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Sherman D.', '2w', 8);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Jacob J.', '2w', 6);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Lilia A.', '2w', 7);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Artista', 'Brandon J.', '2w', 7);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Scott K.', '1e', 9);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Shirlee M.', '1e', 3);
INSERT INTO Empleados (Role, Nombre, Edificio, Años_empleado) VALUES ('Gerente', 'Daria O.', '2w', 6);

-- Encuentre la lista de todos los edificios que tienen empleados.

select DISTINCT E.nombre_del_edificio
from edificios as E
LEFT JOIN empleados as Emp
ON E.nombre_del_edificio = Emp.edificio

-- Encuentra la lista de todos los edificios y su capacidad.

SELECT E.Nombre_Del_Edificio, E.Capacidad
FROM Edificios AS E
INNER JOIN Empleados AS Emp
ON E.Nombre_Del_Edificio = Emp.Edificio;


-- Enumere todos los edificios y las distintas funciones de los empleados en cada edificio (incluidos los edificios vacíos)

select E.nombre_del_edificio, COALESCE(Emp.role, 'SIN EMPLEADOS') as Funcion_Empleado
from edificios as E
LEFT JOIN empleados as Emp ON  E.nombre_del_edificio = Emp.Edificio