Feature: Asignación por sector dinámico

  Como Policía (estación),
  quiero usar reglas por sector y turno para repartir la carga de incidentes,
  para mejorar cobertura y tiempos de respuesta.

  Scenario: Rebalanceo automático por sector
    Given un sector queda sin unidades disponibles
    When llega un nuevo incidente en ese sector
    Then se asigna la unidad más cercana de un sector vecino
    And se registra el rebalanceo en la auditoría