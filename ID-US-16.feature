Feature: Asignación automática o manual

  Como Policía (estación),
  quiero asignar unidades automáticamente o elegir manualmente,
  para despachar lo más rápido posible.

  Scenario: Autoasignación
    Given hay varias unidades disponibles
    When el operador pulsa "Asignación automática"
    Then el sistema asigna la más cercana
    And notifica a la unidad.

  Scenario: Manual con motivo
    Given existe una sugerencia de unidad
    When el operador selecciona otra unidad
    Then se solicita motivo
    And se reasigna con la justificación.