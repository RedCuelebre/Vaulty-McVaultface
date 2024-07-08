/*

Insercción de datos

*/

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (Nombre, Direccion, Telofono, Email) VALUES
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

-- Insertar datos en la tabla Categorias
INSERT INTO Categorias (Nombre) VALUES
('De alto riesgo'),
('De bajo riesgo'),
('De mediano riesgo'),
('A corto plazo'),
('A medio plazo'),
('A largo plazo'),
('Renta fija'),
('Renta variable'),
('Mixto'),
('Emergente');

-- Insertar datos en la tabla Activos
INSERT INTO Activos (Tipo, ValorActual, ClienteID, CategoriaID) VALUES
('Depósito Bancario', 15000.00, 21, 21),
('Depósito Bancario', 8000.00, 22, 22),
('Depósito Bancario', 16000.00, 23, 23),
('Acción', 20000.00, 24, 24),
('Acción', 12000.00, 25, 25),
('Acción', 25000.00, 26, 26),
('Bono', 5000.00, 27, 27),
('Bono', 3000.00, 28, 28),
('Bono', 7000.00, 29, 29),
('Acción', 18000.00, 30, 30),  
('Acción', 15000.00, 21, 21),
('Bono', 10000.00, 22, 22),
('Depósito Bancario', 12000.00, 23, 23);

-- Insertar datos en la tabla Acciones
INSERT INTO Acciones (ActivoID, EmpresaEmisora, NumeroAcciones, PrecioCompra, FechaAdquisicion) VALUES
(60, 'TechCorp', 100, 100.00, '2023-01-01'),
(61, 'EnergyCo', 200, 100.00, '2023-02-01'),
(62, 'HealthInc', 150, 80.00, '2023-03-01'),
(63, 'IndusLtd', 300, 83.33, '2023-04-01'),
(64, 'TechCorp', 100, 100.00, '2023-01-01'),
(65, 'EnergyCo', 200, 100.00, '2023-02-01'),
(66, 'HealthInc', 150, 80.00, '2023-03-01'),
(67, 'IndusLtd', 300, 83.33, '2023-04-01');

-- Insertar datos en la tabla Bonos
INSERT INTO Bonos (ActivoID, Emisor, ValorNominal, TasaInteres, FechaEmision, FechaVencimiento) VALUES
(63, 'RisitasBank', 4000.00, 3.0, '2024-01-01', '2034-01-01'),
(64, 'ChisteCorp', 6000.00, 3.8, '2024-02-01', '2034-02-01'),
(65, 'GiggleFinance', 4500.00, 2.7, '2024-03-01', '2034-03-01'),
(68, 'Laughables Inc.', 5500.00, 3.2, '2024-04-01', '2034-04-01');

-- Insertar datos en la tabla DepositosBancarios
INSERT INTO DepositosBancarios (ActivoID, Banco, NumeroCuenta, SaldoActual, TasaInteres, FechaApertura, FechaVencimiento) VALUES
(57, 'Cajastaur', '123456789', 15000.00, 1.5, '2023-01-01', '2026-01-01'),
(58, 'Banco Santander', '987654321', 8000.00, 2.0, '2023-02-01', '2027-02-01'),
(59, 'BBVA', '555555555', 16000.00, 1.8, '2023-03-01', '2025-03-01'),
(69, 'Bankia', '777777777', 12000.00, 1.9, '2023-04-01', '2026-04-01');

-- Insertar datos en la tabla TransaccionesAcciones
INSERT INTO TransaccionesAcciones (ActivoID, Tipo, Cantidad, Precio, Fecha) VALUES
(60, 'Compra', 50, 105.00, '2023-05-01'),
(61, 'Venta', 30, 110.00, '2023-06-01'),
(62, 'Compra', 100, 95.00, '2023-07-01'),
(66, 'Venta', 50, 100.00, '2023-08-01'),
(67, 'Compra', 75, 85.00, '2023-09-01'),
(60, 'Venta', 50, 90.00, '2023-10-01'),
(61, 'Compra', 200, 82.00, '2023-11-01'),
(62, 'Venta', 100, 88.00, '2023-12-01');


-- Insertar datos en la tabla Valoraciones
INSERT INTO Valoraciones (ActivoID, Valor, Fecha) VALUES
(57, 10500.00, '2023-05-01'),
(57, 11000.00, '2023-06-01'),
(58, 5100.00, '2023-07-01'),
(58, 15100.00, '2023-08-01'),
(58, 19500.00, '2023-09-01'),
(59, 3100.00, '2023-10-01'),
(59, 8100.00, '2023-11-01'),
(60, 12300.00, '2023-12-01'),
(60, 7100.00, '2024-01-01'),
(60, 16100.00, '2024-02-01'),
(61, 10500.00, '2023-05-01'),
(61, 11000.00, '2023-06-01'),
(62, 5100.00, '2023-07-01'),
(62, 15100.00, '2023-08-01'),
(62, 19500.00, '2023-09-01'),
(63, 3100.00, '2023-10-01'),
(63, 8100.00, '2023-11-01'),
(64, 12300.00, '2023-12-01'),
(64, 7100.00, '2024-01-01'),
(65, 16100.00, '2024-02-01'),
(66, 10500.00, '2023-05-01'),
(66, 11000.00, '2023-06-01'),
(67, 5100.00, '2023-07-01'),
(67, 15100.00, '2023-08-01'),
(68, 19500.00, '2023-09-01'),
(68, 3100.00, '2023-10-01'),
(69, 8100.00, '2023-11-01'),
(69, 12300.00, '2023-12-01'),
(69, 7100.00, '2024-01-01');