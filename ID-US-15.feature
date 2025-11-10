Feature: Etiquetado sugerido IA

  Como Policía,
  quiero recibir etiquetas sugeridas por IA,
  para acelerar el registro.

  Scenario: Aceptar sugerencia
    Given la IA sugiere "Alteración del orden (82%)"
    When el usuario acepta la sugerencia
    Then la etiqueta queda aplicada
    And se registra la aceptación.

  Scenario: Editar sugerencia
    Given existe una sugerencia activa
    When el usuario la reemplaza por otra
    Then se guarda la elección
    And se registra el cambio.