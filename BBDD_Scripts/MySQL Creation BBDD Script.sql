-- Table creation script

-- Create table Clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    Email VARCHAR(100)
);

-- Create table Categorias
CREATE TABLE Categorias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL
);

-- Create table Activos
CREATE TABLE Activos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Tipo VARCHAR(50) NOT NULL,
    ValorActual DECIMAL(15, 2),
    ClienteID INT NOT NULL,
    CategoriaID INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(ID)
);

-- Create table Acciones
CREATE TABLE Acciones (
    ActivoID INT PRIMARY KEY,
    EmpresaEmisora VARCHAR(100) NOT NULL,
    NumeroAcciones INT NOT NULL,
    PrecioCompra DECIMAL(15, 2) NOT NULL,
    FechaAdquisicion DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Create table Bonos
CREATE TABLE Bonos (
    ActivoID INT PRIMARY KEY,
    Emisor VARCHAR(100) NOT NULL,
    ValorNominal DECIMAL(15, 2) NOT NULL,
    TasaInteres DECIMAL(5, 2) NOT NULL,
    FechaEmision DATE NOT NULL,
    FechaVencimiento DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Create table DepositosBancarios
CREATE TABLE DepositosBancarios (
    ActivoID INT PRIMARY KEY,
    Banco VARCHAR(100) NOT NULL,
    NumeroCuenta VARCHAR(50) NOT NULL,
    SaldoActual DECIMAL(15, 2) NOT NULL,
    TasaInteres DECIMAL(5, 2) NOT NULL,
    FechaApertura DATE NOT NULL,
    FechaVencimiento DATE,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Create table TransaccionesAcciones
CREATE TABLE TransaccionesAcciones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ActivoID INT NOT NULL,
    Tipo VARCHAR(10),
    Cantidad INT NOT NULL,
    Precio DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);

-- Create table Valoraciones
CREATE TABLE Valoraciones (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ActivoID INT NOT NULL,
    Valor DECIMAL(15, 2) NOT NULL,
    Fecha DATE NOT NULL,
    FOREIGN KEY (ActivoID) REFERENCES Activos(ID)
);
