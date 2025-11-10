Feature: Historial por unidad trazabilidad

  Como Policía (estación),
  quiero consultar la trazabilidad de cada patrulla,
  para analizar desempeño y uso operativo.

  Scenario: Consulta de historial por rango de fechas
    Given se selecciona una unidad y un rango de fechas
    When se consulta el historial de la unidad
    Then se listan todas las asignaciones y recorridos dentro del rango
    And se puede exportar la información a CSV