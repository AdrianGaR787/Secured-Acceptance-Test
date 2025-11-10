Feature: Reasignación rápida
 
  Como Policía (estación),
  quiero reasignar rápidamente ante indisponibilidad,
  para mantener el SLA operativo.

  Scenario: Falla de unidad
    Given la unidad asignada quedó inactiva
    When el operador selecciona “Reasignar”
    Then se asigna la mejor alternativa
    And se actualiza la ETA y el SLA.

  Scenario: Rechazo de nueva unidad
    Given una nueva unidad fue propuesta
    When la unidad rechaza la asignación
    Then el incidente retorna a la cola
    And se registra el motivo.