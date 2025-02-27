USE clinica;

/**
Vista para consultar historial de consultas (Pacientes)
**/
CREATE VIEW vista_historial_consultas_p AS
SELECT 
	c.id_consulta,
    c.fecha_hora,
    c.diagnostico,
    c.tratamiento,
    c.observaciones,
    m.nombre,
    m.apellido_paterno,
    m.especialidad,
    p.id_paciente 
FROM consultas c
INNER JOIN citas ci ON c.id_cita = ci.id_cita
INNER JOIN medicos m ON ci.id_medico = m.id_medico
INNER JOIN pacientes p ON ci.id_paciente = p.id_paciente;

/**
Vista para consultar historial de consultas de pacientes (Médicos)
**/
CREATE VIEW vista_historial_consultas_m AS
SELECT 
    c.id_consulta,
    c.fecha_hora,
    c.diagnostico,
    c.tratamiento,
    c.observaciones,
    p.id_paciente,
    p.nombre as nombre_paciente,
    p.apellido_paterno as apellido_p_p,
    p.apellido_materno,
    m.id_medico,
    m.nombre as nombre_medico,
    m.apellido_paterno as apellido_p_m
FROM consultas c
INNER JOIN citas ci ON c.id_cita = ci.id_cita
INNER JOIN pacientes p ON ci.id_paciente = p.id_paciente
INNER JOIN medicos m ON ci.id_medico = m.id_medico
ORDER BY c.fecha_hora DESC;

