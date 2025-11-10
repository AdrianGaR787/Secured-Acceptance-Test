Feature: Integración con alarmas vecinales

  Como Policía (estación),
  quiero recibir alertas de alarmas vecinales,
  para validar rápidamente y despachar unidades oportunamente.

  Scenario: Recibir y validar alerta vecinal
    Given llega una alerta vecinal con ubicación y tipo
    When el operador valida la alerta
    Then se crea un nuevo incidente o se vincula a uno existente
    And se envía la información al despacho para asignación