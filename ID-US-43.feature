Feature: Consentimientos y políticas

  Como Policía (estación),
  quiero gestionar consentimientos y políticas del sistema,
  para cumplir normativa y asegurar trazabilidad de aceptación.

  Scenario: Nueva versión de política
    Given existe una nueva versión de política del sistema
    When el usuario inicia sesión
    Then debe aceptar la política para poder continuar
    And se registra la aceptación con usuario y versión en el historial