Feature: Push-to-Talk PTT

  Como Policía,
  quiero hablar por PTT durante la atención,
  para coordinar manos libres.

  Scenario: Transmisión exitosa
    Given hay cobertura suficiente
    When el usuario mantiene presionado PTT y habla
    Then la transmisión llega a los suscriptores
    And se registra la marca de tiempo.

  Scenario: Red débil
    Given la calidad de red es baja
    When se interrumpe la transmisión
    Then el sistema reintenta
    And muestra "reconectando…".
