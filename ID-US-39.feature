Feature: Tamaño de fuente ajustable

  Como Serenazgo o Policía,
  quiero ajustar el tamaño de letra de la UI,
  para mejorar la legibilidad durante la operación.

  Scenario: Aumentar tamaño de fuente
    Given el tamaño de fuente está en valor por defecto
    When el usuario selecciona la opción “Grande”
    Then todos los textos de la UI aumentan
    And la preferencia se mantiene en los próximos ingresos