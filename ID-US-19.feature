Feature: Acuse de recibo de asignación

  Como Policía,
  quiero confirmar recepción del despacho,
  para asegurar que el caso fue atendido.

  Scenario: Acuse oportuno
    Given una asignación fue enviada a la unidad
    When el agente pulsa “Recibido”
    Then la central visualiza el acuse
    And se registra la hora.

  Scenario: Falta de acuse
    Given no se registró acuse tras el umbral
    When el sistema verifica el estado
    Then se envía un recordatorio
    And se habilita la opción de reasignar.