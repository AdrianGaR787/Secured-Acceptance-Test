Feature: SLA y cronómetro por incidente

  Como Policía (estación),
  quiero ver SLA y cronómetros por incidente,
  para controlar los tiempos de respuesta y cumplir los objetivos operativos.

  Scenario: Alerta previa a vencimiento
    Given un incidente tiene un SLA de 2 minutos
    When restan 30 segundos para el vencimiento
    Then el tablero resalta el caso
    And emite una alerta sonora.

  Scenario: SLA incumplido
    Given el cronómetro superó el tiempo del SLA
    When el operador justifica la demora
    Then el sistema registra el incumplimiento
    And guarda el motivo de la justificación.