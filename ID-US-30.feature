Feature: Gestión de unidades y patrullas

  Como Policía (estación),
  quiero registrar unidades y sus estados,
  para planificar la cobertura y disponibilidad operativa.

  Scenario: Alta de nueva unidad
    Given se ingresan los datos de vehículo y dotación
    When se crea la unidad
    Then la unidad queda en estado “Disponible”
    And lista para asignación a turnos o patrullas

  Scenario: Unidad en mantenimiento programado
    Given una unidad con mantenimiento programado
    When llega la fecha de mantenimiento
    Then el estado cambia a “Mantenimiento”
    And deja de ser elegible para asignación