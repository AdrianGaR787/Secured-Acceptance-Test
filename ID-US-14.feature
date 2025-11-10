Feature: Clasificar tipo de incidente catálogo

  Como Serenazgo/Policía,
  quiero seleccionar el tipo desde un catálogo estándar,
  para unificar registros.

  Scenario: Búsqueda por texto
    Given el usuario escribe "alteración del orden"
    When aparece la sugerencia en el catálogo
    Then selecciona la opción
    And el campo queda válido.

  Scenario: Opción “Otro”
    Given el usuario elige "Otro"
    When escribe el detalle
    Then el sistema marca el registro
    And envía notificación al administrador.