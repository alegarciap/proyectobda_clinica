use clinica;

-- Insertar usuarios
INSERT INTO usuarios (nombre, contrasenia) VALUES 
('juan_perez', md5('paciente_juan')),
('ana_lopez', md5('paciente_ana')),
('luis_martinez', md5('paciente_luis')),
('carla_sanchez', md5('paciente_carla')),
('pedrito_ram', md5('paciente_pedrito')),
('elena_gomez', md5('paciente_elena')),
('andrea_lopez', md5('paciente_andrea')),
('carlos_gomez', md5('paciente_carlos')),
('fer_ramirez', md5('paciente_fer')),
('dr_carlos', md5('carlitos456')),
('dra_ana', md5('anita123')),
('dr_miguel', md5('miguelito548')),
('dra_sofia', md5('sofia8965')),
('dr_javier', md5('javier456')),
('dr_daniel', md5('daniel002')),
('dra_fer', md5('doctorafer')),
('dr_roberto', md5('robertito789')),
('dra_laura', md5('laurita025')),
('dr_alex', md5('alejandrito')),
('dra_cecilia', md5('doctoracecy')),
('dr_eduardo', md5('eduardito896')),
('dra_beatriz', md5('beatriz001'));

-- Insertar pacientes
INSERT INTO pacientes (id_paciente, nombre, apellido_paterno, apellido_materno, direccion, fecha_nacimiento, telefono, correo)
VALUES
(1, 'Juan', 'Pérez', 'Gómez', 'Calle 200 #123, Col. Centro, Ciudad Obregón, Sonora', '1990-05-10', '6449170924', 'juan.perez@email.com'),
(2, 'Ana', 'López', NULL, 'Av. Náinari #456, Col. Campestre, Ciudad Obregón, Sonora', '1985-08-22', '6449179522', 'ana.lopez@email.com'),
(3, 'Luis', 'Martínez', 'Díaz', 'Blvd. Ramírez #789, Col. Cortinas, Ciudad Obregón, Sonora', '1995-03-15', '6442360352', 'luis.martinez@email.com'),
(4, 'Carla', 'Sánchez', 'Vega', 'Calle Morelos #321, Col. Constitución, Ciudad Obregón, Sonora', '1998-07-19', '6445419689', 'carla.sanchez@email.com'),
(5, 'Pedro', 'Ramírez', 'Ortega', 'Av. Miguel Alemán #654, Col. Valle Verde, Ciudad Obregón, Sonora', '1992-12-01', '6441101183', 'pedro.ramirez@email.com'),
(6, 'Elena', 'Gómez', 'Mendoza', 'Blvd. Villa Bonita #987, Col. Villa Bonita, Ciudad Obregón, Sonora', '2000-09-10', '6441354186', 'elena.gomez@email.com'),
(7, 'Andrea', 'López', 'Martínez', 'Calle Sinaloa #741, Col. Primavera, Ciudad Obregón, Sonora', '1990-05-15', '6445684744', 'andrea.lopez@mail.com'),
(8, 'Carlos', 'Gómez', 'Hernández', 'Av. 5 de Febrero #258, Col. Municipio Libre, Ciudad Obregón, Sonora', '1985-09-22', '6449538432', 'carlos.gomez@mail.com'),
(9, 'Fernanda', 'Ramírez', 'Torres', 'Calle Guerrero #369, Col. Chapultepec, Ciudad Obregón, Sonora', '1993-12-10', '6449654363', 'fernanda.ramirez@mail.com');

-- Insertar médicos
INSERT INTO medicos (id_medico, nombre, apellido_paterno, apellido_materno, cedula, especialidad, estado)
VALUES
(10, 'Carlos', 'Ramírez', 'Hernández', '1234567890', 'Cardiología', 'activo'),
(11, 'Ana', 'Fernández', 'Torres', '9876543210', 'Dermatología', 'activo'),
(12, 'Miguel', 'Torres', 'García', '2345678901', 'Neurología', 'activo'),
(13, 'Sofía', 'Hernández', 'Cruz', '3456789012', 'Pediatría', 'activo'),
(14, 'Javier', 'González', 'Pérez', '4567890123', 'Ortopedia', 'inactivo'),
(15, 'Daniel', 'Ruiz', 'Castillo', '5678901234', 'Ginecología', 'activo'),
(16, 'Fernanda', 'Ortiz', 'Luna', '6789012345', 'Cardiología', 'inactivo'),
(17, 'Roberto', 'Mendoza', 'Silva', '7890123456', 'Psiquiatría', 'activo'),
(18, 'Laura', 'Salinas', 'Moreno', '8901234567', 'Endocrinología', 'activo'),
(19, 'Alejandro', 'Vargas', 'Duarte', '9012345678', 'Oftalmología', 'inactivo'),
(20, 'Cecilia', 'Ferrer', 'Navarro', '0123456789', 'Endocrinología', 'activo'),
(21, 'Eduardo', 'Santos', 'Mejía', '1123456789', 'Traumatología', 'activo'),
(22, 'Beatriz', 'Cordero', 'Jiménez', '2123456789', 'Ginecología', 'activo');

-- Insertar horarios de atención
INSERT INTO horarios_atencion (dia, hora_entrada, hora_salida, id_medico) VALUES
-- Horarios diurnos
('lunes', '08:00:00', '14:00:00', 10),
('martes', '10:00:00', '13:00:00', 10),
('miercoles', '08:00:00', '14:00:00', 11),
('jueves', '11:00:00', '19:00:00', 11),
('viernes', '08:00:00', '14:00:00', 12),
('lunes', '08:00:00', '14:00:00', 12),
('martes', '08:00:00', '14:00:00', 13),
('sabado', '08:00:00', '14:00:00', 13),
('jueves', '10:00:00', '20:00:00', 14),
('viernes', '08:00:00', '14:00:00', 15),
('lunes', '08:00:00', '14:00:00', 15),
('martes', '08:00:00', '20:00:00', 16),
('miercoles', '08:00:00', '14:00:00', 16),
('jueves', '08:00:00', '14:00:00', 17),
('viernes', '08:00:00', '14:00:00', 17),
('lunes', '10:00:00', '20:00:00', 18),
('martes', '08:00:00', '14:00:00', 14),
('miercoles', '08:00:00', '14:00:00', 19),
('jueves', '10:00:00', '16:00:00', 19),
('viernes', '10:00:00', '19:00:00', 20),
('lunes', '08:00:00', '14:00:00', 20),
('martes', '08:00:00', '14:00:00', 21),
('miercoles', '10:00:00', '20:00:00', 21),
('jueves', '08:00:00', '14:00:00', 22),
('viernes', '08:00:00', '14:00:00', 22);

-- Citas finalizadas
INSERT INTO citas (fecha_hora, estado, folio, id_medico, id_paciente) VALUES
('2025-02-10 09:30:00', 'finalizada', null, 10, 1), 
('2025-02-12 11:30:00', 'finalizada', null, 11, 2), 
('2025-02-14 11:00:00', 'finalizada', null, 12, 3), 
('2025-02-15 10:00:00', 'finalizada', null, 13, 4), 
('2025-02-18 08:30:00', 'finalizada', '54896325', 14, 5), 
('2025-02-17 19:00:00', 'finalizada', null, 15, 6), 
('2025-02-21 10:00:00', 'finalizada', null, 17, 7), 
('2025-02-22 13:00:00', 'finalizada', null, 13, 8), 
('2025-02-24 15:00:00', 'finalizada', '20587496', 18, 9), 
('2025-02-26 09:00:00', 'finalizada', '32658741', 19, 8); 

-- Consultas asociadas a las citas finalizadas
INSERT INTO consultas (fecha_hora, diagnostico, tratamiento, observaciones, id_cita) VALUES
('2025-02-10 09:33:00', 'Hipertensión controlada', 'Ajuste de medicamento', 'Paciente estable', 1),
('2025-02-12 11:35:00', 'Alergia leve', 'Antihistamínico por 7 días', 'Evitar alérgenos', 2),
('2025-02-14 11:10:00', 'Migraña recurrente', 'Topiramato 25mg', 'Seguimiento en 1 mes', 3),
('2025-02-15 10:00:00', 'Infección respiratoria', 'Antibiótico por 10 días', 'Reposo y líquidos', 4),
('2025-02-18 08:30:00', 'Esguince leve', 'Fisioterapia y reposo', 'Usar soporte de tobillo', 5),
('2025-02-17 19:05:00', 'Síndrome premenstrual', 'Analgésico y dieta balanceada', 'Revisión en 3 meses', 6),
('2025-02-21 10:02:00', 'Ansiedad moderada', 'Terapia cognitivo-conductual', 'Seguimiento en 2 semanas', 7),
('2025-02-22 13:05:00', 'Diabetes tipo 2', 'Cambio en dieta y ejercicio', 'Monitoreo de glucosa', 8),
('2025-02-24 15:10:00', 'Conjuntivitis viral', 'Gotas oftálmicas', 'Evitar contacto con ojos', 9),
('2025-02-26 09:00:00', 'Dolor lumbar', 'Ejercicios de estiramiento', 'Evitar esfuerzos pesados', 10);

-- Citas programadas
INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-10 09:30:00', 'programada', 10, 1),
('2025-03-15 11:30:00', 'programada', 11, 2), 
('2025-03-20 11:00:00', 'programada', 12, 3), 
('2025-03-20 10:00:00', 'programada', 13, 4),
('2025-03-22 19:00:00', 'programada', 15, 6), 
('2025-03-23 10:00:00', 'programada', 17, 7), 
('2025-03-23 13:00:00', 'programada', 13, 8), 
('2025-03-24 15:00:00', 'programada', 18, 9);

INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-10 09:30:00', 'programada', 10, 8),
('2025-03-17 11:30:00', 'programada', 10, 6), 
('2025-03-18 11:00:00', 'programada', 10, 1);

INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-12 09:30:00', 'programada', 11, 5),
('2025-03-19 11:30:00', 'programada', 11, 7), 
('2025-03-14 11:00:00', 'programada', 11, 3);

INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-17 08:00:00', 'programada', 12, 5),
('2025-03-18 11:30:00', 'programada', 13, 6), 
('2025-03-22 11:00:00', 'programada', 13, 7);

INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-10 09:30:00', 'programada', 15, 7),
('2025-03-17 11:30:00', 'programada', 15, 2), 
('2025-03-20 11:00:00', 'programada', 17, 6);

INSERT INTO citas (fecha_hora, estado, id_medico, id_paciente) VALUES
('2025-03-10 16:30:00', 'programada', 18, 8),
('2025-03-17 11:30:00', 'programada', 20, 6), 
('2025-03-21 17:00:00', 'programada', 20, 1),
('2025-03-18 10:30:00', 'programada', 21, 8),
('2025-03-19 11:30:00', 'programada', 21, 6), 
('2025-03-14 13:00:00', 'programada', 22, 1);

