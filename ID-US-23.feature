Feature: Marcado de falso positivo

  Como Policía,
  quiero marcar un incidente como falso positivo con motivo,
  para depurar métricas y evitar reprocesos.

  Scenario: Marcar incidente como falso positivo
    Given un incidente mal reportado
    When el operador selecciona “Falso positivo” e ingresa el motivo
    Then el incidente queda en estado “Falso positivo”
    And se actualizan los KPIs y filtros correspondientes
    And se registra la acción en la bitácora.

  Scenario: Revertir marcado como falso positivo
    Given un incidente está en estado “Falso positivo”
    When el supervisor selecciona “Revertir” e ingresa justificación
    Then el incidente vuelve a su estado previo
    And se registra la reversión en la bitácora con usuario, fecha y motivo.