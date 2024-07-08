-- Data insertion script

-- Insert data into Clientes table
INSERT INTO Clientes (Nombre, Direccion, Telefono, Email) VALUES
('Juan Pérez', 'Calle Falsa 123', '555-1234', 'juan.perez@example.com'),
('María García', 'Avenida Siempre Viva 742', '555-5678', 'maria.garcia@example.com'),
('Carlos López', 'Plaza Mayor 9', '555-8765', 'carlos.lopez@example.com'),
('Laura Fernández', 'Calle del Sol 45', '555-4321', 'laura.fernandez@example.com'),
('Pedro Sánchez', 'Calle Luna 77', '555-9876', 'pedro.sanchez@example.com'),
('Ana González', 'Paseo de la Reforma 200', '555-6789', 'ana.gonzalez@example.com'),
('Jorge Martínez', 'Calle Libertad 21', '555-5432', 'jorge.martinez@example.com'),
('Lucía Rodríguez', 'Avenida Independencia 55', '555-7654', 'lucia.rodriguez@example.com'),
('Miguel Torres', 'Calle Victoria 99', '555-1111', 'miguel.torres@example.com'),
('Elena Moreno', 'Boulevard del Mar 3', '555-2222', 'elena.moreno@example.com');

-- Insert data into Categorias table
INSERT INTO Categorias (Nombre) VALUES
('High risk'),
('Low risk'),
('Medium risk'),
('Short term'),
('Medium term'),
('Long term'),
('Fixed income'),
('Variable income'),
('Mixed'),
('Emerging');

-- Insert data into Activos table
INSERT INTO Activos (Tipo, ValorActual, ClienteID, CategoriaID) VALUES
('Bank Deposit', 15000.00, 1, 1),
('Bank Deposit', 8000.00, 2, 2),
('Bank Deposit', 16000.00, 3, 3),
('Stock', 20000.00, 4, 4),
('Stock', 12000.00, 5, 5),
('Stock', 25000.00, 6, 6),
('Bond', 5000.00, 7, 7),
('Bond', 3000.00, 8, 8),
('Bond', 7000.00, 9, 9),
('Stock', 18000.00, 10, 10),
('Stock', 15000.00, 1, 1),
('Bond', 10000.00, 2, 2),
('Bank Deposit', 12000.00, 3, 3);

-- Insert data into Acciones table
INSERT INTO Acciones (ActivoID, EmpresaEmisora, NumeroAcciones, PrecioCompra, FechaAdquisicion) VALUES
(1, 'TechCorp', 100, 100.00, '2023-01-01'),
(2, 'EnergyCo', 200, 100.00, '2023-02-01'),
(3, 'GreenPower', 150, 100.00, '2023-03-01');

-- Insert data into Bonos table
INSERT INTO Bonos (ActivoID, Emisor, ValorNominal, TasaInteres, FechaEmision, FechaVencimiento) VALUES
(4, 'GovtBond', 10000.00, 5.0, '2024-01-01', '2034-01-01'),
(5, 'CorpBond', 5000.00, 3.5, '2024-02-01', '2034-02-01'),
(6, 'MunBond', 7500.00, 4.0, '2024-03-01', '2034-03-01');

-- Insert data into DepositosBancarios table
INSERT INTO DepositosBancarios (ActivoID, Banco, NumeroCuenta, SaldoActual, TasaInteres, FechaApertura, FechaVencimiento) VALUES
(1, 'Cajastaur', '123456789', 15000.00, 1.5, '2023-01-01', '2026-01-01'),
(2, 'Banco Santander', '987654321', 8000.00, 2.0, '2023-02-01', '2027-02-01'),
(3, 'BBVA', '555555555', 16000.00, 1.8, '2023-03-01', '2025-03-01'),
(7, 'Bankia', '777777777', 12000.00, 1.9, '2023-04-01', '2026-04-01');

-- Insert data into TransaccionesAcciones table
INSERT INTO TransaccionesAcciones (ActivoID, Tipo, Cantidad, Precio, Fecha) VALUES
(1, 'Buy', 50, 105.00, '2023-05-01'),
(2, 'Sell', 30, 110.00, '2023-06-01'),
(3, 'Buy', 100, 95.00, '2023-07-01'),
(4, 'Sell', 50, 100.00, '2023-08-01'),
(5, 'Buy', 75, 85.00, '2023-09-01'),
(6, 'Sell', 50, 90.00, '2023-10-01'),
(7, 'Buy', 200, 82.00, '2023-11-01'),
(8, 'Sell', 100, 88.00, '2023-12-01');

-- Insert data into Valoraciones table
-- Data insertion script for Valoraciones table

INSERT INTO Valoraciones (ActivoID, Valor, Fecha) VALUES
(1, 10500.00, '2023-05-01'),
(1, 11000.00, '2023-06-01'),
(2, 5100.00, '2023-07-01'),
(2, 15100.00, '2023-08-01'),
(2, 19500.00, '2023-09-01'),
(3, 3100.00, '2023-10-01'),
(3, 8100.00, '2023-11-01'),
(4, 12300.00, '2023-12-01'),
(4, 7100.00, '2024-01-01'),
(4, 16100.00, '2024-02-01'),
(5, 10500.00, '2023-05-01'),
(5, 11000.00, '2023-06-01'),
(6, 5100.00, '2023-07-01'),
(6, 15100.00, '2023-08-01'),
(6, 19500.00, '2023-09-01'),
(7, 3100.00, '2023-10-01'),
(7, 8100.00, '2023-11-01'),
(8, 12300.00, '2023-12-01'),
(8, 7100.00, '2024-01-01'),
(9, 16100.00, '2024-02-01'),
(10, 10500.00, '2023-05-01'),
(10, 11000.00, '2023-06-01'),
(11, 5100.00, '2023-07-01'),
(11, 15100.00, '2023-08-01'),
(12, 19500.00, '2023-09-01'),
(13, 3100.00, '2023-10-01');
