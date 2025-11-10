Feature: Búsqueda avanzada de incidentes

  Como Policía,
  quiero buscar incidentes por código, placa, fechas y estado,
  para ubicar casos rápidamente.

  Scenario: Búsqueda de incidentes por placa
    Given la placa "ABC-123"
    When el operador ejecuta la búsqueda
    Then se listan los incidentes asociados
    And puede abrir la ficha del incidente desde la lista

  Scenario: Búsqueda sin resultados
    Given filtros muy restrictivos
    When el operador ejecuta la búsqueda
    Then la vista muestra “Sin resultados”
    And se sugiere ajustar los filtros para mejorar la búsqueda