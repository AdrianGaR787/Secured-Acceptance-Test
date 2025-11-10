Feature: Geocercas y alerta de jurisdicción

  Como Serenazgo/Policía,
  quiero alertas al asignar o navegar fuera de jurisdicción,
  para derivar correctamente.

  Scenario: Derivación sugerida
    Given el incidente está fuera del distrito del usuario
    When intenta asignarlo a su unidad
    Then el sistema sugiere derivar
    And registra la elección.

  Scenario: Cruce en navegación
    Given la unidad está navegando al incidente
    When la ruta cruza el límite de jurisdicción
    Then se muestra alerta
    And se propone alternativa válida.
