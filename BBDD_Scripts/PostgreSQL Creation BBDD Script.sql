/*
	Creación de las tablas principales y configuración de las PK y FK
*/

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Telofono VARCHAR(20),
    Email VARCHAR(100)
);

-- Crear la tabla Categorias
CREATE TABLE Categorias (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla Activos
CREATE TABLE Activos (
    ID SERIAL PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
    ValorActual NUMERIC(15, 2),
    ClienteID INT NOT NULL,
    CategoriaID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(ID)
);

-- Crear la tabla Acciones (hereda de Activos)
CREATE TABLE Acciones (
    ActivoID INT PRIMARY KEY,
    EmpresaEmisora VARCHAR(100) NOT NULL,
    NumeroAcciones INT NOT NULL,
    PrecioCompra NUMERIC(15, 2) NOT NULL,
    FechaAdquisicion DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Crear la tabla Bonos (hereda de Activos)
CREATE TABLE Bonos (
    ActivoID INT PRIMARY KEY,
    Emisor VARCHAR(100) NOT NULL,
    ValorNominal NUMERIC(15, 2) NOT NULL,
    TasaInteres NUMERIC(5, 2) NOT NULL,
    FechaEmision DATE NOT NULL,
    FechaVencimiento DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Crear la tabla DepositosBancarios (hereda de Activos)
CREATE TABLE DepositosBancarios (
    ActivoID INT PRIMARY KEY,
    Banco VARCHAR(100) NOT NULL,
    NumeroCuenta VARCHAR(50) NOT NULL,
    SaldoActual NUMERIC(15, 2) NOT NULL,
    TasaInteres NUMERIC(5, 2) NOT NULL,
    FechaApertura DATE NOT NULL,
    FechaVencimiento DATE,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Crear la tabla TransaccionesAcciones
CREATE TABLE TransaccionesAcciones (
    ID SERIAL PRIMARY KEY,
    ActivoID INT NOT NULL,
    Tipo VARCHAR(10) CHECK (Tipo IN ('Compra', 'Venta')),
    Cantidad INT NOT NULL,
    Precio NUMERIC(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Acciones(ActivoID)
);

-- Crear la tabla Valoraciones
CREATE TABLE Valoraciones (
    ID SERIAL PRIMARY KEY,
    ActivoID INT NOT NULL,
    Valor NUMERIC(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);