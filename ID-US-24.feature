Feature: Control de turno check-in/check-out

  Como Serenazgo o Policía,
  quiero marcar inicio y fin de turno con ubicación,
  para gestionar mi disponibilidad.

  Scenario: Check-in exitoso
    Given el agente está “Fuera de servicio”
    When pulsa “Check-in”
    Then el estado del agente cambia a “Disponible”
    And se registra la acción con sello de tiempo y ubicación

  Scenario: Check-out bloqueado por caso activo
    Given el agente tiene un caso “En curso”
    When intenta hacer “Check-out”
    Then el sistema bloquea la acción
    And solicita al agente cerrar o reasignar el caso antes de continuar