Feature: Cadena de custodia y exportes firmados

  Como Policía (estación),
  quiero exportar evidencias con cadena de custodia,
  para garantizar sustento legal y trazabilidad.

  Scenario: Exportación completa de evidencias
    Given un expediente con evidencias asociadas
    When se genera el paquete de custodia
    Then se descarga un ZIP firmado digitalmente
    And queda registrado el evento de exportación en la auditoría

  Scenario: Verificación de integridad del ZIP
    Given un paquete ZIP firmado
    When se verifica la integridad del contenido
    Then todos los hashes coinciden
    And el reporte indica que el paquete es “válido”