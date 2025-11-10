Feature: Auditoría de accesos y acciones

  Como Policía (estación),
  quiero consultar accesos y acciones por usuario o rol,
  para rastrear trazabilidad y detectar posibles anomalías.

  Scenario: Consulta de accesos y acciones por usuario
    Given se ingresan parámetros de búsqueda (usuario, fecha, acción)
    When se ejecuta la consulta de auditoría
    Then se listan todos los accesos y acciones correspondientes
    And se puede exportar el reporte a PDF o CSV